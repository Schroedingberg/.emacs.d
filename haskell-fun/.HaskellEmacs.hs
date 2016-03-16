-- hash of haskell-emacs: 27ad2401cd6cbe88a24a6437d90d8e43a3194bfd
-- hash of all functions: be6fa249334f5850b950df3ba63ffa9f5d01b035
{-# LANGUAGE FlexibleInstances    #-}
{-# LANGUAGE OverlappingInstances #-}
{-# LANGUAGE OverloadedStrings    #-}

module Main where
import qualified Matrix
import qualified Base
import qualified Text

import           Control.Applicative              (optional, (<$>), (<*>))
import           Control.Arrow                    hiding (app)
import           Control.Concurrent
import           Control.Monad                    (forever)
import           Control.Monad.Trans.Reader
import           Control.Parallel.Strategies
import           Data.AttoLisp
import qualified Data.Attoparsec.ByteString.Char8 as AC
import qualified Data.Attoparsec.ByteString.Lazy  as A
import qualified Data.ByteString.Lazy.Char8       as B hiding (length)
import qualified Data.ByteString.Lazy.UTF8        as B (length)
import qualified Data.Map                         as M
import           Data.Maybe
import           Data.Monoid                      ((<>))
import           Data.Text                        (Text)
import qualified Data.Text                        as T
import           Foreign.Emacs.Internal
import           Language.Haskell.Exts            hiding (List, String, Symbol,
                                                   name, sym)
import           Language.Haskell.Exts.SrcLoc
import qualified Language.Haskell.Exts.Syntax     as S (Name (Ident, Symbol))
import           System.IO                        (hFlush, stdout)

class Arity f where
  arity :: f -> Int

instance Arity x where
  arity _ = 0

instance Arity f => Arity ((->) a f) where
  arity f = 1 + arity (f undefined)

data Instruction = EmacsToHaskell Lisp
                 | HaskellToEmacs B.ByteString
                 | StartDialog (Emacs Lisp) Int

{-@ StartDialog :: Emacs Lisp -> Nat -> Instruction @-}

-- | Watch for commands and dispatch them in a seperate fork.
main :: IO ()
main = do
  printer <- newChan
  getter  <- newEmptyMVar
  lock    <- newMVar ()
  _       <- forkIO . forever $ readChan printer >>= B.putStr >> hFlush stdout
  is      <- fullParse <$> B.getContents
  mapM_ (forkIO . runInstruction lock getter printer) is

runInstruction :: MVar () -> MVar Lisp -> Chan B.ByteString -> Instruction -> IO ()
runInstruction _ g _ (EmacsToHaskell ls)                 = putMVar g   $! ls
runInstruction _ _ p (HaskellToEmacs msg)                = writeChan p $! msg
runInstruction l g p (StartDialog (EmacsInternal rdr) n) = withMVar l $ \_ -> do
  x <- runReaderT rdr (g, p)
  writeChan p . formatResult n $ Success x

-- | Recursively evaluate a lisp in parallel, using functions defined
-- by the user (see documentation of the emacs function `haskell-emacs-init').
{-@ Lazy traverseLisp @-}
traverseLisp :: Either (Emacs Lisp) Lisp -> Result (Either (Emacs Lisp) Lisp)
traverseLisp l = case l of
  Right (List (Symbol x:xs)) -> sym (T.filter (/='\\') x) xs
  Right (List xs)            -> Right . List <$> evl xs
  Right (Symbol "nil")       -> Success $ Right nil
  _                          -> Success l
  where {-@ assume evl :: xs:[Lisp] -> Result {v:[Lisp] | len xs == len v} @-}
        evl      = (>>= noNest) . sequence . parMap rdeepseq (traverseLisp . Right)
        sym x xs = maybe (Right . List . (Symbol x:) <$> evl xs)
                         (=<< (if length xs == 1 then head else List) <$> evl xs)
                         $ M.lookup x dispatcher
        noNest   = either (const (Error "Emacs monad isn't nestable."))
                          Success . sequence

-- | Takes a stream of instructions and returns lazy list of
-- results.
{-@ Lazy fullParse @-}
fullParse :: B.ByteString -> [Instruction]
fullParse a = case parseInput a of A.Done a' b -> b : fullParse a'
                                   A.Fail {}   -> []

-- | Parse an instruction and stamp the number of the instruction into
-- the result.
parseInput :: B.ByteString -> A.Result Instruction
parseInput = A.parse $ do
  i          <- A.option 0 AC.decimal
  isInternal <- isJust <$> optional "|"
  l          <- lisp
  return $ if isInternal
    then EmacsToHaskell l
    else case traverseLisp $ Right l of
      Success (Left x)  -> StartDialog x i
      Success (Right x) -> HaskellToEmacs . formatResult i $ Success x
      Error x           -> HaskellToEmacs . formatResult i $ Error x

-- | Scrape the documentation of haskell functions to serve it in emacs.
{-@ getDocumentation :: x:[Text] -> Text -> {v:[Text] | len x == len v} @-}
getDocumentation :: [Text] -> Text -> [Text]
getDocumentation funs code =
  map ( \f -> T.unlines . (++) (filter (T.isPrefixOf (f <> " ::")) ls ++ [""])
      . reverse
      . map (T.dropWhile (`elem` ("- |" :: String)))
      . takeWhile (T.isPrefixOf "-- ")
      . reverse
      $ takeWhile (not . T.isPrefixOf (f <> " ")) ls
      ) funs
  where ls = T.lines code

{-@ formatResult :: Nat -> Result Lisp -> B.ByteString @-}
formatResult :: Int -> Result Lisp -> B.ByteString
formatResult i l = f $ case l of
      Success s -> (Just $ num i, encode s)
      Error s   -> (Nothing     , errorE s)
  where f (procNum, t) = encList (num (B.length t):maybeToList procNum) <> t
        errorE msg     = encList [Symbol "error", String $ T.pack msg]
        encList        = encode . List
        num            = Number . fromIntegral

-- | Map of available functions which get transformed to work on lisp.
dispatcher :: M.Map Text (Lisp -> Result (Either (Emacs Lisp) Lisp))
dispatcher = M.fromList $
  [ ("arityFormat", transform arityFormat . normalize)
  , ("allExports",  transform allExports)
  , ("arityList",   transform $ \() -> toDispatcher arityList)
  , ("formatCode",  transform $ uncurry formatCode)
  , ("getDocumentation", transform $ uncurry getDocumentation)
  ] ++ []++[]

-- | Transform a curried function to a function which receives and
-- returns lisp forms.
transform :: (FromLisp a, ToEmacs b) => (a -> b) -> Lisp -> Result (Either (Emacs Lisp) Lisp)
transform = (. fromLisp) . fmap . (toEmacs .)

-- | Prevent bad input for the bootstrap.
normalize :: Lisp -> Lisp
normalize l@(List _)      = l
normalize l@(DotList _ _) = l
normalize a               = List [a]

-- | Takes tuples of function names and their arities and returns
-- haskell source code which gets spliced back into a module.
toDispatcher :: [(String, Int)] -> (String, [String])
toDispatcher = ("++"++) . prettyPrint . listE . map fun
               &&& map (filter (\x -> x/=',' && x/='\n')
               . prettyPrint . pvarTuple . genNames "x" . snd)
  where fun (f,n) = tuple [strE f, app (function "transform")
                          $ lamE noLoc [pvarTuple $ genNames "x" n]
                          (appFun (function f) . map var $ genNames "x" n)]

-- | List of functions and their arities (filled by emacs).
arityList :: [(String, Int)]
arityList = []++[("Matrix.transpose", arity Matrix.transpose),
 ("Matrix.identity", arity Matrix.identity),
 ("Matrix.isIdentity", arity Matrix.isIdentity),
 ("Matrix.dyadic", arity Matrix.dyadic),
 ("Base.abs", arity Base.abs), ("Base.acos", arity Base.acos),
 ("Base.acosh", arity Base.acosh), ("Base.and", arity Base.and),
 ("Base.asin", arity Base.asin), ("Base.asinh", arity Base.asinh),
 ("Base.asTypeOf", arity Base.asTypeOf),
 ("Base.atan", arity Base.atan), ("Base.atan2", arity Base.atan2),
 ("Base.atanh", arity Base.atanh),
 ("Base.ceiling", arity Base.ceiling),
 ("Base.compare", arity Base.compare),
 ("Base.concat", arity Base.concat),
 ("Base.const", arity Base.const), ("Base.cos", arity Base.cos),
 ("Base.cosh", arity Base.cosh), ("Base.cycle", arity Base.cycle),
 ("Base.decodeFloat", arity Base.decodeFloat),
 ("Base.div", arity Base.div), ("Base.divMod", arity Base.divMod),
 ("Base.drop", arity Base.drop), ("Base.elem", arity Base.elem),
 ("Base.encodeFloat", arity Base.encodeFloat),
 ("Base.enumFrom", arity Base.enumFrom),
 ("Base.enumFromThen", arity Base.enumFromThen),
 ("Base.enumFromThenTo", arity Base.enumFromThenTo),
 ("Base.enumFromTo", arity Base.enumFromTo),
 ("Base.error", arity Base.error), ("Base.even", arity Base.even),
 ("Base.exp", arity Base.exp),
 ("Base.exponent", arity Base.exponent),
 ("Base.floatDigits", arity Base.floatDigits),
 ("Base.floatRadix", arity Base.floatRadix),
 ("Base.floatRange", arity Base.floatRange),
 ("Base.floor", arity Base.floor), ("Base.fst", arity Base.fst),
 ("Base.gcd", arity Base.gcd), ("Base.head", arity Base.head),
 ("Base.id", arity Base.id), ("Base.init", arity Base.init),
 ("Base.isDenormalized", arity Base.isDenormalized),
 ("Base.isIEEE", arity Base.isIEEE),
 ("Base.isInfinite", arity Base.isInfinite),
 ("Base.isNaN", arity Base.isNaN),
 ("Base.isNegativeZero", arity Base.isNegativeZero),
 ("Base.last", arity Base.last), ("Base.length", arity Base.length),
 ("Base.lcm", arity Base.lcm), ("Base.lines", arity Base.lines),
 ("Base.log", arity Base.log), ("Base.logBase", arity Base.logBase),
 ("Base.lookup", arity Base.lookup),
 ("Base.mappend", arity Base.mappend), ("Base.max", arity Base.max),
 ("Base.maximum", arity Base.maximum),
 ("Base.mconcat", arity Base.mconcat),
 ("Base.mempty", arity Base.mempty), ("Base.min", arity Base.min),
 ("Base.minimum", arity Base.minimum), ("Base.mod", arity Base.mod),
 ("Base.negate", arity Base.negate), ("Base.not", arity Base.not),
 ("Base.notElem", arity Base.notElem),
 ("Base.null", arity Base.null), ("Base.odd", arity Base.odd),
 ("Base.or", arity Base.or),
 ("Base.otherwise", arity Base.otherwise),
 ("Base.pi", arity Base.pi), ("Base.product", arity Base.product),
 ("Base.properFraction", arity Base.properFraction),
 ("Base.quot", arity Base.quot),
 ("Base.quotRem", arity Base.quotRem),
 ("Base.recip", arity Base.recip), ("Base.rem", arity Base.rem),
 ("Base.repeat", arity Base.repeat),
 ("Base.replicate", arity Base.replicate),
 ("Base.reverse", arity Base.reverse),
 ("Base.round", arity Base.round),
 ("Base.scaleFloat", arity Base.scaleFloat),
 ("Base.seq", arity Base.seq), ("Base.show", arity Base.show),
 ("Base.significand", arity Base.significand),
 ("Base.signum", arity Base.signum), ("Base.sin", arity Base.sin),
 ("Base.sinh", arity Base.sinh), ("Base.snd", arity Base.snd),
 ("Base.splitAt", arity Base.splitAt),
 ("Base.subtract", arity Base.subtract),
 ("Base.sqrt", arity Base.sqrt), ("Base.sum", arity Base.sum),
 ("Base.tail", arity Base.tail), ("Base.take", arity Base.take),
 ("Base.tan", arity Base.tan), ("Base.tanh", arity Base.tanh),
 ("Base.truncate", arity Base.truncate),
 ("Base.undefined", arity Base.undefined),
 ("Base.unlines", arity Base.unlines),
 ("Base.unwords", arity Base.unwords),
 ("Base.unzip", arity Base.unzip),
 ("Base.unzip3", arity Base.unzip3),
 ("Base.words", arity Base.words), ("Base.zip", arity Base.zip),
 ("Base.zip3", arity Base.zip3), ("Text.append", arity Text.append),
 ("Text.breakOn", arity Text.breakOn),
 ("Text.breakOnAll", arity Text.breakOnAll),
 ("Text.breakOnEnd", arity Text.breakOnEnd),
 ("Text.center", arity Text.center),
 ("Text.chunksOf", arity Text.chunksOf),
 ("Text.commonPrefixes", arity Text.commonPrefixes),
 ("Text.concat", arity Text.concat), ("Text.cons", arity Text.cons),
 ("Text.copy", arity Text.copy), ("Text.count", arity Text.count),
 ("Text.drop", arity Text.drop),
 ("Text.dropEnd", arity Text.dropEnd),
 ("Text.group", arity Text.group), ("Text.head", arity Text.head),
 ("Text.index", arity Text.index), ("Text.init", arity Text.init),
 ("Text.inits", arity Text.inits),
 ("Text.intercalate", arity Text.intercalate),
 ("Text.intersperse", arity Text.intersperse),
 ("Text.isInfixOf", arity Text.isInfixOf),
 ("Text.isPrefixOf", arity Text.isPrefixOf),
 ("Text.isSuffixOf", arity Text.isSuffixOf),
 ("Text.justifyLeft", arity Text.justifyLeft),
 ("Text.justifyRight", arity Text.justifyRight),
 ("Text.last", arity Text.last), ("Text.length", arity Text.length),
 ("Text.lines", arity Text.lines),
 ("Text.maximum", arity Text.maximum),
 ("Text.minimum", arity Text.minimum),
 ("Text.null", arity Text.null), ("Text.pack", arity Text.pack),
 ("Text.replace", arity Text.replace),
 ("Text.replicate", arity Text.replicate),
 ("Text.reverse", arity Text.reverse),
 ("Text.singleton", arity Text.singleton),
 ("Text.snoc", arity Text.snoc),
 ("Text.splitAt", arity Text.splitAt),
 ("Text.splitOn", arity Text.splitOn),
 ("Text.strip", arity Text.strip),
 ("Text.stripEnd", arity Text.stripEnd),
 ("Text.stripPrefix", arity Text.stripPrefix),
 ("Text.stripStart", arity Text.stripStart),
 ("Text.stripSuffix", arity Text.stripSuffix),
 ("Text.tail", arity Text.tail), ("Text.tails", arity Text.tails),
 ("Text.take", arity Text.take),
 ("Text.takeEnd", arity Text.takeEnd),
 ("Text.toCaseFold", arity Text.toCaseFold),
 ("Text.toLower", arity Text.toLower),
 ("Text.toTitle", arity Text.toTitle),
 ("Text.toUpper", arity Text.toUpper),
 ("Text.transpose", arity Text.transpose),
 ("Text.uncons", arity Text.uncons),
 ("Text.unlines", arity Text.unlines),
 ("Text.unpack", arity Text.unpack),
 ("Text.unwords", arity Text.unwords),
 ("Text.words", arity Text.words), ("Text.zip", arity Text.zip)]

-- | Splice user functions into the haskell module.
formatCode :: (Text, Text, Text) -> Text -> Text
formatCode (imports, exports, arities) = inject "arity"  arities
                                       . inject "export" exports
                                       . inject "import" imports
  where inject s = T.replace ("{--<<" <> s <> ">>--}")

-- | Import statement of all modules and all their qualified functions.
allExports :: [String] -> Either String (String, [String])
allExports = (qualify . filter ((&&) <$> hasFunctions <*> isLibrary) <$>)
             .  mapM exportsGet
  where qualify ys   = ( unlines [prettyPrint $ ImportDecl noLoc q
                                                True
                                                False
                                                False
                                                Nothing
                                                Nothing
                                                Nothing | (q,_) <- ys]
                       , [prettyPrint $ qvar q n | (q,ns) <- ys, n <- ns])
        isLibrary    = (/=ModuleName "Main") . fst
        hasFunctions = not . null . snd

-- | List of haskell functions which get querried for their arity.
arityFormat :: [String] -> String
arityFormat = ("++"++) . prettyPrint
              . listE . map (\x -> tuple [strE x, app (function "arity")
                                                      (function x)])

-- | Retrieve the name and a list of exported functions of a haskell module.
-- It should use 'parseFileContents' to take pragmas into account.
exportsGet :: String -> Either String (ModuleName, [Name])
exportsGet content = case parseSrc of
  ParseOk (Module _ name _ _ header _ decls)
    -> Right . (,) name $ maybe (exportsFromDecls decls)
                                 exportsFromHeader header
  ParseFailed _ msg -> Left msg
  where parseSrc = parseFileContentsWithMode
                     defaultParseMode {fixities = Nothing}
                     content

exportsFromDecls :: [Decl] -> [Name]
exportsFromDecls = mapMaybe declarationNames

declarationNames :: Decl -> Maybe Name
declarationNames (FunBind (Match _ name _ _ _ _ : _)) = Just name
declarationNames (PatBind _ (PVar name) _ _)          = Just name
declarationNames _                                    = Nothing

-- | Extract the unqualified function names from an ExportSpec.
exportsFromHeader :: [ExportSpec] -> [Name]
exportsFromHeader = mapMaybe exportFunction

fromName :: Name -> String
fromName (S.Symbol str) = str
fromName (S.Ident  str) = str

exportFunction :: ExportSpec -> Maybe Name
exportFunction (EVar _ qname)      = unQualifiedName qname
exportFunction (EModuleContents _) = Nothing
exportFunction _                   = Nothing

unQualifiedName :: QName -> Maybe Name
unQualifiedName (Qual _ name) = Just name
unQualifiedName (UnQual name) = Just name
unQualifiedName _             = Nothing

;;; decl-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "decl" "decl.el" (22047 60629 659602 554000))
;;; Generated autoloads from decl.el

(autoload 'decl-block "decl" "\
Create new 'decl-block' instance that is managed by library.

DECL-BLOCK-KEYWORD-NAME must be a keyword.

\(decl-block decl-block-keyword-name)

\(fn DECL-BLOCK-KEYWORD-NAME)" nil nil)

(autoload 'decl-node "decl" "\
Creates a new 'decl-node' instance that is stored within a 'decl-block'.

DECL-NODE-KEYWORD-NAME must be a keyword.

DECL-BLOCK-KEYWORD-NAME must be a keyword.

LAMBDA-FUNCTION-THAT-ONLY-RETURNS-T-OR-NIL-DEPENDING-ON-NODE-EXECUTION (self-explanatory).

DEPENDENCIES must be a list of keywords.

\(decl-node decl-node-keyword-name decl-block-keyword-name dependencies)

\(fn DECL-NODE-KEYWORD-NAME DECL-BLOCK-KEYWORD-NAME LAMBDA-FUNCTION-THAT-ONLY-RETURNS-T-OR-NIL-DEPENDING-ON-NODE-EXECUTION &optional DEPENDENCIES)" nil nil)

(autoload 'decl-solve "decl" "\
Attempt to execute the lambda functions stored within the 'decl-node' instances
stored within the 'decl-block' referred to by the given DECL-BLOCK-KEYWORD-NAME.

DECL-BLOCK-KEYWORD-NAME must be a keyword.

\(decl-solve decl-block-keyword-name)

\(fn DECL-BLOCK-KEYWORD-NAME)" nil nil)

(autoload 'decl-report "decl" "\
Reports on the solving of any 'decl-block' via 'decl-solve' in an org-mode buffer.

DECL-BLOCK-KEYWORD-NAME must be a keyword.

\(decl-report decl-block-keyword-name)

\(fn DECL-BLOCK-KEYWORD-NAME)" t nil)

(autoload 'decl-wrap "decl" "\
Place your usage of the decl library within a lambda function and pass it to
decl-wrap to avoid retaining state. For example, if you want to define a build
process using this library, like using a makefile, you can use wrap your code
within a decl-wrap block to avoid storing data time each run your build process.

\(fn DECL-LIBRARY-USAGE-LAMBDA)" nil nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; decl-autoloads.el ends here

;; ;; Package management
(require 'package)
;(add-to-list 'package-archives
;;	     '("marmalade" . "http://marmalade-repo.org/packages/")
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))
; (when (< emacs-major-version 24)
   ;; For important compatibility libraries like cl-lib
 ;  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)
;; ;(ac-config-default)
;; (eval-after-load "package"
;;   '(add-to-list 'package-archives
;;		'("user42" . "http://download.tuxfamily.org/user42/elpa/packages/")))

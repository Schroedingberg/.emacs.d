;;; diredful-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "diredful" "diredful.el" (22239 33259 604067
;;;;;;  834000))
;;; Generated autoloads from diredful.el

(defvar diredful-mode nil "\
Non-nil if Diredful mode is enabled.
See the command `diredful-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `diredful-mode'.")

(custom-autoload 'diredful-mode "diredful" nil)

(autoload 'diredful-mode "diredful" "\
Toggle diredful minor mode. Will only affect newly created
dired buffers. When diredful mode is enabled, files in dired
buffers will be displayed in different faces and colors.

\(fn &optional ARG)" t nil)

(defvar diredful-mode nil nil)

(custom-autoload 'diredful-mode "diredful" nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; diredful-autoloads.el ends here

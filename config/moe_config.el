(require 'moe-theme)
;; Finally, apply moe-theme now.
    ;; Choose what you like, (moe-light) or (moe-dark)
(moe-light)
;(require 'moe-theme-switcher)
(show-paren-mode t)
;; Show highlighted buffer-id as decoration. (Default: nil)
    (setq moe-theme-highlight-buffer-id t)

(setq show-paren-style 'expression)


(moe-theme-set-color 'blue)
  ;; (Available colors: blue, orange, green ,magenta, yellow, purple, red, cyan, w/b.)

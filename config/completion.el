;; ;; Auto completion settings
;; ;;
;; ;;(require 'auto-complete-auctex)


; Jedi
 (add-hook 'python-mode-hook 'jedi:setup)
 (setq jedi:complete-on-dot t)                 ; optional

;; Company
(add-hook 'after-init-hook 'global-company-mode)
;(company-auctex-init)

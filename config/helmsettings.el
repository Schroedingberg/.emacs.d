;; ;; No asking for typing complete "yes" or "no"

(fset 'yes-or-no-p 'y-or-n-p)
;; ;; Switch of beep sound
(setq visible-bell t)
;; ;; Global shortcuts
 (global-set-key "\C-cd" 'dictcc)
 (global-set-key "\M-x" 'helm-M-x)
 (global-set-key "\C-x\C-f" 'helm-find-files)
 (global-set-key "\C-x\C-b" 'helm-buffers-list)
 (global-set-key "\M-y" 'helm-show-kill-ring)
 (global-set-key (kbd "C-x b") 'helm-mini)
 (global-set-key (kbd "C-ä") ' helm-occur-from-isearch)
(global-set-key (kbd "<f9>") ' helm-bibtex)
(global-set-key (kbd "C-h a") 'helm-apropos)
(global-set-key (kbd "C-c -") 'helm-calcul-expression)
;; ;; Visual effects for more intuitive navigation
 (add-hook 'after-init-hook (lambda ()
 			     (when (fboundp 'auto-dim-other-buffers-mode)
 			       (auto-dim-other-buffers-mode t))))
;; ;; Helm settings
;;(helm-autoresize-mode t)
(setq helm-bibtex-bibliography '("/home/aaron/Publishing/Bachelor_Thesis/Thesis/UWS.bib" "/home/aaron/Books/Library.bib"))
(setq helm-bibtex-library-path '("/home/aaron/Publishing/Bachelor_Thesis/Literature/" "/home/aaron/Books/"))
;(setq helm-bibtex-notes-path '("/home/aaron/Publishing/Bachelor_Thesis/Literature/Notes/"))
(autoload 'helm-bibtex "helm-bibtex" "" t)

 (setq helm-ff-auto-update-initial-value t)
(setq helm-bibtex-pdf-field "File")
(setq helm-split-window-in-side-p           t ; open helm uffer inside current window, not occupy whole other window
      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
      helm-ff-file-name-history-use-recentf t)
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t
      helm-M-x-fuzzy-match t)
      



(setq helm-apropos-fuzzy-match t)




;; ;; Custom Org-settings
;; ;(require 'org-ac)
(setq org-mobile-directory "~/Dropbox/.org/MobileOrg")
(setq org-src-fontify-natively t)
(setq org-src-preserve-indentation t)
(setq org-enforce-todo-dependencies t)
(setq org-enforce-todo-checkbox-dependencies t)
;; (setq org-beamer-mode t)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-cq" 'org-dashboard-display)
;(global-set-key "\C-c\C-x\C-a" 'org-ar
(setq org-hide-leading-stars 'hidestars)
;; (setq org-log-done t)
(setq org-return-follows-link t)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;;Org Refiling settings
; Targets include this file and any file contributing to the agenda - up to 9 levels deep
(setq org-refile-targets (quote ((nil :maxlevel . 9)
                                 (org-agenda-files :maxlevel . 9))))
(setq org-completion-use-ido nil)
(setq org-refile-use-outline-path (quote file))
;(setq org-outline-path-complete-in-steps t)
;;Org TODO settings
(setq org-todo-keywords
      '((sequence "TODO(t)" "|" "DONE(d)")
	(sequence "STARTED(s)" "WAITING(w)" "|" "DELEGATED(g)")
	(sequence "APPT(a)" "|" "ATTENDED(1)")
	(sequence "BUG(b@)" "TESTING(i)""|" "FIXED(f)")
	(sequence "|" "CANCELED(c)")))
;; ;; Farben anpassen
(setq org-todo-keyword-faces
      '(("STARTED"  . (:foreground "#b70101" :weight bold))
	("APPT"  . (:foreground "blue" :weight bold))
 	("BUG" . (:foreground "brown" :weight bold))
 	("TESTING" . (:foreground "purple" :weight bold))
	("WAITING"  . (:foreground "orange" :weight bold))
	("DELEGATED"  . (:foreground "forestgreen" :weight bold))
	("CANCELED"  . shadow)
	
	))
;; ;; Capture settings
 (setq org-default-notes-file "~/Dropbox/.org/Organizer.org")
;;  ;;Org Capture templates
 (setq org-capture-templates
       '(
	 ("t" "Todo" entry (file+headline "~/Dropbox/.org/Organizer.org" "Tasks")
             "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree "~/Dropbox/.org/Journal.org")
	 "* %?\nEntered on %U\n  %i\n  %a")
	("c" "Configure" entry (file+headline "~/Dropbox/.org/Organizer.org" "Configure")
	 )
	("b" "Birthday" entry (file+headline "~/Dropbox/.org/Birthdays.org" "New Birthdays")
	 "* APPT %?\n %i\n")
	("l" "Labbook" entry (file+datetree "~/Publishing/Bachelor_Thesis/Labbook.org")
	 "* %?\nEntered on %U\n  %i\n  %a")
	("N" "NMR-Labbook" entry (file+datetree "~/Publishing/Bachelor_Thesis/Labbook.org")
	 "* %?%^{prompt} \n
** Aim\n
%^{prompt}\n 
** Setup\n
- Instrument: Bruker DPX 200 Spectrometer \n
- Probehead size: %^{prompt} \\si{\milli\metre}\n 
- Software: Topspin\n
- Standard used: %^{prompt} in rotor %^{prompt}\n
- Rotary frequency: %^{prompt} \\si{\kilo\hertz} %^{prompt|MAS| }\n
    - - 90° $^1H$: P$_1$ = %^{prompt} \\si{\micro\\second}, PL$_1$ = %^{prompt} \\si{\decibel}\n
      SR $^1H$ = %^{prompt} \\si{\hertz} (for %^{prompt} ppm, in Setup %^{prompt|2|3|4|5|6})\n
    - - 90° $^{13}C$: P$_1$ = %^{prompt} \\si{\micro\\second}, PL$_1$ = %^{prompt} \\si{\decibel}\n
      SR $^{13}C$ = %^{prompt} \\si{\hertz} (for %^{prompt} ppm, in Setup %^{prompt|2|3|4|5|6})\n
- Comment: %^{prompt}
\n



Entered on %U\n  %i\n"
	 
	 )
	
	)
   )


;; Org Agenda settings

;; ;; Tasks mit Datum in der Agenda ausblenden, wenn sie bereits erledigt sind:
(setq org-agenda-skip-deadline-if-done t)
(setq org-agenda-skip-scheduled-if-done t)
(setq org-agenda-skip-timestamp-if-deadline-is-shown t)
(setq org-agenda-skip-timestamp-if-done t)
(setq org-deadline-warning-days 7)

;; Aktuelle Zeile in der Agenda hervorheben
 (add-hook 'org-agenda-mode-hook '(lambda () (hl-line-mode 1 )))
;(setq org-agenda-include-diary t)

;; Latex Export Settings






;;Babel
;; (org-babel-do-load-languages
;;  'org-babel-load-languages
;;  '((python . t)))
;;Time settings
(setq org-clock-persist 'history)

;; Mobile org settings
;; (add-hook 
;;   'after-save-hook 
;;   (lambda () 
;;      (if (string= buffer-file-name "~/Dropbox/.org/Organizer.org") 
;; 	 (org-mobile-push)
;;        (org-mobile-pull)
;;      )
;;   ))
;; mail integration
;;store link to message if in header view, not to header query
(setq org-mu4e-link-query-in-headers-mode nil)



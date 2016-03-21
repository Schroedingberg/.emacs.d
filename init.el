  ;; Code ;; 
  (custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-parse-self t t)
 '(TeX-view-program-list (quote (("pdf-tools" ("pdf-tools") ""))))
 '(achievements-display-when-earned t)
 '(achievements-mode t)
 '(bibtex-dialect (quote biblatex))
 '(csv-separators (quote ("," ";")))
 '(custom-safe-themes
   (quote
    ("a985799595034bd95cd74ed968d15f93a1145ed81ffcf0537401ec7dd6ebed4f" "cc60d17db31a53adf93ec6fad5a9cfff6e177664994a52346f81f62840fe8e23" "e0e1a92c23f643b5885e5c67815a9fdef2b9c14097cc02fc94b024880bc37684" "357d5abe6f693f2875bb3113f5c031b7031f21717e8078f90d9d9bc3a14bcbd8" "04dd0236a367865e591927a3810f178e8d33c372ad5bfef48b5ce90d4b476481" "5e3fc08bcadce4c6785fc49be686a4a82a356db569f55d411258984e952f194a" "a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" "7153b82e50b6f7452b4519097f880d968a6eaf6f6ef38cc45a144958e553fbc6" "7356632cebc6a11a87bc5fcffaa49bae528026a78637acd03cae57c091afd9b9" "4c028a90479b9ad4cbb26ae7dc306dded07718749fe7e4159621a8aebac40213" "38d25871e95642ee1a13013bdb988e8c8fcb4ced3832d3e927c7296a0cdf5f59" "2bed8550c6f0a5ce635373176d5f0e079fb4fb5919005bfa743c71b5eed29d81" "7997e0765add4bfcdecb5ac3ee7f64bbb03018fb1ac5597c64ccca8c88b1262f" default)))
 '(diary-entry-marker (quote font-lock-variable-name-face))
 '(doc-view-continuous t)
 '(electric-pair-mode nil)
 '(elpy-rpc-python-command "python")
 '(emms-mode-line-icon-image-cache
   (quote n
	  (image :type xpm :ascent center :data "/* XPM */
static char *note[] = {
/* width height num_colors chars_per_pixel */
\"    10   11        2            1\",
/* colors */
\". c #358d8d\",
\"# c None s None\",
/* pixels */
\"###...####\",
\"###.#...##\",
\"###.###...\",
\"###.#####.\",
\"###.#####.\",
\"#...#####.\",
\"....#####.\",
\"#..######.\",
\"#######...\",
\"######....\",
\"#######..#\" };")))
 '(gnus-logo-colors (quote ("#0d7b72" "#adadad")) t)
 '(gnus-mode-line-image-cache
   (quote
    (image :type xpm :ascent center :data "/* XPM */
static char *gnus-pointer[] = {
/* width height num_colors chars_per_pixel */
\"    18    13        2            1\",
/* colors */
\". c #358d8d\",
\"# c None s None\",
/* pixels */
\"##################\",
\"######..##..######\",
\"#####........#####\",
\"#.##.##..##...####\",
\"#...####.###...##.\",
\"#..###.######.....\",
\"#####.########...#\",
\"###########.######\",
\"####.###.#..######\",
\"######..###.######\",
\"###....####.######\",
\"###..######.######\",
\"###########.######\" };")) t)
 '(helm-autoresize-mode t)
 '(helm-bibtex-fallback-options
   (quote
    (("Web of Science" . "http://apps.webofknowledge.com/UA_GeneralSearch_input.do?product=UA&search_mode=GeneralSearch&SID=W215oyisE87u2y7A5lr&preferencesSaved=")
     ("Google Scholar" . "https://scholar.google.co.uk/scholar?q=%s")
     ("Pubmed" . "https://www.ncbi.nlm.nih.gov/pubmed/?term=%s")
     ("arXiv" . helm-bibtex-arxiv)
     ("Bodleian Library" . "http://solo.bodleian.ox.ac.uk/primo_library/libweb/action/search.do?vl(freeText0)=%s&fn=search&tab=all")
     ("Library of Congress" . "https://www.loc.gov/search/?q=%s&all=true&st=list")
     ("Deutsche Nationalbibliothek" . "https://portal.dnb.de/opac.htm?query=%s")
     ("British National Library" . "http://explore.bl.uk/primo_library/libweb/action/search.do?&vl(freeText0)=%s&fn=search")
     ("Bibliothèque nationale de France" . "http://catalogue.bnf.fr/servlet/RechercheEquation?host=catalogue?historique1=Recherche+par+mots+de+la+notice&niveau1=1&url1=/jsp/recherchemots_simple.jsp?host=catalogue&maxNiveau=1&categorieRecherche=RechercheMotsSimple&NomPageJSP=/jsp/recherchemots_simple.jsp?host=catalogue&RechercheMotsSimpleAsauvegarder=0&ecranRechercheMot=/jsp/recherchemots_simple.jsp&resultatsParPage=20&x=40&y=22&nbElementsHDJ=6&nbElementsRDJ=7&nbElementsRCL=12&FondsNumerise=M&CollectionHautdejardin=TVXZROM&HDJ_DAV=R&HDJ_D2=V&HDJ_D1=T&HDJ_D3=X&HDJ_D4=Z&HDJ_SRB=O&CollectionRezdejardin=UWY1SPQM&RDJ_DAV=S&RDJ_D2=W&RDJ_D1=U&RDJ_D3=Y&RDJ_D4=1&RDJ_SRB=P&RDJ_RLR=Q&RICHELIEU_AUTRE=ABCDEEGIKLJ&RCL_D1=A&RCL_D2=K&RCL_D3=D&RCL_D4=E&RCL_D5=E&RCL_D6=C&RCL_D7=B&RCL_D8=J&RCL_D9=G&RCL_D10=I&RCL_D11=L&ARSENAL=H&LivrePeriodique=IP&partitions=C&images_fixes=F&son=S&images_animees=N&Disquette_cederoms=E&multimedia=M&cartes_plans=D&manuscrits=BT&monnaies_medailles_objets=JO&salle_spectacle=V&Monographie_TN=M&Periodique_TN=S&Recueil_TN=R&CollectionEditorial_TN=C&Ensemble_TN=E&Spectacle_TN=A&NoticeB=%s")
     ("EZB" . "http://rzblx1.uni-regensburg.de/ezeit/search.phtml?bibid=EFF&colors=2&lang=de"))))
 '(helm-dash-browser-func (quote eww))
 '(helm-el-package-initial-filter (quote all))
 '(helm-mode t)
 '(helm-mode-fuzzy-match t)
 '(inhibit-default-init nil)
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(mu4e-completing-read-function (quote completing-read))
 '(mu4e-view-prefer-html t)
 '(org-agenda-files
   (quote
    ("~/Dropbox/.org/Organizer.org" "~/Dropbox/.org/from-mobile.org" "~/Dropbox/.org/Birthdays.org" "~/Books/edu.org" "~/Publishing/Bachelor_Thesis/Thesis.org" "~/Development/dev.org")))
 '(org-clock-idle-time 10)
 '(org-clock-persist t)
 '(org-directory "~")
 '(org-latex-packages-alist (quote (("" "tabu" t))))
 '(org-mobile-inbox-for-pull "~/Dropbox/.org/from-mobile.org")
 '(org-outline-path-complete-in-steps nil)
 '(org-table-convert-region-max-lines 99999)
 '(pdf-latex-command "xetex")
 '(projectile-completion-system (quote helm))
 '(projectile-global-mode t)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(vc-handled-backends (quote (RCS CVS SVN SCCS Bzr Hg Mtn Arch)))
)



(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-dim-other-buffers-face ((t (:background "gray93")))))
(add-to-list 'custom-theme-load-path "/home/aaron/.emacs.d/themes")
(add-to-list 'load-path "~/.emacs.d/lisp/" )
(add-to-list 'custom-theme-load-path "home/aaron/.emacs.d/elpa")

   (add-to-list 'custom-theme-load-path "~/.emacs.d/lisp/moe-theme.el/")
   (add-to-list 'load-path "~/.emacs.d/lisp/moe-theme.el/")
   (require 'moe-theme)
   ;; Show highlighted buffer-id as decoration. (Default: nil)
   ;; Choose a color for mode-line.(Default: blue)
    (moe-theme-set-color 'black)
    (setq moe-theme-highlight-buffer-id t)

   (moe-light)

   (add-to-list 'load-path "~/.emacs.d/lisp/powerline")
   (require 'powerline)
   (powerline-default-theme)

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
	 \** Aim\n
	 %^{prompt}\n 
	 \** Setup\n
	 - Instrument: Bruker DPX 200 Spectrometer \n
	 - Probehead size: %^{prompt} \\si{\milli\metre}\n 
	 - Software: Topspin\n
	 - Standard used: %^{prompt} in rotor %^{prompt}\n
	 - Rotary frequency: %^{prompt} \\si{\kilo\hertz} %^{prompt|MAS| }\n
	 - - 90 $^1H$: P$_1$ = %^{prompt} \\si{\micro\\second}, PL$_1$ = %^{prompt} \\si{\decibel}\n
	 SR $^1H$ = %^{prompt} \\si{\hertz} (for %^{prompt} ppm, in Setup %^{prompt|2|3|4|5|6})\n
	 - - 90 $^{13}C$: P$_1$ = %^{prompt} \\si{\micro\\second}, PL$_1$ = %^{prompt} \\si{\decibel}\n
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
	 (org-babel-do-load-languages
	  'org-babel-load-languages
	  (quote
	  ((emacs-lisp . t)
	  (ditaa . t)
	  (python . t)
	  (latex . t)
	  (ipython .t)
	  (dot . t))))

	 (require 'ob-ipython)
	 (setq org-confirm-babel-evaluate nil)   ;don't prompt me to confirm everytime I want to evaluate a block
	 ;;; display/update images in the buffer after I evaluate
	 (add-hook 'org-babel-after-execute-hook 'org-display-inline-images 'append)
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

;; ;; Auto completion settings
;; ;;
;; ;;(require 'auto-complete-auctex)
; Jedi
 (add-hook 'python-mode-hook 'jedi:setup)
 (setq jedi:complete-on-dot t)                 ; optional
;; Company
(add-hook 'after-init-hook 'global-company-mode)
;(company-auctex-init)

;;This is mainly for making beamer frames appear in the reftex tox
(setq reftex-section-levels '(("part" . 0)
                  ("chapter" . 1)
                  ("section" . 2)
                  ("subsection" . 3)
                  ("subsubsection" . 4)
                  ("paragraph" . 5)
                  ("subparagraph" . 6)
                  ("frametitle" . 7)
                  ("addchap" . -1)
                  ("addsec" . -2)))

(setq TeX-fold-mode t)

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



(helm-mode)

  ;;'(send-mail-function sendemail)
;;(setq mail-user-agent 'mu4e-user-agent)
;; Mu4e settings
(add-to-list 'load-path "~/.emacs.d/lisp/mu4e-multi")  ;; if it's not already in `load-path'
(require 'mu4e-multi)
;;(mu4e-maildirs-extension)

;; these are actually the defaults
 (setq
   mu4e-maildir       "~/Mail")   ;; top-level Maildir)
;;   mu4e-sent-folder   "/Sent"       ;; folder for sent messages
;;   mu4e-drafts-folder "/Drafts"     ;; unfinished messages
;;   mu4e-trash-folder  "/Trash"      ;; trashed messages
;;   mu4e-refile-folder "/archive")   ;; saved messages





(defvar my-mu4e-account-alist
  '(
    
    ("HSF"
     (user-mail-address  "rebmann.aaron@stud.hs-fresenius.de")
     (mu4e-sent-folder   "/HSF/Gesendet")
     (mu4e-drafts-folder "/HSF/Entwuerfe")
     (mu4e-trash-folder  "/HSF/Geloescht")
     (mu4e-refile-folder "/HSF/Archive")

   )
   
  ("Gmail"
    (user-mail-address  "aaronrebmann@gmail.com")
     (mu4e-sent-folder   "/Gmail/Sent")
     (mu4e-drafts-folder "/Gmail/Drafts")
     (mu4e-trash-folder  "/Gmail/Trash")
     (mu4e-refile-folder "/Gmail/Archive")

     )
  )
  ) 
(setq mu4e-user-mail-address-list
     (mapcar (lambda (account) (cadr (assq 'user-mail-address account)))
            my-mu4e-account-alist))


(defun my-mu4e-set-account ()
  "Set the account for composing a message."
  (let* ((account
          (if mu4e-compose-parent-message
              (let ((maildir (mu4e-message-field mu4e-compose-parent-message :maildir)))
                (string-match "/\\(.*?\\)/" maildir)
                (match-string 1 maildir))
            (completing-read (format "Compose with account: (%s) "
                                     (mapconcat #'(lambda (var) (car var))
                                                my-mu4e-account-alist "/"))
                             (mapcar #'(lambda (var) (car var)) my-mu4e-account-alist)
                             nil t nil nil (caar my-mu4e-account-alist))))
         (account-vars (cdr (assoc account my-mu4e-account-alist))))
    (if account-vars
        (mapc #'(lambda (var)
                  (set (car var) (cadr var)))
              account-vars)
      (error "No email account found"))))

;;ask for account when composing mail
(add-hook 'mu4e-compose-pre-hook 'my-mu4e-set-account)



;; allow for updating mail using 'U' in the main view:
(setq mu4e-get-mail-command "offlineimap")

;; don't keep message buffers around
(setq message-kill-buffer-on-exit t)

;; set update interval (testing, there will be trouble with the credentials)
(setq mu4e-update-interval 60)
;; HTML rendering settings
;(setq mu4e-html2text-command "html2text")
(setq mu4e-view-prefer-html t)

;; attachments go here
(setq mu4e-attachment-dir "~/Downloads")

;; when you reply to a message, use the identity that the mail was sent to
;; the cpbotha variation — function that checks to, cc and bcc fields
(defun cpb-mu4e-is-message-to (msg rx)
"Check if to, cc or bcc field in MSG has any address in RX."
(or (mu4e-message-contact-field-matches msg :to rx)
(mu4e-message-contact-field-matches msg :cc rx)
(mu4e-message-contact-field-matches msg :bcc rx)))


;; mu4e-multi settings

;;; Replies

(setq message-citation-line-function 'message-insert-formatted-citation-line) 
(setq message-citation-line-format "On %a, %b %d %Y, %f wrote:\n")


(global-set-key (kbd "C-x m") 'mu4e)

(setq smtpmail-multi-accounts
      (quote
       ((HSF . ("rebmann.aaron@stud.hs-fresenius.de"
                 "mail.hs-fresenius.de"
                 587
                nil
                 nil nil nil nil))
        (Gmail . ("aaronrebmann@gmail.com"
                   "smtp.gmail.com"
                   587
                   nil
                   starttls
                   nil nil nil)))))

(setq smtpmail-multi-associations
      (quote
       (("aaronrebmann@gmail.com" Gmail)
        ("rebmann.aaron@stud.hs-fresenius.de" HSF))))

(setq smtpmail-multi-default-account (quote gmail))

(setq message-send-mail-function 'smtpmail-multi-send-it)

(setq smtpmail-debug-info t)
(setq smtpmail-debug-verbose t)


;; Custom functions
(add-to-list 'mu4e-header-info-custom
       '(:recipnum .
         ( :name "Number of recipients"  ;; long name, as seen in the message-view
           :shortname "Recip#"           ;; short name, as seen in the headers view
           :help "Number of recipients for this message" ;; tooltip
           :function
           (lambda (msg)
     	(format "%d"
     	  (+ (length (mu4e-message-field msg :to))
     	    (length (mu4e-message-field msg :cc))))))))




     (add-to-list 'mu4e-headers-custom-markers
       '("More than n recipients"
           (lambda (msg n)
             (> (+ (length (mu4e-message-field msg :to))
                   (length (mu4e-message-field msg :cc))) n))
           (lambda ()
             (read-number "Match messages with more recipients than: "))) t)


;; enable inline images
     (setq mu4e-view-show-images t)
     ;; use imagemagick, if available
     (when (fboundp 'imagemagick-register-types)
        (imagemagick-register-types))

;; Bookmarks
 (add-to-list 'mu4e-bookmarks
	      '("size:5M..500M"       "Big messages"     ?b)

	      )

(add-to-list 'mu4e-bookmarks
	     '("maildir:/HSF/INBOX"    "HSF"    ?1)
	     )


(add-to-list 'mu4e-bookmarks
	     '("maildir:/Gmail/INBOX"    "Gmail"    ?g)
	     )




;; prevent <openwith> from interfering with mail attachments
(require 'mm-util)
(add-to-list 'mm-inhibit-file-name-handlers 'openwith-file-handler)


;(require 'org-mu4e)

  (add-hook 'dired-mode-hook
 (lambda ()
  (define-key dired-mode-map (kbd "C-<up>")
    (lambda () (interactive) (find-alternate-file "..")))
  ; was dired-up-directory
 ))




(add-hook 'dired-mode-hook
	  (lambda ()
	    (define-key dired-mode-map (kbd "C-s")
	      (lambda () (interactive) (dired-narrow-fuzzy))
	      )
	    )
	  )



(eval-after-load "dired-aux"
   '(add-to-list 'dired-compress-file-suffixes 
                 '("\\.zip\\'" ".zip" "unzip")))

  ;(add-hook 'prog-mode-hook #'yas-minor-mode)
  ;; (yas-snippet-dirs
  ;; ("/home/aaron/.emacs.d/elpa/elpy-20160131.118/snippets/"
  ;;  "/home/aaron/.emacs.d/elpa/django-snippets-20131229.811/snippets")) 
  (yas-global-mode 1)

(setq '(elfeed-feeds (quote ("http://blog.revolutionanalytics.com/atom.xml"))))

(win-switch-setup-keys-ijkl "\C-xo")
(setq win-switch-idle-time 2)

  (defun tangle-init ()
  "If the current buffer is 'init.org' the code-blocks are
  tangled, and the tangled file is compiled."
  (when (equal (buffer-file-name)
  (expand-file-name (concat user-emacs-directory "init.org")))
  ;; Avoid running hooks when tangling.
  (let ((prog-mode-hook nil))
  (org-babel-tangle))))
;  (byte-compile-file (concat user-emacs-directory "init.el")



  (add-hook 'after-save-hook 'tangle-init)
;;  (set-language-environment "UTF-8")

  (defvar emacs-autosave-directory
  (concat user-emacs-directory "autosaves/")
  "This variable dictates where to put auto saves. It is set to a
  directory called autosaves located wherever your .emacs.d/ is
  located.")

;; Sets all files to be backed up and auto saved in a single directory.
(setq backup-directory-alist
      `((".*" . ,emacs-autosave-directory))
      auto-save-file-name-transforms
      `((".*" ,emacs-autosave-directory t)))

;(toggle-diredp-find-file-reuse-dir 1)



;; Experimental approach to always reuse dired buffers
;(add-hook 'dired-mode-hook
;	  #'diredp-up-directory-reuse-dir-buffer)







;; ;;LaTeX settings
(setq TeX-show-compilation nil)
;(add-hook 'LaTeX-mode-hook #'latex-extra-mode)
(add-hook 'LaTeX-mode-hook 'reftex-mode)
(company-auctex-init)
(setq TeX-auto-save t)
     (setq TeX-parse-self t)
     (setq-default TeX-master nil)


;; Flycheck settings
(add-hook 'after-init-hook #'global-flycheck-mode)


(desktop-save-mode 1)

(menu-bar-mode -1)
(tool-bar-mode -1)
;; Who use the bar to scroll?
(scroll-bar-mode 0)



(global-set-key [f12] 'undo-tree-visualize)

(global-set-key "\C-xu" 'undo)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

(global-set-key [f4] 'call-last-kbd-macro)
(global-set-key [f5] 'helm-execute-kmacro)
;; Python settings

;; (autoload 'python-mode "python-mode" "Python Mode." t)
;; (add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
;; (add-to-list 'interpreter-mode-alist '("python" . python-mode))



;(smartparens-mode t)
;; Skype settings
;;(setq skype--my-user-handle "your skype account")
;; Activate global modes that I like for convenience after everything else is loaded
;; These should probably be wrapped into hooks





(elpy-enable)
(elpy-use-ipython)
(smartparens-global-mode)
(projectile-global-mode)
(achievements-mode)
(server-start)
;;PDF tools 
(pdf-tools-install)

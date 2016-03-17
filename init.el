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
 '(elfeed-feeds (quote ("http://blog.revolutionanalytics.com/atom.xml")))
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
     ("Gallica Bibliothèque Numérique" . "http://gallica.bnf.fr/Search?q=%s")
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
 '(org-babel-load-languages
   (quote
    ((emacs-lisp . t)
     (ditaa . t)
     (python . t)
     (latex . t)
     (dot . t))))
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
 '(vc-handled-backends (quote (RCS CVS SVN SCCS Bzr Hg Mtn Arch))))




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
(add-to-list 'load-path "~/.emacs.d/lisp/powerline")
(load"~/.emacs.d/config/powerlinesettings.el")
(load "~/.emacs.d/config/moe_config.el")
(load "~/.emacs.d/config/completion.el")
(load "~/.emacs.d/config/helmsettings.el")
(load "~/.emacs.d/config/mail.el")
(load "~/.emacs.d/config/orgsettings.el")
(load "~/.emacs.d/config/diredsettings.el")
(load "~/.emacs.d/config/pkg.el")
;(toggle-diredp-find-file-reuse-dir 1)

(eval-after-load "dired-aux"
   '(add-to-list 'dired-compress-file-suffixes 
                 '("\\.zip\\'" ".zip" "unzip")))



;; Experimental approach to always reuse dired buffers
;(add-hook 'dired-mode-hook
;	  #'diredp-up-directory-reuse-dir-buffer)




;;PDF tools 
(pdf-tools-install)



;; ;;LaTeX settings
(setq TeX-show-compilation nil)
;(add-hook 'LaTeX-mode-hook #'latex-extra-mode)
(add-hook 'LaTeX-mode-hook 'reftex-mode)
;;(company-auctex-init)
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


;; (defun my-compile ()
;;   "Use compile to run python programs"
;;   (interactive)
;;   (compile (concat "python " (buffer-name))))
;; (setq compilation-scroll-output t)
;; ;; this mode-hook is taken straight from the comments in autopair.el
;; (add-hook 'python-mode-hook
;;       #'(lambda ()
;; 	  (local-set-key "\C-c\C-c" 'my-compile)))

;; Convenience functions for Graphviz mode
;; (defun show-me-the-graph ()
;;   "Build the png file of the dot-graph and show it directly in the preview pane"
;;   (interactive)
;;   (compile (concat "dot " (buffer-name) "-o ./"  ))
;;     )

;(put 'LaTeX-narrow-to-environment 'disabled nil)
(smartparens-mode t)
;; Skype settings
;;(setq skype--my-user-handle "your skype account")
;; Activate global modes that I like for convenience after everything else is loaded
;; These should probably be wrapped into hooks
;; Most important, of course, the helm mode
;; It replaces many tab completion prompts with a sweet helm interface

(helm-mode)
;;Here we enable elpy as default PyIDE and we tell it to use Ipython when compiling a script. This will lead to a more interactive
;; way of development, e.g. if you want to check a plot but don´t want it in your final script.
(elpy-enable)
(elpy-use-ipython)
(smartparens-global-mode)
(projectile-global-mode)
(achievements-mode)
(server-start)

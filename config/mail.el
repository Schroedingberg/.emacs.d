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
     (mu4e-drafts-folder "/HSF/Entwürfe")
     (mu4e-trash-folder  "/HSF/Gelöscht")
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

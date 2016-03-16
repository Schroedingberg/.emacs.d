(defun hotspots ()
  "helm interface to my hotspots, which includes my locations,
org-files and bookmarks"
  (interactive)
  (helm :sources `(((name . "Mail and News")
                    (candidates . (("Mail" . (lambda ()
                                               (if (get-buffer "*mu4e-headers*")
                                                   (progn
                                                     (switch-to-buffer "*mu4e-headers*")
                                                     (delete-other-windows))

                                                 (mu4e))))
                                   ("Calendar" . (lambda ()  (browse-url "https://www.google.com/calendar/render")))
                                   ("Agenda" . (lambda () (org-agenda "" "w")))))
                    (action . (("Open" . (lambda (x) (funcall x))))))
                   ((name . "My Locations")
                    (candidates . (("Organizer" . "~/Dropbox/Ordner/.org/Organizer.org")
                    (action . (("Open" . (lambda (x) (find-file x))))))
                   ((name . "My org files")
                    (candidates . ,(f-entries "~/Dropbox/org-mode"))
                    (action . (("Open" . (lambda (x) (find-file x))))))
                   helm-source-recentf
                   helm-source-bookmarks
                   helm-source-bookmark-set)))

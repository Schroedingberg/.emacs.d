;;; org-tracktable-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "org-tracktable" "org-tracktable.el" (22116
;;;;;;  26793 264268 981000))
;;; Generated autoloads from org-tracktable.el

(autoload 'org-tracktable-insert-table "org-tracktable" "\
Insert the a table with the name defined by `org-tracktable-table-name'.

\(fn)" t nil)

(autoload 'org-tracktable-status "org-tracktable" "\
Report the number of words between positions BEG and END.
If a table is inserted with `org-tracktable-table-insert', shows words written today.
If `org-tracktable-daily-goal' is set to more than 0, show % of daily goal.

\(fn BEG END)" t nil)

(autoload 'org-tracktable-write "org-tracktable" "\
Write progress to the tracktable.
If the last entry is from today, this entry will be updated.
Otherwise a new entry will be made.  It is only necessary to call this function
when you're done writing for the day.

\(fn)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; org-tracktable-autoloads.el ends here

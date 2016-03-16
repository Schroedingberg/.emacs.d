;;; magnatune-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "magnatune" "magnatune.el" (22196 22643 652185
;;;;;;  68000))
;;; Generated autoloads from magnatune.el

(autoload 'magnatune-browse "magnatune" "\
The entry point into magnatune's catalog.

Asks to either list artists, albums or genres. For artists and
albums a prefix arg asks for an initial query to narrow down the
list.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads nil "magnatune-helm" "magnatune-helm.el" (22196
;;;;;;  22643 572185 65000))
;;; Generated autoloads from magnatune-helm.el

(autoload 'magnatune-helm "magnatune-helm" "\
Helm for all genres, albums and artists at magnatune.

On artist, album or song the persistent action opens a buffer
with a description of the current item (same buffer as with
standard interface). When on a song, a description of the album
of this song is shown.

The “play” action is bound to 'C-a'. It appends the tracks of the
current item to the playlist. With prefix, the playlist is
cleared first. It is a persistent action, so you can add to the
playlist without quitting the helm session.

The default action steps into the current item and you can go
back with 'C-.'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("magnatune-pkg.el") (22196 22643 783719
;;;;;;  672000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; magnatune-autoloads.el ends here

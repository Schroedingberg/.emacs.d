;;; ctxmenu-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "ctxmenu" "ctxmenu.el" (22101 39477 382800
;;;;;;  103000))
;;; Generated autoloads from ctxmenu.el

(autoload 'ctxmenu:add-source "ctxmenu" "\
Add a source into `ctxmenu:global-sources'/`ctxmenu:sources'.

About the search of the listed command. It's in two ways, PREFIX/DELIMITER or KEYSTROKE.
- PREFIX is string as the prefix of the target commands.
- DELIMITER is string as the delimiter between prefix and name in the command symbol.
- KEYSTROKE is string as the stroke of the keymap which has the target commands.
- IS-REGEXP is boolean. If non-nil means PREFIX/DELIMITER is a regular expression. (In the case, MENU-NAME is required.)

About the name of the menu which is built from the result of the command search.
- MENU-NAME is string as the menu name. If nil, use PREFIX.
- REMAIN-PREFIX is boolean. If non-nil, remain the part of PREFIX/DELIMITER in command. In default, remove it.

About the filter of listing the commands into menu-list.
In default, list only the command that is bound to some key from within the result of the command search.
- EXCLUDES is the list of the excluded command symbol.
- EXCLUDE-REGEXP is string as the regular expression of the excluded command.
- INCLUDE-ALL is boolean. If non-nil, list all commands.
- INCLUDE-MENU is boolean. If non-nil, moreover list the commands that is bound to menu-bar.
- INCLUDE-REGEXP is string as the regular expression of the included command.

About the target of the added source.
- LOCAL is boolean. If nil, the target is `ctxmenu:global-sources'. Else, it's `ctxmenu:sources'.
- HOOK is the symbol of hook. If the target is not a current `ctxmenu:sources', set the target mode hook.

About the method of the menu format.
- MENU-LIST is the symbol of the function that format menu-list. If nil, use `ctxmenu:default-menu-list-function'.
- MENU-ARG is the argument to MENU-LIST. It depends on MENU-LIST whether this value is necessary or not.
- SORT is the symbol of the function that sort menu-list. If nil, use `ctxmenu:default-sort-menu-function'.

\(fn &key LOCAL HOOK PREFIX MENU-NAME DELIMITER IS-REGEXP KEYSTROKE EXCLUDES EXCLUDE-REGEXP INCLUDE-ALL INCLUDE-MENU INCLUDE-REGEXP MENU-LIST MENU-ARG SORT REMAIN-PREFIX)" nil (quote macro))

(autoload 'ctxmenu:remove-source "ctxmenu" "\
Remove a source from `ctxmenu:global-sources'/`ctxmenu:sources'.

The argument is the same value of `ctxmenu:add-source'.

\(fn &key LOCAL HOOK PREFIX MENU-NAME IS-REGEXP)" nil nil)

(autoload 'ctxmenu:show "ctxmenu" "\
Show a context menu.

SOURCES is the list of source. If nil, use `ctxmenu:global-sources' and `ctxmenu:sources'.
About the format of source, see `ctxmenu:global-sources'.

\(fn &optional SOURCES)" t nil)

(autoload 'ctxmenu:clear-cache "ctxmenu" "\
Clear the cache of menu-list.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("ctxmenu-config.el" "ctxmenu-pkg.el")
;;;;;;  (22101 39477 601776 949000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; ctxmenu-autoloads.el ends here

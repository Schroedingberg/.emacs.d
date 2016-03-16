;;; oeis-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "oeis" "oeis.el" (22119 14163 964787 989000))
;;; Generated autoloads from oeis.el

(let ((loads (get 'oeis 'custom-loads))) (if (member '"oeis" loads) nil (put 'oeis 'custom-loads (cons '"oeis" loads))))

(autoload 'oeis-browse-anum "oeis" "\
Display an OEIS sequence web page with `browse-url'.
This is a page such as

    URL `http://oeis.org/A000290'

Interactively the default ANUM is an A-number at point.
When entering a number some fixups are applied so for example
it's enough to enter \"290\" to see \"A000290\".

\(fn ANUM)" t nil)

(autoload 'oeis-ffap-enable "oeis" "\
Extend `ffap' to recognise A-numbers and a,b-files.
With this enabled `M-x ffap' on for example \"A000290\" offers
either a local or remote URL

    file:///home/foo/OEIS/A000290.html
    http://oeis.org/A000290

\(The local HTML is offered as a URL rather than plain filename
since the URL makes ffap visit it with `browse-url' rather than
`find-file'.)

Similarly on an a-file or b-file \"b1234546.txt\" offers either

    ~/OEIS/b1234546.txt
    http://oeis.org/A123456/b123456.txt

See `oeis-browse-anum' to go to any A-number entered (default
A-number at point).

\(fn)" t nil)

(autoload 'oeis-download "oeis" "\
Download an OEIS sequence using \"wget\".
`oeis-download-parts' is which parts of the sequence to download,
being HTML, b-file, internal, etc.

The download is done by running the \"wget\" program in a
`shell-command'.  If \"wget\" finishes successfully then the
buffer is killed and the window is closed.

Downloaded files are written to the first directory in
`oeis-local-directories'.  The directory is created if necessary.

b-file or a-file are downloaded by \"wget -N\" which means only
download if changed on the server.  The html or internal-text
parts are re-downloaded every time.  (The oeis.org server has a
Last-Modified date on the html, but wget won't do -N with -O.)

If all the desired parts of the sequence are already downloaded
then you are asked whether to re-download.  If a download is
already in progress for the sequence then you are switched to
that buffer rather than beginning another.

This is slightly rough.  The intention might be to offer
alternatives like \"curl\" or maybe url.el as download methods.
Might like also to have a size limit on a-files and b-files too
since many can approach 1Mbyte.

Terms of use for OEIS data are at
URL `http://oeis.org/wiki/The_OEIS_End-User_License_Agreement'
\(Creative Commons Attribution Non-Commercial 3.0 at the time of
writing).

\(fn ANUM)" t nil)

(autoload 'oeis-search "oeis" "\
OEIS web site search.
Use the OEIS web site search to look for numbers or text.  This
is a `browse-url' to, for example,

    http://oeis.org/search?fmt=short&q=monopentapolyhexes

Interactively the default search is word, numbers, or decimal
digits at point.  The usual `\\<minibuffer-local-map>\\[next-history-element]' switches to this in the
minibuffer if minor editing is needed.

Search hints are at URL `http://oeis.org/hints.html'.
Commas \",\" mean consecutive number terms in the order given.
Spaces mean the terms in any order.

    112,839,556       in given order
    112 839 556       in any order

The default from numbers at point always has \",\" since usually
order matters.  You can edit in the minibuffer or enter or yank
something else.

See `oeis-search-format' to choose short or long results.

\(fn STR)" t nil)

(autoload 'oeis-superseeker-mail "oeis" "\
Compose an email to the OEIS superseeker.
This is a `compose-mail' to superseeker@oeis.org pre-filled with
a \"lookup\" command.  Edit or enter target values then send with
`C-c C-c' in the usual way.

The superseeker is described at

    URL `http://oeis.org/ol.html'.
    URL `http://oeis.org/superhelp.txt'

A summary of the mail format is shown in a help window.  If you
have superhelp.txt somewhere in `oeis-local-directories' then
it's presented too.

The default lookup command has any list of numbers or decimal
digits at point.  Edit or replace as necessary before sending.

The superseeker works hard to find matches.  Try a plain
`oeis-search' or a local `oeis-grep' before a super seek.  The
superseeker limits to 1 search per user per hour and will bounce
if asked again too soon.  The command here records the last send
time and warns if too soon.  The last time is in file
~/.emacs.d/oeis-superseeker-time.el so is preserved between
sessions.  If the recorded time is somehow wrong you can always
say \"yes\" to send a request anyway.

----
The email uses `compose-mail' so all usual features and
configuration of the chosen `mail-user-agent' are available.

You might like to arrange not to keep copies of sent request
messages since the reply shows what was searched.  In Gnus that
can be done with some code in `gnus-message-archive-group'

  (setq gnus-message-archive-group
        '((if (equal (message-fetch-field \"To\")
                     \"superseeker@oeis.org\")
              nil
            \"sent\")))

\(`gnus-posting-styles' can't do the same since the headers are
not yet in the buffer.  There's a dynamic binding of the `to'
variable from `compose-mail', but that's not a documented
feature.)

\(fn)" t nil)

(autoload 'oeis-grep "oeis" "\
Grep the ~/OEIS/stripped file for a number sequence.
Interactively the default is a list of numbers at point or the
digits of a decimal number at point.  The usual `\\<minibuffer-local-map>\\[next-history-element]' switches
to this in the minibuffer if minor editing is needed.

Exactly how this grep works is highly experimental.  Currently if
you have Perl module Math::OEIS::Grep then that's used, otherwise
a plain `grep'.  Math::OEIS::Grep is best as it tries a few
variations on the values if no exact match.

This grep can be used when offline.  If online then the OEIS web
site search (`oeis-search') might give either the same or more or
less results (and occasionally a very big list of results).  See
`oeis-superseeker-mail' for a super search if plain search is
unrevealing.

\(fn STR)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; oeis-autoloads.el ends here

Paper is a  little, minimal emacs theme that is  meant to be simple
and consistent.

It  was first  intended  to resemble  the look  of  paper, but  has
diverged from  that objective.   Still, though,  I keep  calling it
Paper, as I like that name.

Paper  uses a  small colour  palette  over all  the elements.   Org
headings  are  specially  treated  with a  palette  of  equidistant
colours.  The colours  and heading font sizes  are calculated using
base and factor values which can be edited.  See source.

It's most adapted for ELisp-Org users, as I'm one such user, though
it  works fine  with Markdown,  Textile, Python,  JavaScript, Html,
Diff, Magit, etc.

The following snippet will modify org-level-* faces so that initial
stars in  org headings are  hidden and  a Sans-serif font  is used.
Because  the combination  of heading  font sizes  and colours  make
levels  obvious, it  may be  considered superfluous  to have  stars
indicating depth:

  (setq org-hide-leading-stars nil)
  (set-face-attribute
   'org-hide nil
   :height 0.1 :weight 'light :width 'extracondensed)
  (dolist (face org-level-faces)
    (set-face-attribute
     face nil
     :family "Sans Serif"))

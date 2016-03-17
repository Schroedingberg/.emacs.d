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

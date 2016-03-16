;;; gh-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "gh-api" "gh-api.el" (22242 49888 500255 223000))
;;; Generated autoloads from gh-api.el

(require 'eieio)

(eieio-defclass-autoload 'gh-api 'nil "gh-api" "Github API")

(eieio-defclass-autoload 'gh-api-v3 '(gh-api) "gh-api" "Github API v3")

;;;***

;;;### (autoloads nil "gh-auth" "gh-auth.el" (22242 49888 848255
;;;;;;  236000))
;;; Generated autoloads from gh-auth.el

(require 'eieio)

(eieio-defclass-autoload 'gh-authenticator 'nil "gh-auth" "Abstract authenticator")

(eieio-defclass-autoload 'gh-password-authenticator '(gh-authenticator) "gh-auth" "Password-based authenticator")

(eieio-defclass-autoload 'gh-oauth-authenticator '(gh-authenticator) "gh-auth" "Oauth-based authenticator")

;;;***

;;;### (autoloads nil "gh-cache" "gh-cache.el" (22242 49888 696255
;;;;;;  231000))
;;; Generated autoloads from gh-cache.el

(require 'eieio)

;;;***

;;;### (autoloads nil "gh-common" "gh-common.el" (22242 49888 576255
;;;;;;  226000))
;;; Generated autoloads from gh-common.el

(require 'eieio)

;;;***

;;;### (autoloads nil "gh-gist" "gh-gist.el" (22242 49888 440255
;;;;;;  221000))
;;; Generated autoloads from gh-gist.el

(require 'eieio)

(eieio-defclass-autoload 'gh-gist-api '(gh-api-v3) "gh-gist" "Gist API")

(eieio-defclass-autoload 'gh-gist-gist-stub '(gh-object) "gh-gist" "Class for user-created gist objects")

(eieio-defclass-autoload 'gh-gist-gist '(gh-gist-gist-stub) "gh-gist" "Gist object")

;;;***

;;;### (autoloads nil "gh-issue-comments" "gh-issue-comments.el"
;;;;;;  (22242 49888 628255 228000))
;;; Generated autoloads from gh-issue-comments.el

(require 'eieio)

;;;***

;;;### (autoloads nil "gh-issues" "gh-issues.el" (22242 49888 728255
;;;;;;  232000))
;;; Generated autoloads from gh-issues.el

(require 'eieio)

;;;***

;;;### (autoloads nil "gh-oauth" "gh-oauth.el" (22242 49888 408255
;;;;;;  220000))
;;; Generated autoloads from gh-oauth.el

(require 'eieio)

(eieio-defclass-autoload 'gh-oauth-api '(gh-api-v3) "gh-oauth" "OAuth API")

;;;***

;;;### (autoloads nil "gh-orgs" "gh-orgs.el" (22242 49888 600255
;;;;;;  227000))
;;; Generated autoloads from gh-orgs.el

(require 'eieio)

(eieio-defclass-autoload 'gh-orgs-api '(gh-api-v3) "gh-orgs" "Orgs API")

(eieio-defclass-autoload 'gh-orgs-org-stub '(gh-object) "gh-orgs" nil)

;;;***

;;;### (autoloads nil "gh-pull-comments" "gh-pull-comments.el" (22242
;;;;;;  49888 804255 235000))
;;; Generated autoloads from gh-pull-comments.el

(require 'eieio)

;;;***

;;;### (autoloads nil "gh-pulls" "gh-pulls.el" (22242 49888 764255
;;;;;;  233000))
;;; Generated autoloads from gh-pulls.el

(require 'eieio)

(eieio-defclass-autoload 'gh-pulls-api '(gh-api-v3) "gh-pulls" "Git pull requests API")

(eieio-defclass-autoload 'gh-pulls-request '(gh-pulls-request-stub) "gh-pulls" "Git pull requests API")

;;;***

;;;### (autoloads nil "gh-repos" "gh-repos.el" (22242 49888 664255
;;;;;;  229000))
;;; Generated autoloads from gh-repos.el

(require 'eieio)

(eieio-defclass-autoload 'gh-repos-api '(gh-api-v3) "gh-repos" "Repos API")

(eieio-defclass-autoload 'gh-repos-repo-stub '(gh-object) "gh-repos" "Class for user-created repository objects")

(eieio-defclass-autoload 'gh-repos-repo '(gh-repos-repo-stub) "gh-repos" "Class for GitHub repositories")

;;;***

;;;### (autoloads nil "gh-url" "gh-url.el" (22242 49888 324255 217000))
;;; Generated autoloads from gh-url.el

(require 'eieio)

;;;***

;;;### (autoloads nil "gh-users" "gh-users.el" (22242 49888 552255
;;;;;;  225000))
;;; Generated autoloads from gh-users.el

(require 'eieio)

(eieio-defclass-autoload 'gh-users-api '(gh-api-v3) "gh-users" "Users API")

(eieio-defclass-autoload 'gh-users-user '(gh-user) "gh-users" nil)

;;;***

;;;### (autoloads nil nil ("gh-pkg.el" "gh-profile.el" "gh.el") (22242
;;;;;;  49888 926277 109000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; gh-autoloads.el ends here

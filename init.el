(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer
;; (defconst *is-a-mac* (eq system-type 'darwin))

;;----------------------------------------------------------------------------
;; Bootstrap config
;;----------------------------------------------------------------------------
(require 'init-elpa)
(require 'init-misc)
(require 'init-helm)
(require 'init-company)
(require 'init-google-c-style)
(require 'init-xcscope)
(require 'init-whitespace)
(require 'init-highlight-chars)
(require 'init-highlight-symbol)
(require 'init-nyan-mode)
(require 'init-switch-window)
(require 'init-git)


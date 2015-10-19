(let ((minver "23.3"))
  (when (version<= emacs-version "23.1")
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))
(when (version<= emacs-version "24")
  (message "Your Emacs is old, and some functionality in this config will be disabled. Please upgrade if possible."))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer
(defconst *is-a-mac* (eq system-type 'darwin))

;;----------------------------------------------------------------------------
;; Bootstrap config
;;----------------------------------------------------------------------------
;; keep customize settings in their own file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(require 'init-elpa)

;; Extra packages which do not require any configuration
(if *is-a-mac*
    (progn
      (require-package 'osx-location)
      (setq mac-option-modifier nil
           mac-command-modifier 'meta
           x-select-enable-clipboard t))
  (progn
    ;; (require 'init-spaceline)
    ;; (require 'init-airline)  ;; require powerline patched font
    (require 'init-sml)
    )
  )

;; minor customizations
(require 'init-misc)
(require 'init-google-c-style)
;; (require 'init-smartparens)
(require 'init-git)
(require 'init-switch-window)
(when (display-graphic-p)
  (require 'init-nyan-mode)
  ;; color-theme
  (require 'init-color-theme)
)

;; trailing-whitespace
(require 'init-whitespace)
(require 'init-highlight-chars)
(require 'init-highlight-symbol)

;; 3 minor modes for the perfect indent
(require 'init-clean-aindent-mode)
(require 'init-dtrt-indent)
(require 'init-ws-butler)

;;
(require 'init-iedit)

;; all helm related stuffs
(require 'init-xcscope)
(require 'init-irony)
;; ------------------------------------------------------------------------
;; (require 'init-company)
;; (require 'init-company-irony)
;; (require 'init-company-irony-c-headers)
;; ------------------------------------------------------------------------
(require 'init-ac)
(require 'init-ac-dabbrev)
;; (require 'init-ac-irony) is not available in elpa
;; (require 'init-ac-clang)) todo: clang-server binary not found
(require 'init-yasnippet)



(require 'init-flx)
(unless (version< emacs-version "24.4")
  (require 'init-helm-flx)  ;; load this before loading helm  
  )
(require 'init-helm)




;;-------------------------------------------------------------------------
;; init.el ends here
;;-------------------------------------------------------------------------

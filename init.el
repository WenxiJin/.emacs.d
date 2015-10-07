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

;; all helm related stuffs
(require 'init-xcscope)
(require 'init-company)
(require 'init-helm)
;; (require 'init-function-args)




;;-------------------------------------------------------------------------
;; init.el ends here
;;-------------------------------------------------------------------------

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
  )

;; minor customizations
(require 'init-misc)
;; (require 'init-google-c-style)
(require 'google-coding-style)
(require 'init-smartparens)
(require 'init-rainbow-delimiters)
(require 'init-git)

;; trailing-whitespace
(require 'init-whitespace)
;; (require 'init-highlight-chars)  ;; conflict with helm highlight
(require 'init-highlight-symbol)
(require 'init-highlight-numbers)
(require 'init-highlight-current-line)
;; (require 'init-highlight-indentation)
;; (require 'init-diff-hl)

;; 3 minor modes for the perfect indent
(require 'init-clean-aindent-mode)
(require 'init-dtrt-indent)
(require 'init-ws-butler)

(require 'init-iedit)
(require 'init-multiple-cursors)
(require 'init-undo-tree)
(require 'init-which-key)
(require 'init-avy)

;; (require 'init-irony)
(require 'init-yasnippet)  ;; should be loaded before ac
;; ------------------------------------------------------------------------
;; (require 'init-company)
;; (require 'init-company-statistics)
;; (require 'init-company-irony)
;; (require 'init-company-irony-c-headers)
;; ------------------------------------------------------------------------
(require 'init-ac)
(require 'init-ac-dabbrev)
;; (when (executable-find "clang-server")
;;   (message "Found clang-server")
;;   (require 'init-ac-clang))

;; ------------------------------------------------------------------------
(require 'init-xcscope)  ;; Conflict against ac-clang

(unless (version< emacs-version "24.4")
  (progn
    (require 'init-flx)
    (require 'init-helm-flx)  ;; load this before loading helm
    ))

(require 'init-helm)
(require 'init-helm-projectile)
(require 'init-helm-swoop)
(require 'init-helm-themes)
;; (require 'init-helm-cscope)
(require 'init-helm-ag)
(require 'init-helm-gtags)

;; git-version >= 1.9.4
(require 'init-magit)
;; (require 'init-helm-ls-git)

;; gccsense - built-in gcc/g++ 4.4, not for cross-compile
;; (require 'init-gccsense)

(require 'init-cmake-mode)
;; enable narrow-to region feature
(put 'narrow-to-region 'disabled nil)

(require 'init-ace-window)
(require 'init-org)

(require 'init-markdown)
(require 'init-adoc-mode)
(require 'init-web-mode)

(if (display-graphic-p)
    (progn
      (require 'init-nyan-mode)
      )
  (progn
    ;; (require 'init-spaceline)
    (require 'init-airline)  ;; require powerline patched font
    ;; (require 'init-solarized)
    ;; (require 'init-sml)
    )
  )

;; load color-theme at last, so that spacemacs-theme could overwrite any face
;; attribute
;; (require 'init-sublime-themes)
;; (require 'init-spacemacs-theme)
(require 'init-atom-one-dark-theme)

(require 'init-rebox2)
(require 'init-expand-region)
;; Group: File -> vlf
(require 'init-vlf)
;; Group: Environment -> Windows -> Golden Ratio
(require 'init-golden-ratio)
;; Group: Help -> Info+
(require 'init-info+)
;; Group: Help -> Rainbow
(require 'init-rainbow)
;; Group: Convenience -> Workgroups2
(require 'init-workgroups2)  ;; Remember to put this line at the bottom of init.el
;; after everything is properly initialized

;; (require 'init-function-args)

;; TODO - Group all the modules
;; (require 'setup-applications)
;; (require 'setup-communication)
;; (require 'setup-convenience)
;; (require 'setup-data)
;; (require 'setup-development)
;; (require 'setup-editing)
;; (require 'setup-environment)
;; (require 'setup-external)
;; (require 'setup-faces-and-ui)
;; (require 'setup-files)
;; (require 'setup-help)
;; (require 'setup-programming)
;; (require 'setup-text)
;; (require 'setup-local)



;;-------------------------------------------------------------------------
;; init.el ends here
;;-------------------------------------------------------------------------


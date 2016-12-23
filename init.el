
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

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
(require 'init-flycheck)
(require 'init-smartparens)
(require 'init-rainbow-delimiters)
(require 'init-git)

;; trailing-whitespace
(require 'init-whitespace)
;; (require 'init-highlight-chars)  ;; conflict with helm highlight
(require 'init-highlight-symbol)
(require 'init-hl-line)
;; (require 'init-highlight-indentation)
;; (require 'init-diff-hl)

;; 3 minor modes for the perfect indent
(require 'init-clean-aindent-mode)
(require 'init-dtrt-indent)
(require 'init-ws-butler)

(require 'init-iedit)
;; (require 'init-multiple-cursors)
(require 'init-undo-tree)
;; (require 'init-which-key)
;; (require 'init-avy)

(require 'init-yasnippet)  ;; should be loaded before ac
;; ------------------------------------------------------------------------
;; company-clang does a very decent job
(require 'init-company)
(require 'init-company-statistics)
;; (require 'init-irony)
;; (require 'init-company-irony)
;; (require 'init-company-irony-c-headers)
;; ------------------------------------------------------------------------
;; (require 'init-ac)
;; (require 'init-ac-dabbrev)
;; ac-clang is not under active development, hard to compile llvm, clang and
;; clang-server
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
;; (require 'init-helm-themes)
;; (require 'init-helm-cscope)
(require 'init-helm-ag)
(require 'init-helm-gtags)

;; git-version >= 1.9.4
(unless (version< emacs-version "24.4")
  (progn
    (require 'init-magit)
    ))
;; (require 'init-helm-ls-git)

;; gccsense - built-in gcc/g++ 4.4, not for cross-compile
;; (require 'init-gccsense)

(require 'init-ace-window)

;; (require 'init-cmake-mode)
(require 'init-org)
;; (require 'init-markdown)
;; (require 'init-adoc-mode)
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
(require 'init-spacemacs-theme)
;; (require 'init-atom-one-dark-theme)

;; An interface to the Eclipse IDE, currently only enabled for java-mode
;; eclim is relatively slow, prefer helm-gtags for auto-complete and code navigation
;; (require 'init-emacs-eclim)

;; (require 'init-rebox2)
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
;; (require 'init-workgroups2)  ;; Remember to put this line at the bottom of init.el
;; after everything is properly initialized


;;-------------------------------------------------------------------------
;; init.el ends here
;;-------------------------------------------------------------------------


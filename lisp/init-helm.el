;; helm
(require-package 'helm) ;; install helm
(require-package 'helm-core)
(require-package 'helm-projectile)
(require-package 'helm-gtags)
(require-package 'helm-swoop)
(require-package 'helm-company)
(require-package 'helm-cscope)

(require 'helm)
(require 'helm-config)

;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(when (executable-find "curl")
  (setq helm-google-suggest-use-curl-p t))

(setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
      helm-ff-file-name-history-use-recentf t)

(helm-mode 1)
(helm-autoresize-mode t)
(global-set-key (kbd "M-x") 'helm-M-x)
(setq helm-M-x-fuzzy-match t) ;; optional fuzzy matching for helm-M-x
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x C-g") 'helm-do-grep)
(when (executable-find "ack-grep")
  (setq helm-grep-default-command "ack-grep -Hn --no-group --no-color %e %p %f"
        helm-grep-default-recurse-command "ack-grep -H --no-group --no-color %e %p %f"))
(setq helm-semantic-fuzzy-match t
      helm-imenu-fuzzy-match    t)
(add-to-list 'helm-sources-using-default-as-input 'helm-source-man-pages)
(setq helm-locate-fuzzy-match t)
(global-set-key (kbd "C-c h o") 'helm-occur)
(setq helm-apropos-fuzzy-match t)
(setq helm-lisp-fuzzy-completion t)
(global-set-key (kbd "C-h SPC") 'helm-all-mark-rings)
(global-set-key (kbd "C-c h x") 'helm-register)

;; helm-projectile
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)
(setq projectile-indexing-method 'alien)
(setq projectile-switch-project-action 'helm-projectile-find-file)
(setq projectile-switch-project-action 'helm-projectile)
(setq projectile-enable-caching t)
(setq projectile-file-exists-remote-cache-expire (* 10 60))
(setq projectile-file-exists-local-cache-expire (* 5 60))
(add-to-list 'projectile-globally-ignored-directories "backup")

;; helm-swoop
(require 'helm-swoop)
(global-set-key (kbd "M-i") 'helm-swoop)
(global-set-key (kbd "M-I") 'helm-swoop-back-to-last-point)
(global-set-key (kbd "C-c M-i") 'helm-multi-swoop)
(global-set-key (kbd "C-x M-i") 'helm-multi-swoop-all)
(define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch)
(define-key helm-swoop-map (kbd "M-i") 'helm-multi-swoop-all-from-helm-swoop)
(setq helm-multi-swoop-edit-save t)
(setq helm-swoop-split-with-multiple-windows nil)
(setq helm-swoop-split-direction 'split-window-vertically)
;; split-window-horizontally
;; (setq helm-swoop-speed-or-color nil)
(setq helm-swoop-move-to-line-cycle t)
(setq helm-swoop-use-line-number-face t)

;; helm-cscope
;; Enable helm-cscope-mode
(add-hook 'c-mode-hook 'helm-cscope-mode)
(add-hook 'c++-mode-hook 'helm-cscope-mode)
;; Set key bindings--define-key
(eval-after-load "helm-cscope"
  '(progn
     (define-key helm-cscope-mode-map (kbd "M-t") 'helm-cscope-find-this-symbol)
     (define-key helm-cscope-mode-map (kbd "M-r") 'helm-cscope-find-global-definition)
     (define-key helm-cscope-mode-map (kbd "M-g M-c") 'helm-cscope-find-called-function)
     (define-key helm-cscope-mode-map (kbd "M-g M-p") 'helm-cscope-find-calling-this-funtcion)
     (define-key helm-cscope-mode-map (kbd "M-s") 'helm-cscope-select)))


(provide 'init-helm)


;; no startup screen
(setq inhibit-splash-screen t)

;; revert buffer
(global-auto-revert-mode 1)
(global-set-key (kbd "C-c r") 'revert-buffer)

;; line-number-mode, column-number-mode
(setq line-number-mode t)
(setq column-number-mode t)

;; go to beginning-of-buffer
;; (global-set-key (kbd "C-c a") 'beginning-of-buffer)

;; goto end-of-buffer
;; (global-set-key (kbd "C-c e") 'end-of-buffer)

;; Compile
(require 'compile)
(setq compilation-ask-about-save nil          ; Just save before compiling
      compilation-always-kill t               ; Just kill old compile processes before starting the new one
      compilation-scroll-output 'first-error) ; Automatically scroll to first
(global-set-key (kbd "<f7>") 'compile)
(setq compile-command "make -C build/ -j8")

;; Kill-compilation
(global-set-key (kbd "<f8>") 'kill-compilation)


;; stop creating backup~ files
(setq make-backup-files nil)
;; stop creating #autosave# files
(setq auto-save-default nil)
;; confirm before killing emacs
(setq confirm-kill-emacs 'y-or-n-p)
;; set the default width of fill-column
(setq-default fill-column 80)

(provide 'init-misc)

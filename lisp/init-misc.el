;; no startup screen
(setq inhibit-splash-screen t)

;; revert buffer
(global-set-key (kbd "C-c r") 'revert-buffer)

;; line-number-mode, column-number-mode
(setq line-number-mode t)
(setq column-number-mode t)
;; show-paren-mode
(show-paren-mode 1)
(setq show-paren-delay 0)

;; goto line
(global-set-key (kbd "C-c l") 'goto-line)

;; go to beginning-of-buffer
(global-set-key (kbd "C-c a") 'beginning-of-buffer)

;; goto end-of-buffer
(global-set-key (kbd "C-c e") 'end-of-buffer)

;; Compile
(global-set-key (kbd "<f7>") 'compile)
(setq compile-command "make -C build/ -j8")
(setq compilation-scroll-output t)
;; Kill-compilation
(global-set-key (kbd "<f8>") 'kill-compilation)



(provide 'init-misc)

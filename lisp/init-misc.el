;; no startup screen
(setq inhibit-splash-screen t)

;; revert buffer
(global-set-key (kbd "C-c r") 'revert-buffer)

;; line-number-mode, column-number-mode
(setq line-number-mode t)
(setq column-number-mode t)

;; goto line
(global-set-key (kbd "C-c l") 'goto-line)

;; go to beginning-of-buffer
(global-set-key (kbd "C-c a") 'beginning-of-buffer)

;; goto end-of-buffer
(global-set-key (kbd "C-c e") 'end-of-buffer)

;; Compile
(global-set-key (kbd "<f7>") 'compile)
(setq compile-command "make -j8")
(setq compilation-scroll-output t)
;; Kill-compilation
(global-set-key (kbd "<f8>") 'kill-compilation)




(provide 'init-misc)

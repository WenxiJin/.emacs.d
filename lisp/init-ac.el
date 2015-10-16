(require-package 'auto-complete)
(require-package 'ac-c-headers)

(require 'auto-complete)
(require 'auto-complete-config)
;; use default config
(ac-config-default)
(setq ac-auto-start 4)
;; (define-key ac-completing-map "\t" 'ac-complete)
;; (define-key ac-completing-map "\r" nil)

(defun my:ac-c-headers-init ()
  (require 'ac-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-header-symbols t)
  (add-to-list 'achead:include-directories '"/usr/include/c++/4.8")
  (add-to-list 'achead:include-directories '"/usr/include/x86_64-linux-gnu/c++/4.8")
  (add-to-list 'achead:include-directories '"/usr/include/c++/4.8/backward")
)
(add-hook 'c++-mode-hook 'my:ac-c-headers-init)
(add-hook 'c-mode-hook 'my:ac-c-headers-init)


;; Exclude very large buffers from dabbrev
(defun my:dabbrev-friend-buffer (other-buffer)
  (< (buffer-size other-buffer) (* 1 1024 1024)))
(setq dabbrev-friend-buffer-function 'my:dabbrev-friend-buffer)

(provide 'init-ac)

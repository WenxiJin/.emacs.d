(require-package 'auto-complete)
(require-package 'ac-c-headers)

(require 'auto-complete)
(require 'auto-complete-config)
;; use default config
(ac-config-default)
(setq ac-auto-start 4
      ac-delay 0.2
      ac-quick-help-delay 1.
      ac-use-fuzzy t
      ac-fuzzy-enable t)

;;; set the trigger key so that it can work together with yasnippet on tab key,
;;; if the word exists in yasnippet, pressing tab will cause yasnippet to
;;; activate, otherwise, auto-complete will
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")


(defun my:ac-c-headers-init ()
  (require 'ac-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-header-symbols t)
  ;; gcc -xc++ -E -v
  (add-to-list 'achead:include-directories '"/usr/include")
  (add-to-list 'achead:include-directories '"/usr/local/include")
  (add-to-list 'achead:include-directories '"/usr/include/x86_64-linux-gnu")
)
(add-hook 'c++-mode-hook 'my:ac-c-headers-init)
(add-hook 'c-mode-hook 'my:ac-c-headers-init)


;; Exclude very large buffers from dabbrev
(defun my:dabbrev-friend-buffer (other-buffer)
  (< (buffer-size other-buffer) (* 1 1024 1024)))
(setq dabbrev-friend-buffer-function 'my:dabbrev-friend-buffer)

(provide 'init-ac)

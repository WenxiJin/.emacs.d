(require-package 'auto-complete)
(require-package 'ac-c-headers)

(require 'auto-complete)
(require 'auto-complete-config)
;; use default config
(ac-config-default)
(setq ac-auto-start 4)
(setq ac-candidate-limit 100)
(setq ac-menu-height 20)

;;; set the trigger key so that it can work together with yasnippet on tab key,
;;; if the word exists in yasnippet, pressing tab will cause yasnippet to
;;; activate, otherwise, auto-complete will
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")


;; Exclude very large buffers from dabbrev
(defun my:dabbrev-friend-buffer (other-buffer)
  (< (buffer-size other-buffer) (* 1 1024 1024)))
(setq dabbrev-friend-buffer-function 'my:dabbrev-friend-buffer)

;; ;; turn on semantic
;; (semantic-mode 1)
;; (defun my:add-semantic-to-autocomplete()
;;   (add-to-list 'ac-sources 'ac-source-semantic)
;;   )
;; (add-hook 'c-mode-common-hook 'my:add-semantic-to-autocomplete)
;; ; turn on automatic reparsing of open buffers in semantic
;; (global-semantic-idle-scheduler-mode 1)


(provide 'init-ac)

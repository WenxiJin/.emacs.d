(require-package 'ace-window)

(require 'ace-window)
(global-set-key (kbd "M-p") 'ace-window)

(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))

;; (setq aw-background nil)

(provide 'init-ace-window)

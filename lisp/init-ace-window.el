(require-package 'ace-window)

(use-package ace-window
  :defer t
  :init
  (global-set-key (kbd "M-p") 'ace-window)
  :config
  (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
  )
;; (setq aw-background nil)


(provide 'init-ace-window)

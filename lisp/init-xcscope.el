(require-package 'xcscope)

(use-package xcscope
  :defer t
  :config
  (setq cscope-do-not-update-database t)
  )


(provide 'init-xcscope)

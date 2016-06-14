(require-package 'company-statistics)

(use-package company-statistics
  :defer t
  :config
  (add-hook 'after-init-hook 'company-statistics-mode)
  )


(provide 'init-company-statistics)

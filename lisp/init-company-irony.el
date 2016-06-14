(require-package 'company-irony)

(use-package company-irony
  :defer t
  :config
  (add-to-list 'company-backends 'company-irony)
  )


(provide 'init-company-irony)

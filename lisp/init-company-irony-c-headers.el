(require-package 'company-irony-c-headers)

(use-package company-irony-c-headers
  :defer t
  :config
  (add-to-list 'company-backends 'company-irony-c-headers)
  )


(provide 'init-company-irony-c-headers)

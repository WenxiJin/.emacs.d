(require-package 'adoc-mode)

(use-package adoc-mode
  :defer t
  :config
  (add-to-list 'auto-mode-alist (cons "\\.adoc\\'" 'adoc-mode))
  )


(provide 'init-adoc-mode)

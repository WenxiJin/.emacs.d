(require-package 'highlight-symbol)

(use-package highlight-symbol
  :defer t
  :init
  (setq highlight-symbol-on-navigation-p t)
  (global-set-key [f9] 'highlight-symbol)
  (global-set-key (kbd "<f5>") 'highlight-symbol-next)
  (global-set-key (kbd "<f6>") 'highlight-symbol-prev)
  (global-set-key [(meta f9)] 'highlight-symbol-query-replace)

  :config
  (add-hook 'prog-mode-hook (lambda () (highlight-symbol-mode)))
  )


(provide 'init-highlight-symbol)

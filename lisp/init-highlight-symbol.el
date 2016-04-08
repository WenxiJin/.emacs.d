(require-package 'highlight-symbol)

(require 'highlight-symbol)
(add-hook 'prog-mode-hook (lambda () (highlight-symbol-mode)))
(setq highlight-symbol-on-navigation-p t)
(global-set-key [f9] 'highlight-symbol)
(global-set-key (kbd "M-<down>") 'highlight-symbol-next)
(global-set-key (kbd "M-<up>") 'highlight-symbol-prev)
(global-set-key [(meta f9)] 'highlight-symbol-query-replace)

(provide 'init-highlight-symbol)

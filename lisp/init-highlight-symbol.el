(require-package 'highlight-symbol)

(require 'highlight-symbol)
(add-hook 'prog-mode-hook (lambda () (highlight-symbol-mode)))
(setq highlight-symbol-on-navigation-p t)
(global-set-key [(control f9)] 'highlight-symbol)
(global-set-key [f9] 'highlight-symbol-next)
(global-set-key [f10] 'highlight-symbol-prev)
(global-set-key [(meta f9)] 'highlight-symbol-query-replace)

(provide 'init-highlight-symbol)

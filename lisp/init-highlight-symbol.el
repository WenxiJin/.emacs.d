(require-package 'highlight-symbol)

(require 'highlight-symbol)
(add-hook 'prog-mode-hook (lambda () (highlight-symbol-mode)))
(setq highlight-symbol-on-navigation-p t)

(provide 'init-highlight-symbol)

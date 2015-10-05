(require-package 'highlight-symbol)

(require 'highlight-symbol)
(add-hook 'prog-mode-hook (lambda () (highlight-symbol-mode)))
(setq highlight-symbol-on-navigation-p t)
;; (global-set-key [(control f9)] 'highlight-symbol)
(global-set-key [f5] 'highlight-symbol-next)
(global-set-key [f6] 'highlight-symbol-prev)
;; (global-set-key [(meta f9)] 'highlight-symbol-query-replace)

(provide 'init-highlight-symbol)

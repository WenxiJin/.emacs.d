(require-package 'flycheck)

(require 'flycheck)

;; (global-flycheck-mode)
(add-hook 'python-mode-hook 'flycheck-mode)


(provide 'init-flycheck)

(require-package 'iedit)

(require 'iedit)
;; change default key bindings
(defvar my-iedit-toggle-key (kbd "C-x i"))
(define-key global-map my-iedit-toggle-key 'iedit-mode)
(define-key isearch-mode-map my-iedit-toggle-key 'iedit-mode-from-isearch)
(define-key esc-map my-iedit-toggle-key 'iedit-execute-last-modification)
(define-key help-map my-iedit-toggle-key 'iedit-mode-toggle-on-function)

(provide 'init-iedit)


(require-package 'iedit)

;; (require 'iedit)
;; ;; change default key bindings
;; (defvar my-iedit-toggle-key (kbd "C-x i"))
;; (define-key global-map my-iedit-toggle-key 'iedit-mode)
;; (define-key isearch-mode-map my-iedit-toggle-key 'iedit-mode-from-isearch)
;; (define-key esc-map my-iedit-toggle-key 'iedit-execute-last-modification)
;; (define-key help-map my-iedit-toggle-key 'iedit-mode-toggle-on-function)

(use-package iedit
             :bind (
                    ("C-x i" . iedit-mode)
                    :map isearch-mode-map
                    ("C-x i" . iedit-mode-from-isearch)
                    :map esc-map
                    ("C-x i" . iedit-execute-last-modification)
                    :map help-map
                    ("C-x i" . iedit-mode-toggle-on-function)
                    )
             )

(provide 'init-iedit)


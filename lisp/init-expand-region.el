(require-package 'expand-region)

(use-package expand-region
             :defer t
             :bind (
                    ("C-c =" . er/expand-region)
                    ;; er/contract-region if you expand too far
                    )
             :config
             ;; replace the marking region
             (pending-delete-mode t)
             )


(provide 'init-expand-region)

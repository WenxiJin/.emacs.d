(require-package 'expand-region)

(require 'expand-region)
(global-set-key (kbd "C-c +") 'er/expand-region)
;; er/contract-region if you expand too far

;; replace the marking region
(pending-delete-mode t)

(provide 'init-expand-region)

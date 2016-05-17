(require-package 'expand-region)

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)
;; er/contract-region if you expand too far


(provide 'init-expand-region)

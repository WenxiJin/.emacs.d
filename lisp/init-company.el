;;; init-company -- company configuration
;;; Commentary:
;;; Code:
(require-package 'company)

(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-minimum-prefix-length 3)
(global-set-key (kbd "M-p") 'company-complete)

(provide 'init-company)

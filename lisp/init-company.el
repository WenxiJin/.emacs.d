;;; init-company -- company configuration
;;; Commentary:
;;; Code:
(require-package 'company)
(require-package 'company-c-headers)

(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-idle-delay 0.3)
(setq company-minimum-prefix-length 3)

(provide 'init-company)
;;; init-company.el ends here

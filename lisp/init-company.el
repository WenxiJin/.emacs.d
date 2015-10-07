;;; init-company -- company configuration
;;; Commentary:
;;; Code:
(require-package 'company)
(require-package 'company-c-headers)

(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-minimum-prefix-length 3)

(require 'cc-mode)
(require 'semantic)
(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)
(semantic-mode 1)

(provide 'init-company)
;;; init-company.el ends here

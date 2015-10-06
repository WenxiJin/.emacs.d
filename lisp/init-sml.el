(require-package 'smart-mode-line)

(require 'smart-mode-line)

(setq sml/theme 'dark)
;; (setq sml/theme 'light)
;; (setq sml/theme 'respectful)

(setq sml/no-confirm-load-theme t)  ;; workaround
(sml/setup)




(provide 'init-sml)

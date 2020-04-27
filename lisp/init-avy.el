(require-package 'avy)

(require 'avy)
(avy-setup-default)
(global-set-key (kbd "C-c j j") 'avy-goto-char)

(provide 'init-avy)

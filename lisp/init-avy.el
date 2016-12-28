(require-package 'avy)

(require 'avy)
(global-set-key (kbd "C-x j j") 'avy-goto-char)
(avy-setup-default)


(provide 'init-avy)

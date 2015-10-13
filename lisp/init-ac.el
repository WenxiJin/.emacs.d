(require-package 'auto-complete)
(require-package 'ac-c-headers)

(require 'auto-complete-config)
(ac-config-default)

(defun my:ac-c-headers-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-sources-c-headers))

(add-hook 'c++-mode-hook 'my:ac-c-headers-init)
(add-hook 'c-mode-hook 'my:ac-c-headers-init)


(provide 'init-ac)

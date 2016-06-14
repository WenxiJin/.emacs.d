(require-package 'smartparens)

(use-package smartparens
  :defer t
  :config
  (defun my-smartparens-mode-hook ()
    (require 'smartparens-config)
    (show-smartparens-global-mode t))

  (add-hook 'prog-mode-hook 'my-smartparens-mode-hook)
  )


(provide 'init-smartparens)

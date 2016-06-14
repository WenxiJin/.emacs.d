(require-package 'ws-butler)

(use-package ws-butler
  :defer t
  :config
  (add-hook 'c-mode-common-hook 'ws-butler-mode)  
  )


(provide 'init-ws-butler)

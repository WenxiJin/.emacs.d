(require-package 'rainbow-delimiters)

(use-package rainbow-delimiters
  :defer t
  :config
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
  )


(provide 'init-rainbow-delimiters)

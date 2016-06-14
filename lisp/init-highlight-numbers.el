(require-package 'highlight-numbers)

(use-package highlight-numbers
  :defer t
  :config
  (add-hook 'prog-mode-hook 'highlight-numbers-mode)
  )


(provide 'init-highlight-numbers)


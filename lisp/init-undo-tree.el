(require-package 'undo-tree)

(use-package undo-tree
  :defer t
  :config
  (global-undo-tree-mode)
  )


(provide 'init-undo-tree)

(require-package 'org)

(use-package org
  :defer t
  :init
  (global-set-key "\C-cl" 'org-store-link)
  (global-set-key "\C-ca" 'org-agenda)

  :config
  (add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
  (setq org-log-done 'time)
  (setq org-todo-keywords
        '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))  
  )


(provide 'init-org)

(require-package 'company-irony)

(require 'company-irony)
(eval-after-load 'company
  '(progn
     (add-to-list 'company-backends 'company-irony)
     ))

(provide 'init-company-irony)

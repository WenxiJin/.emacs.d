(require-package 'company-irony-c-headers)

(require 'company-irony-c-headers)
;; Load with `irony-mode` as a grouped backend
;; (eval-after-load 'company
;;   '(add-to-list
;;     'company-backends '(company-irony-c-headers company-irony)))

(eval-after-load 'company
  '(progn
     (add-to-list 'company-backends 'company-irony-c-headers)
     ))

(provide 'init-company-irony-c-headers)

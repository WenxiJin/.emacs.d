(require-package 'google-c-style)

(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)
;; NOTE: overwrite c-basic-offset from 2 to 4
(defun my-c-mode-hook ()
  (setq c-basic-offset 4)
  (c-set-offset 'access-label '-)
  )
(add-hook 'c-mode-hook 'my-c-mode-hook)
(add-hook 'c++-mode-hook 'my-c-mode-hook)

(defun my-c++-mode-hook ()
  ;; namespace only in c++ mode
  (c-set-offset 'innamespace [2])
  )
(add-hook 'c++-mode-hook 'my-c++-mode-hook)


(provide 'init-google-c-style)

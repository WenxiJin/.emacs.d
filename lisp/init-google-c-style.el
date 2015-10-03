(require-package 'google-c-style)

(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)
;; NOTE: overwrite c-basic-offset from 2 to 4
(setq c-basic-offset 4)


(provide 'init-google-c-style)

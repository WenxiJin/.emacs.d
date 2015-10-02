(require-package 'google-c-style)

(load-library "google-coding-style")
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

(provide 'init-google-c-style)

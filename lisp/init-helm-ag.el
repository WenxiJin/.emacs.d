(require-package 'helm-ag)

(custom-set-variables
 '(helm-follow-mode-persistent t))

(custom-set-variables
 '(helm-ag-base-command "ag --nocolor --nogroup --ignore-case")
 '(helm-ag-command-option "--all-text")
 '(helm-ag-insert-at-point 'symbol)
 '(helm-ag-ignore-buffer-patterns '("\\.txt\\'" "\\.mkd\\'")))

(require 'helm-ag)

(provide 'init-helm-ag)


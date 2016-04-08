(require-package 'adoc-mode)

(autoload 'adoc-mode "adoc-mode" nil t)
(require 'adoc-mode)
(add-to-list 'auto-mode-alist (cons "\\.adoc\\'" 'adoc-mode))


(provide 'init-adoc-mode)

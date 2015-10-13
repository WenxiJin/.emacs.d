(require-package 'auto-complete)
(require-package 'ac-c-headers)

(require 'auto-complete-config)
(ac-config-default)

(add-hook 'c-mode-hook
	  (lambda ()
	    (add-to-list 'ac-sources 'ac-source-c-headers)
	    (add-to-list 'ac-sources 'ac-source-c-header-symbols t)))



(provide 'init-ac)

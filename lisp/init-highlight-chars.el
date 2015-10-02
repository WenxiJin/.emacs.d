(require-package 'highlight-chars)

(require 'highlight-chars)
;; (add-hook 'font-lock-mode-hook 'hc-highlight-tabs)
(add-hook 'change-major-mode-hook
	  (lambda ()
	    (add-hook 'font-lock-mode-hook
		      'hc-highlight-trailing-whitespace)))
(add-hook 'after-change-major-mode-hook
	  (lambda ()
	    (when (eq major-mode 'text-mode)
	      (remove-hook 'font-lock-mode-hook
                                'hc-highlight-trailing-whitespace)
	      (hc-dont-highlight-trailing-whitespace)))
	  'APPEND)


(provide 'init-highlight-chars)


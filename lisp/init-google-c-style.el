(require-package 'google-c-style)

(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

(defun my-c-mode-hook ()
  ;; NOTE: overwrite c-basic-offset from 2 to 4
  ;; (setq c-basic-offset 4)
  (c-set-offset 'access-label '-)
  (c-set-offset 'member-init-intro '+)
  (c-set-offset 'arglist-cont-nonempty '+)
  )
(add-hook 'c-mode-hook 'my-c-mode-hook)
(add-hook 'c++-mode-hook 'my-c-mode-hook)

(add-hook 'c++-mode-hook (lambda ()
			   (defun ywb-php-lineup-arglist-intro (langelem)
			     (save-excursion
			       (goto-char (cdr langelem))
			       (vector (+ (current-column) c-basic-offset))))
			   (defun ywb-php-lineup-arglist-close (langelem)
			     (save-excursion
			       (goto-char (cdr langelem))
			       (vector (current-column))))
			   (c-set-offset 'arglist-intro 'ywb-php-lineup-arglist-intro)
			   (c-set-offset 'arglist-close 'ywb-php-lineup-arglist-close)
			   ;; namespace only in c++
			   (c-set-offset 'innamespace [2])))


(provide 'init-google-c-style)

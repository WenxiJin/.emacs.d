(require-package 'rebox2)

(setq rebox-style-loop '(41 43))
(require 'rebox2)
(global-set-key [(meta q)] 'rebox-dwim)
(global-set-key [(shift meta q)] 'rebox-cycle)

(defun my-c++-setup ()
  (setq comment-start "/* "
	comment-end " */")
  (unless (memq 46 rebox-style-loop)
    (make-local-variable 'rebox-style-loop)
    (nconc rebox-style-loop '(46))))
(add-hook 'c++-mode-hook #'my-c++-setup)


(provide 'init-rebox2)

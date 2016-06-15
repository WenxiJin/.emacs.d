(use-package vc-git
  :init
  (add-to-list 'load-path "/usr/share/git/core/emacs/git")
  :config
  (defun my-git-mode-hook ()
    (defun vc-git-annotate-command (file buf &optional rev)
      (let ((name (file-relative-name file)))
        (vc-git-command buf 'async nil "blame" "--date=iso" rev "--" name)))
    (require 'git-blame)
    (require 'vc-git)
    )

  (add-hook 'prog-mode-hook 'my-git-mode-hook)
  )


(provide 'init-git)


(require-package 'git)
(require-package 'git-blame)

(use-package git
  :defer t
  :init
  (add-to-list 'load-path "/usr/share/git/core/emacs/git")
  :config
  (defun my-git-mode-hook ()
    (require git-blame)
    (require vc-git)
    (defun vc-git-annotate-command (file buf &optional rev)
      (let ((name (file-relative-name file)))
        (vc-git-command buf 'async nil "blame" "--date=iso" rev "--" name)))
    )

  (my-git-mode-hook)
  )


(provide 'init-git)


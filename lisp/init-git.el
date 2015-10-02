(require-package 'git)
(require-package 'git-blame)

(require 'git)
(require 'git-blame)
(require 'vc-git)

(add-to-list 'load-path "/usr/share/git-core/emacs/git")
(defun vc-git-annotate-command (file buf &optional rev)
  (let ((name (file-relative-name file)))
    (vc-git-command buf 'async nil "blame" "--date=iso" rev "--" name)))


(provide 'init-git)


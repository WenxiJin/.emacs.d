(require-package 'multiple-cursors)

(require 'multiple-cursors)
;;;; When you have an active region that spans multiple lines, the following
;;;; will add a cursor to each line:
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

;;;; When you want to add multiple cursors not based on continuous lines, but
;;;; based on keywords in the buffer, use:
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)


(provide 'init-multiple-cursors)

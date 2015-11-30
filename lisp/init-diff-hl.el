(require-package 'diff-hl)


(require 'diff-hl)
(setq diff-hl-side 'right)
(global-diff-hl-mode)
(unless (display-graphic-p)
  (setq diff-hl-side 'left)
  (diff-hl-margin-mode))


(provide 'init-diff-hl)

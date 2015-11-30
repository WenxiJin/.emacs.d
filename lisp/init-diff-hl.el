(require-package 'diff-hl)


(require 'diff-hl)
(add-hook 'prog-mode-hook 'turn-on-diff-hl-mode)
(add-hook 'vc-dir-mode-hook 'turn-on-diff-hl-mode)
(diff-hl-flydiff-mode 1)


(provide 'init-diff-hl)

(require-package 'whitespace)
(require 'whitespace)

;; (setq whitespace-line-column 80)  ;; limit line length (80, by default)
;; (setq whitespace-style '(face lines-tail))  ;; or (face lines) for the whole line, (lines-tail) for the tail.
;; (setq whitespace-style (quote (spaces tabs newline space-mark tab-mark newline-mark)))
(setq whitespace-style
      (quote (face trailing tab-mark lines-tail)))
;; (add-hook 'prog-mode-hook 'whitespace-mode)
;; (global-whitespace-mode t)


(provide 'init-whitespace)


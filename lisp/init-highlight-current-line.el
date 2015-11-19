(require-package 'highlight-current-line)

(require 'highlight-current-line)
;; enable globally
(highlight-current-line-on t)
;; change the background-color from wheat (by default) to black
(set-face-attribute 'highlight-current-line-face nil
		    :background "dim gray")

(provide 'init-highlight-current-line)

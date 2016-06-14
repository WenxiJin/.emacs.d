(require-package 'highlight-current-line)

(use-package highlight-current-line
  :defer t
  :config
  ;; enable globally
  (highlight-current-line-on t)
  ;; change the background-color from wheat (by default) to black
  (set-face-attribute 'highlight-current-line-face nil
		      :background "black")
  )


(provide 'init-highlight-current-line)

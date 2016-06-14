;; When you press RET to create a newline and got indented by eletric-indent-mode, you have appropriate whitespace for indenting. But, if you leave the line blank and move to the next line, the whitespace becomes useless. This package helps clean up unused whitespace.

(require-package 'clean-aindent-mode)

(use-package clean-aindent-mode
  :defer t
  :config
  (add-hook 'prog-mode-hook 'clean-aindent-mode)  
  )


(provide 'init-clean-aindent-mode)

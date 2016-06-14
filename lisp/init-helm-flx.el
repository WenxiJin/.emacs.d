(require-package 'helm-flx)

(use-package helm-flx
  :defer t
  :config
  ;; For best results, load this before you load helm.
  (helm-flx-mode +1)
  )


(provide 'init-helm-flx)

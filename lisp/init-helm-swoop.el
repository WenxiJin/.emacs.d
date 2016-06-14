(require-package 'helm-swoop)

(use-package helm-swoop
  :defer t
  :bind (
         :map isearch-mode-map
              ("M-i" . helm-swoop-from-isearch)
         :map helm-swoop-map
              ("M-i" . helm-multi-swoop-all-from-helm-swoop))
  :init
  (global-set-key (kbd "M-i") 'helm-swoop)
  (global-set-key (kbd "M-I") 'helm-swoop-back-to-last-point)
  (global-set-key (kbd "C-c M-i") 'helm-multi-swoop)
  (global-set-key (kbd "C-x M-i") 'helm-multi-swoop-all)

  :config
  (setq helm-multi-swoop-edit-save t)
  (setq helm-swoop-split-with-multiple-windows nil)
  (setq helm-swoop-split-direction 'split-window-vertically)
  ;; split-window-horizontally
  ;; (setq helm-swoop-speed-or-color nil)
  (setq helm-swoop-move-to-line-cycle t)
  (setq helm-swoop-use-line-number-face t)
  )


(provide 'init-helm-swoop)

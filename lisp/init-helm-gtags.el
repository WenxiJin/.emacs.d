(require-package 'helm-gtags)

(use-package helm-gtags
             :defer t
             :bind (
                    :map helm-gtags-mode-map
                         ("M-." . helm-gtags-dwim)
                         ("M-t" . helm-gtags-find-tag)
                         ("M-r" . helm-gtags-find-rtag)
                         ("M-s" . helm-gtags-find-symbol)
                         ("M-g M-p" . helm-gtags-parse-file)
                         ("C-c <" . helm-gtags-previous-history)
                         ("C-c >" . helm-gtags-next-history)
                         ("M-," . helm-gtags-pop-stack)
                         )

             :config
             ;; Enable helm-gtags-mode
             (add-hook 'c-mode-hook 'helm-gtags-mode)
             (add-hook 'c++-mode-hook 'helm-gtags-mode)
             (add-hook 'asm-mode-hook 'helm-gtags-mode)
             ;; customize
             (custom-set-variables
              '(helm-gtags-path-style 'relative)
              '(helm-gtags-ignore-case t)
              '(helm-gtags-auto-update t))
             )

;; For "FAILED: update TAGS(2)" error when "helm-gtags-update-tags"
;; Install GNU global higher than 6.2.3 and "helm-gtags-create-tags"


(provide 'init-helm-gtags)

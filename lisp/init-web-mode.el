(require-package 'web-mode)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

;; Using web-mode for editing plain HTML files
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
;; A specific engine can be forced with
(setq web-mode-engines-alist
      '(("php"    . "\\.phtml\\'")
	("blade"  . "\\.blade\\."))
      )
;; Customisation
(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-style-padding 1)
  (setq web-mode-script-padding 1)
  (setq web-mode-block-padding 0)
  (setq-default indent-tabs-mode nil)
  (define-key web-mode-map (kbd "C-n") 'web-mode-tag-match)
  )
(add-hook 'web-mode-hook  'my-web-mode-hook)

(provide 'init-web-mode)

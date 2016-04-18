(require-package 'smartparens)

(require 'smartparens)
(require 'smartparens-config)

(set-face-attribute 'sp-pair-overlay-face nil
                    :background "yellow"
                    :foreground nil)

(set-face-attribute 'sp-show-pair-match-face nil
                    :foreground "red"
                    :weight 'bold
                    :underline t)

(add-hook 'prog-mode-hook #'smartparens-mode)

(provide 'init-smartparens)

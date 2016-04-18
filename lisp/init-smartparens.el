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

(provide 'init-smartparens)

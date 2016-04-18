(require-package 'smartparens)

(require 'smartparens)
(require 'smartparens-config)

(set-face-attribute 'sp-pair-overlay-face nil
                    :background "yellow"
                    :foreground nil)

(set-face-attribute 'sp-show-pair-match-face nil
                    :weight 'bold
                    :underline t
                    :inherit 'bold)

(show-smartparens-global-mode t)

(provide 'init-smartparens)

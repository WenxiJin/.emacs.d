(require-package 'smartparens)

(require 'smartparens)
(require 'smartparens-config)

;; ===================================================================
;; Hand over to spacemacs-theme
;; (set-face-attribute 'sp-pair-overlay-face nil
;;                     :background "yellow"
;;                     :foreground nil)

;; (set-face-attribute 'sp-show-pair-match-face nil
;;                     :foreground "red"
;;                     :weight 'bold
;;                     :underline t
;;                     :inherit 'bold)

(show-smartparens-global-mode t)

(provide 'init-smartparens)

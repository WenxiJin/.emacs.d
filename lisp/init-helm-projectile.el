(require-package 'helm-projectile)

(require 'helm-projectile)

(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)
(setq projectile-indexing-method 'alien)
(setq projectile-switch-project-action 'helm-projectile-find-file)
(setq projectile-switch-project-action 'helm-projectile)
(setq projectile-enable-caching t)
(setq projectile-file-exists-remote-cache-expire (* 10 60))
(setq projectile-file-exists-local-cache-expire (* 5 60))
(add-to-list 'projectile-globally-ignored-directories "backup")

(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(provide 'init-helm-projectile)

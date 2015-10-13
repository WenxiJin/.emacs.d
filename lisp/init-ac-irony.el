(require-package 'ac-irony)

(require 'ac-irony)
(defun my:ac-irony-setup ()
  ;; be cautious, if yas is not enabled before (auto-complete-mode 1), overlays
  ;; *may* persist after an expansion.
  (yas-minor-mode 1)
  (auto-complete-mode 1)

  (add-to-list 'ac-sources 'ac-sources-irony)
  (define-key irony-mode-map (kbd "M-RET") 'ac-complet-irony-async))
(add-hook 'irony-mode-hook 'my:ac-irony-setup)


(provide 'init-ac-irony)

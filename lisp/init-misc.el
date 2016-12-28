;; no startup screen
(setq inhibit-splash-screen t)

;; indent
(setq-default tab-width 4)
(setq-default indent-tabs-mode t)
(c-set-offset 'case-label '+)

;; revert buffer
(global-auto-revert-mode 1)
(setq global-auto-revert-non-file-buffers t
      auto-revert-verbose nil)
(global-set-key (kbd "C-c r") 'revert-buffer)

(transient-mark-mode t)

;; line-number-mode, column-number-mode
(setq line-number-mode t)
(setq column-number-mode t)

;; stop creating backup~ files
(setq make-backup-files nil)
;; stop creating #autosave# files
(setq auto-save-default nil)
;; set the default width of fill-column
(setq-default fill-column 80)

;; enable narrow-to region feature
(put 'narrow-to-region 'disabled nil)


(provide 'init-misc)

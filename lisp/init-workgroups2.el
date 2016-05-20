(require-package 'workgroups2)

(require 'workgroups2)

;;;; ---------------------------------------------------------------------- ;;;;
;;;; Configure ---------------------- Change prefix key (before activating  ;;;;
;;;; WG) (setq wg-prefix-key (kbd "C-c z"))                                 ;;;;
;;;;                                                                        ;;;;
;;;; Change workgroups session file (setq wg-session-file                   ;;;;
;;;; "~/.emacs.d/.emacs_workgroups"                                         ;;;;
;;;;                                                                        ;;;;
;;;; Set your own keyboard shortcuts to reload/save/switch WG:              ;;;;
;;;; (global-set-key (kbd "<pause>") 'wg-reload-session) (global-set-key    ;;;;
;;;; (kbd "C-S-<pause>") 'wg-save-session) (global-set-key (kbd "s-z")      ;;;;
;;;; 'wg-switch-to-workgroup) (global-set-key (kbd "s-/")                   ;;;;
;;;; 'wg-switch-to-previous-workgroup)                                      ;;;;
;;;;                                                                        ;;;;
;;;;                                                                        ;;;;
;;;; Use ---------------------- Most commands start with prefix             ;;;;
;;;; `wg-prefix-key'.  You can change it before activating workgroups.  By  ;;;;
;;;; default prefix is: "C-c z"                                             ;;;;
;;;;                                                                        ;;;;
;;;; <prefix> <key>                                                         ;;;;
;;;;                                                                        ;;;;
;;;; <prefix> c - create workgroup <prefix> A - rename workgroup <prefix> k ;;;;
;;;; - kill workgroup <prefix> v - switch to workgroup <prefix> C-s - save  ;;;;
;;;; session <prefix> C-f - load session                                    ;;;;
;;;; ---------------------------------------------------------------------- ;;;;

(workgroups-mode 1)


(provide 'init-workgroups2)

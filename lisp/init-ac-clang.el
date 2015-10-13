(require-package 'ac-clang)

(require 'ac-clang)
(when (ac-clang-initialize)
  (add-hook 'c-mode-common-hook '(lambda ()
				   (setq ac-clang-cflags CFLAGS)
				   (ac-clang-activate-after-modify))))


(provide 'init-ac-clang)

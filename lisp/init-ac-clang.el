(require-package 'ac-clang)

;; https://github.com/yaruopooner/ac-clang.git
;; How to install clang-server executable file?  Check: ac-clang/clang-server/readme.md
;; https://github.com/yaruopooner/llvm-build-shells.git

(require 'ac-clang)
(when (ac-clang-initialize)
  (add-hook 'c-mode-common-hook '(lambda ()
				   (setq ac-clang-cflags CFLAGS)
				   (ac-clang-activate-after-modify))))


(provide 'init-ac-clang)

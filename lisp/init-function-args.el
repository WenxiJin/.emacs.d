(require-package 'function-args)

(require 'function-args)
(fa-config-default)

(define-key c-mode-map  [(control tab)] 'moo-complete)
(define-key c++-mode-map  [(control tab)] 'moo-complete)
(define-key c-mode-map (kbd "M-o")  'fa-show)
(define-key c++-mode-map (kbd "M-o")  'fa-show)

;; optional setup
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode)) ;; .h file as c++-mode
(set-default 'semantic-case-fold t)  ;; enable case-insensitive search
;; other includes
;; (semantic-add-system-include "~/Software/deal.II/include/" 'c++-mode)
;; (semantic-add-system-include "/usr/local/boost_1_54_0/" 'c++-mode)
;; for heavy macro code
(require 'semantic/bovine/c)
(add-to-list 'semantic-lex-c-preprocessor-symbol-file
    "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h")

(provide 'init-function-args)

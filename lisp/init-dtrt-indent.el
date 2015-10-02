(require-package 'dtrt-indent)
(require 'dtrt-indent)
(dtrt-indent-mode 1)
;; otherwise semantic will keep parsing the echoed files
(setq dtrt-indent-verbosity 0)

(provide 'init-dtrt-indent)

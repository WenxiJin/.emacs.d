;;; init-company -- company configuration
;;; Commentary:
;;; Code:
(require-package 'company)
(require-package 'company-c-headers)

(require 'company)
(require 'company-c-headers)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-idle-delay 0)
(defun indent-or-complete ()
  "Complete if point is at end of a word, otherwise indent line."
  (interactive)
  (if (looking-at "\\>")
      (dabbrev-expand nil)
    (indent-for-tab-command)
    ))
(add-hook 'c-mode-common-hook
	  (function (lambda ()
		      (local-set-key (kbd "<tab>") 'indent-or-complete)
		      )))
;; (define-key company-mode-map  (kbd "<tab>") 'company-complete)



;; company-clang
;; .dir-locals.el is used to retrive completion candidates for user projects
;; ((nil . ((company-clang-arguments . ("-I/home/<user>/project_root/include1/"
;;                                     "-I/home/<user>/project_root/include2/")))))

(require 'company-c-headers)
(add-to-list 'company-backends 'company-c-headers)
;; by default, only /usr/include, /usr/local/include are included
(add-to-list 'company-c-headers-path-system "/usr/include/c++/4.8/")  ;; add c++ header files
;; company-c-headers-path-user for user defined header files
;; and put user defined in .dir-locals.el as well

;; company-semantic, instead of company-clang
(require 'cc-mode)
(require 'semantic)
;; database/cache
;; The cache is saved in directory specified by semanticdb-default-save-directory variable. The default directory is ~/.emacs.d/semanticdb.
(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)
(semantic-mode 1)
;; By default, Semantic automatically includes some default system include paths such as /usr/include, /usr/local/include… You can view the list of include paths in semantic-dependency-system-include-path. To add more include paths, for example Boost include paths, use the function semantic-add-system-include like this:
;; (semantic-add-system-include "/usr/include/boost" 'c++-mode)  ;; only for c++-mode
;; (semantic-add-system-include "~/linux/kernel")  ;; for c/c++-modes
;; (semantic-add-system-include "~/linux/include")
;; One nice thing of company-semantic is that it fixed an issue of original Semantic completion semantic-ia-complete-symbol: it can show you completions even if there's no prefix. The original semantic-ia-complete-symbol requires to have at least one character as a prefix for finding completions.




(provide 'init-company)
;;; init-company.el ends here

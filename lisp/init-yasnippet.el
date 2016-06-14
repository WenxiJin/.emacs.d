(require-package 'yasnippet)

(use-package yasnippet
  :defer t
  :config
  ;; (setq yas-snippet-dirs
  ;;       '("~/.emacs.d/snippets"                 ;; personal snippets
  ;;         "/path/to/some/collection/"           ;; foo-mode and bar-mode snippet collection
  ;;         "/path/to/yasnippet/yasmate/snippets" ;; the yasmate collection
  ;;         "/path/to/yasnippet/snippets"         ;; the default collection
  ;;         ))
  (add-to-list 'yas-snippet-dirs "~/.emacs.d/snippets")  ;; git@github.com:AndreaCrotti/yasnippet-snippets.git
  (yas-global-mode 1) ;; or M-x yas-reload-all if you've started YASnippet already.  
  )


(provide 'init-yasnippet)

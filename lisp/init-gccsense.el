(setq gccsense-dot-el "~/.emacs.d/lisp/gccsense.el")
(if (file-exists-p gccsense-dot-el)
  (progn
    (load-file gccsense-dot-el)
    (message "Loading gccsense...done")
    )
  (message "gccsense is not installed yet.")
  )


(provide 'init-gccsense)

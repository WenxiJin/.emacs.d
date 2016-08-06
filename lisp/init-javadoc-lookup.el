(require-package 'javadoc-lookup)

(require 'javadoc-lookup)

(javadoc-add-artifacts [org.lwjgl.lwjgl lwjgl "2.8.2"]
                       [com.nullprogram native-guide "0.2"]
                       [org.apache.commons commons-math3 "3.0"])

(global-set-key (kbd "C-h j") 'javadoc-lookup)

;; make emacs always use its own browser for opening URL links
(setq browse-url-browser-function 'eww-browse-url)


(provide 'init-javadoc-lookup)

(require-package 'rainbow-delimiters)

(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; these setting should be placed after load-theme
;; using stronger colors
(require 'cl-lib)
(require 'color)

(defun rainbow-delimiters-using-stronger-colors ()
  (interactive)
  (cl-loop
   for index from 1 to rainbow-delimiters-max-face-count
   do
   (let ((face (intern (format "rainbow-delimiters-depth-%d-face" index))))
     (cl-callf color-saturate-name (face-foreground face) 100))))

;; ===================================================================
;; Hand over to spacemacs-theme
;;
;; (set-face-attribute 'rainbow-delimiters-depth-1-face nil
;;                     :foreground "magenta")
;; (set-face-attribute 'rainbow-delimiters-depth-2-face nil
;;                     :foreground "cyan")
;; (set-face-attribute 'rainbow-delimiters-depth-3-face nil
;;                     :foreground "green")
;; (set-face-attribute 'rainbow-delimiters-depth-4-face nil
;;                     :foreground "yellow")
;; (set-face-attribute 'rainbow-delimiters-depth-5-face nil
;;                     :foreground "blue")
;; (set-face-attribute 'rainbow-delimiters-depth-6-face nil
;;                     :foreground "magenta")
;; (set-face-attribute 'rainbow-delimiters-depth-7-face nil
;;                     :foreground "cyan")
;; (set-face-attribute 'rainbow-delimiters-depth-8-face nil
;;                     :foreground "green")

;; (set-face-attribute 'rainbow-delimiters-unmatched-face nil
;;                     :foreground 'unspecified
;; 		    :inherit 'error
;;                     :strike-through t)
;; (set-face-attribute 'rainbow-delimiters-mismatched-face nil
;;                     :foreground 'unspecified
;; 		    :inherit 'error
;;                     :strike-through t)

;; ;; making unmatched parens stand out more
;; (set-face-attribute 'rainbow-delimiters-unmatched-face nil
;;                     :foreground 'unspecified
;;                     :inherit 'error
;; 		                :strike-through t)

(provide 'init-rainbow-delimiters)

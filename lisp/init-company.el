;;; init-company -- company configuration
;;; Commentary:
;;; Code:
(require-package 'company)
(require-package 'company-c-headers)

(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-minimum-prefix-length 3)
(global-set-key (kbd "M-p") 'company-complete)

;; (require 'cc-mode)
;; (require 'semantic)
;; (global-semanticdb-minor-mode 1)
;; (global-semantic-idle-scheduler-mode 1)
;; (semantic-mode 1)

;;;; ------------------ ;;;;
;;;; Got from spacemacs ;;;;
;;;; ------------------ ;;;;
;; Based on the Sarcasm/irony-mode compilation database code.
(defun company-mode/find-clang-complete-file ()
  (when buffer-file-name
    (let ((dir (locate-dominating-file buffer-file-name ".clang_complete")))
      (when dir
        (concat (file-name-as-directory dir) ".clang_complete")))))

;; Based on the Sarcasm/irony-mode compilation database code.
(defun company-mode/load-clang-complete-file (cc-file)
  "Load the flags from CC-FILE, one flag per line."
  (let ((invocation-dir (expand-file-name (file-name-directory cc-file)))
        (case-fold-search nil)
        compile-flags)
    (with-temp-buffer
      (insert-file-contents cc-file)
      ;; Replace relative paths with absolute paths (by @trishume)
      ;; (goto-char (point-min))
      (while (re-search-forward "\\(-I\\|-isystem\n\\)\\(\\S-\\)" nil t)
        (replace-match (format "%s%s" (match-string 1)
                               (expand-file-name (match-string 2) invocation-dir))))
      ;; Turn lines into a list
      (setq compile-flags
            ;; remove whitespaces at the end of each line, if any
            (mapcar #'(lambda (line)
                        (if (string-match "[ \t]+$" line)
                            (replace-match "" t t line)
                          line))
                    (split-string (buffer-string) "\n" t))))
    compile-flags))

(defun c-c++/load-clang-args ()
  "Sets the arguments for company-clang, the system paths for company-c-headers
and the arguments for flyckeck-clang based on a project-specific text file."
  (unless company-clang-arguments
    (let* ((cc-file (company-mode/find-clang-complete-file))
           (flags (if cc-file (company-mode/load-clang-complete-file cc-file) '()))
           (dirs (mapcar (lambda (f) (substring f 2))
                         (remove-if-not (lambda (f) (string-prefix-p "-I" f)) flags))))
      (setq-local company-clang-arguments flags)
      (setq-local company-c-headers-path-system (append '("/usr/include" "/usr/local/include") dirs))
      (setq-local flycheck-clang-args flags))))

(defun c-c++/post-init-company ()
  (defun company-mode/more-than-prefix-guesser ()
    (c-c++/load-clang-args)
    (company-clang-guess-prefix))

  (setq company-clang-prefix-guesser 'company-mode/more-than-prefix-guesser)
  (message "[wjin] company-clang is ready...")
  )

(add-hook 'c-mode-common-hook 'c-c++/post-init-company)

(defun c-c++/reload-clang-complete-file ()
  "Locate .clang_complete file in the parent dir, return nil if not found.
And reload."
  (interactive "P")
  (c-c++/post-init-company)
  (message "[wjin] .clang_complete file reloaded...")
  )

(provide 'init-company)

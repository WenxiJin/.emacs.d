(require-package 'emacs-eclim)

(require 'eclim)
(global-eclim-mode)

;; if you want to control eclimd from emacs, also add:
(require 'eclimd)

;; emacs-eclim tries its best to locate Eclipse installation.
;; if you have Eclipse installed somewhere else, try to add this
;; (custom-set-variables '(eclim-eclipse-dirs '("~/nonStandard/eclipse"))
;;  '(eclim-executable "~/nonStandard/eclipse/eclim"))

;; You can either invoke (display-local-help) manually or activate automatic
;; display of local help by adding the following to .emacs
(setq help-at-pt-display-when-idle t)
(setq help-at-pt-timer-delay 0.1)
(help-at-pt-set-timer)

;; Auto-complete
;; regular auto-complete initialization
(require 'auto-complete-config)
(ac-config-default)
;; add the emacs-eclim source
(require 'ac-emacs-eclim-source)
(ac-emacs-eclim-config)


;; Company
;; (require 'company)
;; (require 'company-emacs-eclim)
;; (company-emacs-eclim-setup)
;; (global-company-mode t)
;; Emacs-eclim completions in company are case sensitive by default. To make
;; completions case insensitive set company-emacs-eclim-ignore-case to t

;; When emacs-eclim is configured correctly, you don't need to modify the
;; configuration for the eclimd package. Still, there are some configurable
;; variables you can tweak:

;; eclimd-executable: This variable is used for locating the eclimd executable
;; file. You can set it to nil ("Same directory as eclim-executable variable"
;; choice in customization screen) to indicate that the executable is in the same
;; directory as the eclim program. Alternatively, you can give it a string value
;; ("Custom value" choice in customization screen) to specify the location of the
;; executable.

;; eclimd-default-workspace: When start-eclimd is executed, it will ask for the
;; workspace directory to use. The default value for this question is controlled by
;; this variable.

;; eclimd-wait-for-process: Normally, when start-eclimd starts the eclimd process,
;; it pauses emacs until eclimd is ready to accept commands. If you change the
;; value of this variable to nil, start-eclimd will return as soon as eclimd is
;; started. Eclimd startup takes several seconds, so if you change the default
;; value of this variable, emacs-eclim commands will fail until eclimd is ready.


;; Controlling eclimd

;; When you import the eclimd package, you will have access to two commands:
;; start-eclimd, and stop-eclimd.

;; start-eclimd will ask for a workspace directory, and it will attempt to start
;; eclimd program with the entered workspace directory. The configurable variable
;; eclimd-default-workspace controls the default value of this directory. After
;; start-eclimd runs the daemon, it will monitor its log output, and wait for the
;; message that indicates that it is ready to accept commands. This is done to
;; prevent failures with emacs-eclim commands while eclimd is starting up. While
;; start-eclimd is waiting for the daemon to be ready, emacs will not accept any
;; user input. To prevent this pause, you can modify the configurable variable
;; eclimd-wait-for-process.

;; Normally, simply killing the buffer *eclimd* will allow you to stop the eclimd
;; daemon. However, there is a command to perform a graceful shutdown:
;; stop-eclimd. You should use this command when you wish to stop the eclimd
;; program.

(provide 'init-emacs-eclim)

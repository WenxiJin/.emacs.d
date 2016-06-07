(require-package 'emacs-eclim)

(require 'eclim)
(global-eclim-mode)

;; if you want to control eclimd from emacs, also add:
(require 'eclimd)

;; emacs-eclim tries its best to locate Eclipse installation.
;; if you have Eclipse installed somewhere else, try to add this
;; ----------------------------------------------------------------------------
;; HOW TO INSTALL ECLIPSE ON UBUNTU?
;; $ cd ~/Downloads/ && wget https://blabla.tar.gz
;; $ cd /opt/ && sudo tar -zxvf ~/Downloads/eclipse-*.tar.gz
;; eclipse is installed under /opt/eclipse/. now
;; HOW TO INSTALL ECLIM?
;; http://eclim.org/install.html, graphical installer is preferred
;; install java, c++ plugins
;; symbol link eclim and eclimd executables
;; ----------------------------------------------------------------------------
;; wjin@soft-dev10 ~/project/webstax2-apple (master) $ ll /opt/eclipse/
;; total 640K
;; drwxrwxr-x   8 root users 4.0K Jun  7 11:39 ./
;; drwxr-xr-x  15 root root  4.0K Jun  6 09:14 ../
;; -rw-rw-r--   1 root users 270K Feb 18 09:43 artifacts.xml
;; drwxrwxr-x   4 root users 4.0K Feb 18 09:43 configuration/
;; drwxrwxr-x   2 root users 4.0K Feb 18 09:43 dropins/
;; lrwxrwxrwx   1 root root    80 Jun  7 11:38 eclim -> /home/wjin/.eclipse/org.eclipse.platform_4.5.2_1473617060_linux_gtk_x86_64/eclim*
;; lrwxrwxrwx   1 root root    81 Jun  7 11:39 eclimd -> /home/wjin/.eclipse/org.eclipse.platform_4.5.2_1473617060_linux_gtk_x86_64/eclimd*
;; -rwxr-xr-x   1 root users  78K Feb 12 22:55 eclipse*
;; -rw-rw-r--   1 root users  448 Feb 18 09:43 eclipse.ini
;; -rw-rw-r--   1 root users   60 Feb  3 16:08 .eclipseproduct
;; drwxrwxr-x 174 root users  20K Feb 18 09:43 features/
;; -rwxr-xr-x   1 root users 138K Feb 12 22:55 icon.xpm*
;; drwxrwxr-x   4 root users 4.0K Feb 18 09:43 p2/
;; drwxrwxr-x  19 root users  88K Feb 18 09:43 plugins/
;; drwxrwxr-x   2 root users 4.0K Feb 18 09:43 readme/
(custom-set-variables '(eclim-eclipse-dirs '("/opt/eclipse"))
                      '(eclim-executable "/opt/eclipse/eclim"))
;; ----------------------------------------------------------------------------
;; NOTE: start-eclimd only works in emacs GUI
;; NOTE: /opt/eclipse/eclimd only works in linux shell, not terminal emulator
;; ----------------------------------------------------------------------------

;; You can either invoke (display-local-help) manually or activate automatic
;; display of local help by adding the following to .emacs
(setq help-at-pt-display-when-idle t)
(setq help-at-pt-timer-delay 0.5)  ;; 0.1 by default
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

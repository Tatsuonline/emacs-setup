;;; About This File
;; This is the .emacs file of Alexander Phillips (mail@alexanderphillips.net).
;; It is written in outline-mode in an attempt to better organize it.

;;; Custom Set Variables
;; ================================================================================
;; custom-set-variables was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
;; ================================================================================
(custom-set-variables
 ;; The following portion adds some colors to the terminal usage.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 ;; This is the Emacs theme I use. An advantage is that is one of the default themes.
 '(custom-enabled-themes (quote (wombat)))
 ;; This disables the annoying start up screen new Emacs users encounter.
 '(inhibit-startup-screen t)
 ;; This adds the send mail variable. It is only uncommented on the mail server.
 ;;'(send-mail-function (quote mailclient-send-it))) 
 ;; This adds importnat packages for Rust, org-mode, etc.
 '(package-selected-packages
   (quote
    (rust-mode org-journal org-plus-contrib org-download org ox-hugo))))

;;; Custom Set Faces
;; ================================================================================
;; custom-set-faces was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
;; ================================================================================
(custom-set-faces
 )

;;; Melpa Packages
;; ================================================================================
;; This portion allows the download and installation of Melpa packages.
;; I usually leave this commented out until I need it since it slows Emacs down.
;; ================================================================================
;;(require 'package)
;;(add-to-list 'package-archives
;;             '("melpa" . "https://melpa.org/packages/") t)
;;(package-initialize)
;;(package-refresh-contents)
;; ================================================================================
;; Another set of packages:
;; ================================================================================
;;(when (>= emacs-major-version 24)
;;  (require 'package)
;;  (package-initialize)
;;  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
;;  )

;;; Display
;; ================================================================================
;; This section indicates small visual personal preferences.
;; ================================================================================
;; Here, we set the line numbers on by default,
(global-linum-mode 1)
;; The following wraps the text around the screen.
(global-visual-line-mode 1)
;; This portion sets the default font.
(set-face-attribute 'default nil
                    :family "Office Code Pro"
                    :height 110
                    :weight 'normal
                    :width 'normal)

;;; Org-mode Settings
;; ================================================================================
;; This section details settings and fixes for org-mode.
;; ================================================================================
;; The following is my default org-mode skeleton:
(define-skeleton org-skeleton
  "Header info for a emacs-org file."
  "Title: "
  "#+TITLE: " str " \n"
  "#+AUTHOR: Alexander Phillips\n"
  "#+EMAIL: mail@alexanderphillips.net\n"
  "-----"
 )
(global-set-key [C-S-f4] 'org-skeleton)
;; The following fixes an old bug in org-mode.
(define-obsolete-function-alias 'org-define-error 'define-error)
;; Here we add ox-hugo and fix a bug.
(with-eval-after-load 'ox
  (require 'ox-hugo))
(put 'downcase-region 'disabled nil)
;; This part is used for encrypting org files with EasyPG.
(require 'epa-file)
(epa-file-enable)

;;; Mail Settings
;; ================================================================================
;; This section details all mail related settings.
;; ================================================================================
;; The following adds notmuch mail.
(autoload 'notmuch "notmuch" "notmuch mail" t)
;; The following allows mail to be sent with Postfix. Only uncommented on the mail server.
;;(setq send-mail-function 'sendmail-send-it)
;;(setq message-send-mail-function 'message-send-mail-with-sendmail)

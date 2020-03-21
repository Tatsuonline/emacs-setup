(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (wombat)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;(require 'package)
;;(add-to-list 'package-archives
;;             '("melpa" . "https://melpa.org/packages/") t)
;;(package-initialize)
;;(package-refresh-contents)

(global-linum-mode 1) ; Sets line numbers by default.
(global-visual-line-mode 1) ; Wraps the text around the screen.

;; Set default font
(set-face-attribute 'default nil
                    :family "Office Code Pro"
                    :height 110
                    :weight 'normal
                    :width 'normal)

;; packages
;;(when (>= emacs-major-version 24)
;;  (require 'package)
;;  (package-initialize)
;;  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
;;  )

(define-obsolete-function-alias 'org-define-error 'define-error)

(with-eval-after-load 'ox
  (require 'ox-hugo))
(put 'downcase-region 'disabled nil)

;; Adds notmuch mail setup.
(autoload 'notmuch "notmuch" "notmuch mail" t)

;; Org Mode Skeleton:

(define-skeleton org-skeleton
  "Header info for a emacs-org file."
  "Title: "
  "#+TITLE: " str " \n"
  "#+AUTHOR: Alexander Phillips\n"
  "#+EMAIL: alexander@keemail.me\n"
  "-----"
 )
(global-set-key [C-S-f4] 'org-skeleton)

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

(setq
 make-backup-files nil
 auto-save-default nil
 create-lockfiles nil)

(setq
   inhibit-startup-screen t
   initial-scratch-message nil
   sentence-end-double-space nil
   ring-bell-function 'ignore
   use-dialog-box nil
   mark-even-if-inactive nil
   kill-whole-line t
   case-fold-search nil
   echo-keystrokes .1
   frame-resize-pixelwise t
   show-paren-delay 0)

(global-hl-line-mode)
(global-visual-line-mode)
(electric-pair-mode)
(delete-selection-mode t)
(show-paren-mode)
(blink-cursor-mode 0)
(put 'dired-find-alternate-file 'disabled nil)

(set-frame-font "Office Code Pro 15" nil t)

(defalias 'yes-or-no-p 'y-or-n-p)

(defvar emacs-folder "/home/HDD/Documents/emacs/"
  "Folder to store various emacs (non-config) files")

(setq org-agenda-start-on-weekday nil
      org-agenda-files (list emacs-folder)
      org-default-notes-file (concat emacs-folder "Self.org")
      org-file-apps '((auto-mode . emacs)))

;; Packages

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(when (not package-archive-contents)
    (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(use-package clojure-mode
  :ensure t)

(use-package evil
  :ensure t
  :config
  (evil-mode 1))

(use-package projectile
  :ensure t
  :init
  (setq projectile-project-search-path '("/home/HDD/Documents/7CC"))
  :config
  (projectile-mode +1)
  :bind-keymap
  ("C-c p" . projectile-command-map))

(use-package paredit
  :ensure t
  :hook ((emacs-lisp-mode
	  ielm-mode
	  lisp-mode
	  lisp-interaction-mode
	  scheme-mode
	  clojure-mode) . paredit-mode))

(use-package atom-one-dark-theme
  :ensure t
  :config
  (load-theme 'atom-one-dark t))

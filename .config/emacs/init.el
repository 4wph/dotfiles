(setq
 make-backup-files nil
 auto-save-default nil
 create-lockfiles nil
 mouse-wheel-scroll-amount '(1 ((shift) . 1))
 mouse-wheel-progressive-speed nil
 mouse-wheel-follow-mouse t
 scroll-step 1
 inhibit-startup-screen t
 initial-scratch-message nil
 sentence-end-double-space nil
 ring-bell-function 'ignore
 use-dialog-box nil
 mark-even-if-inactive nil
 case-fold-search nil
 echo-keystrokes .1
 frame-resize-pixelwise t
 show-paren-delay 0
 ido-enable-flex-matching t
 ido-separator "\n"
 ido-everywhere t
 custom-file "~/.config/emacs/custom.el")

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(global-visual-line-mode)
(show-paren-mode)
(electric-pair-mode)
(ido-mode t)

(defalias 'yes-or-no-p 'y-or-n-p)

(set-frame-font "Jet Brains Mono 15" nil t)

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

(use-package haskell-mode
  :ensure t)

(use-package lua-mode
  :ensure t)

(use-package evil
  :ensure t
  :config
  (evil-mode 1))

(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode 1))

(use-package evil-snipe
  :ensure t
  :config
  (evil-snipe-mode +1)
  (evil-snipe-override-mode +1)
  :custom
  (evil-snipe-scope 'buffer))

(use-package smart-tab
  :ensure t
  :config
  (global-smart-tab-mode 1))

(use-package paredit
  :ensure t
  :hook ((emacs-lisp-mode
	  ielm-mode
	  lisp-mode
	  lisp-interaction-mode
	  scheme-mode
	  clojure-mode) . paredit-mode))

(use-package projectile
  :ensure t
  :init
  (setq projectile-project-search-path '("/home/HDD/Documents/7CC"))
  :config
  (projectile-mode +1)
  :bind-keymap
  ("C-c p" . projectile-command-map)
  :bind (("C-c f" . projectile-find-file)
	 ("C-c o" . projectile-switch-project)
	 ("C-c k" . projectile-kill-buffers)))

(use-package org-superstar
  :ensure t
  :hook
  ((org-mode) . (lambda () (org-superstar-mode 1))))

(use-package dracula-theme
  :ensure t
  :config
  (load-theme 'dracula t)
  (set-face-attribute 'font-lock-comment-face nil :slant 'italic)
  (set-face-attribute 'font-lock-function-name-face nil :slant 'italic)
  (set-face-attribute 'font-lock-variable-name-face nil :slant 'italic)
  (set-face-attribute 'font-lock-string-face nil :slant 'italic))

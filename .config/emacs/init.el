(setq
 make-backup-files nil
 auto-save-default nil
 create-lockfiles nil
 frame-resize-pixelwise t
 show-paren-delay 0
 ido-enable-flex-matching t
 ido-everywhere t
 custom-file "~/.config/emacs/custom.el")

(global-visual-line-mode)
(show-paren-mode)
(electric-pair-mode)
(ido-mode t)

(defalias 'yes-or-no-p 'y-or-n-p)

(setq viper-mode t)
(require 'viper)

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

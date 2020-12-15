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
(setq use-package-always-ensure t)

(add-to-list 'load-path "~/.config/emacs/elegant-emacs")
(require 'elegance)
(require 'sanity)

(require 'org)

(use-package projectile
  :init
  (setq projectile-project-search-path '("/home/HDD/Documents/7CC"))
  :config
  (projectile-mode +1)
  :bind-keymap
  ("C-c p" . projectile-command-map)
  :bind (("C-c f" . projectile-find-file)
	 ("C-c o" . projectile-switch-project)
	 ("C-c k" . projectile-kill-buffers)))

;; Key Bindings

(global-set-key (kbd "C-c i") (lambda () (interactive) (find-file user-init-file)))

;; Settings

(setq
 frame-resize-pixelwise t
 split-height-threshold nil
 split-width-threshold 0
 make-backup-files nil
 create-lockfiles nil
 auto-save-default nil
 org-hide-leading-stars t
 org-format-latex-options (plist-put org-format-latex-options :scale 2.0)
 custom-file "~/.config/emacs/custom.el")

(menu-bar-mode -1)

(add-to-list 'org-file-apps '("\\.pdf\\'" . emacs))

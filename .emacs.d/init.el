(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

(global-hl-line-mode)
(global-visual-line-mode)
(electric-pair-mode)
(delete-selection-mode t)
(setq show-paren-delay 0)
(show-paren-mode)
(blink-cursor-mode 0)
(put 'dired-find-alternate-file 'disabled nil)

(set-frame-font "Office Code Pro 15" nil t)

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
   case-fold-search nil)

(setq frame-resize-pixelwise t)

(defalias 'yes-or-no-p 'y-or-n-p)

(defvar emacs-folder "/home/HDD/Documents/emacs/"
  "Folder to store various emacs (non-config) files")
(defvar project-folder "/home/HDD/Documents/7CC/"
  "Folder to store project files")

(setq org-agenda-start-on-weekday nil
      org-agenda-files (list emacs-folder)
      org-default-notes-file (concat emacs-folder "Self.org")
      bookmark-default-file (concat emacs-folder "bookmarks")
      org-file-apps '((auto-mode . emacs)))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(when (not package-archive-contents)
    (package-refresh-contents))

;; Avy

(unless (package-installed-p 'avy)
  (package-install 'avy))

(require 'avy)

;; Expand Region

(unless (package-installed-p 'expand-region)
  (package-install 'expand-region))

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;; Org-Superstar

(unless (package-installed-p 'org-superstar)
  (package-install 'org-superstar))

(require 'org-superstar)
(add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))

;; Evil Mode

;; (unless (package-installed-p 'evil)
;;   (package-install 'evil))

;; (require 'evil)
;; (evil-mode 1)

;; Clojure Mode

(unless (package-installed-p 'clojure-mode)
  (package-install 'clojure-mode))

;; ParEdit / Eldoc

(unless (package-installed-p 'paredit)
  (package-install 'paredit))

(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook           #'enable-paredit-mode)
(add-hook 'clojure-mode-hook          #'enable-paredit-mode)

(require 'eldoc) ; if not already loaded
(eldoc-add-command
    'paredit-backward-delete
    'paredit-close-round)

(add-hook 'emacs-lisp-mode-hook 'eldoc-mode)
(add-hook 'ielm-mode-hook 'eldoc-mode)
(add-hook 'lisp-mode-hook 'eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'eldoc-mode)
(add-hook 'scheme-mode-hook 'eldoc-mode)
(add-hook 'clojure-mode-hook 'eldoc-mode)

;; Nord Theme

(unless (package-installed-p 'nord-theme)
  (package-install 'nord-theme))

(add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/"))
(load-theme 'nord t)

;; Keybindings

(global-set-key (kbd "C-c p") (lambda () (interactive) (dired project-folder)))
(global-set-key (kbd "C-:") 'avy-goto-char)
(global-set-key (kbd "C-L") 'avy-goto-line)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(avy nord-theme org-bullets evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

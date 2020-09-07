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

;; https://github.com/googlefonts/Inconsolata
(set-frame-font "Inconsolata 17" nil t)

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

;; Window alignment
(setq frame-resize-pixelwise t)

(defalias 'yes-or-no-p 'y-or-n-p)

(defvar work-folder "/home/HDD/Documents/emacs/"
  "Folder to store various emacs (non-config) files")
(setq org-agenda-start-on-weekday nil
      org-agenda-files (list work-folder)
      org-default-notes-file (concat work-folder "Self.org")
      bookmark-default-file (concat work-folder "bookmarks"))

;; Packages

;; https://github.com/sabof/org-bullets
(add-to-list 'load-path "~/.emacs.d/org-bullets")
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; https://github.com/sellout/emacs-color-theme-solarized.git
(add-to-list 'custom-theme-load-path "~/.emacs.d/emacs-color-theme-solarized")
(set-frame-parameter nil 'background-mode 'dark)
(set-terminal-parameter nil 'background-mode 'dark)
(load-theme 'solarized t)

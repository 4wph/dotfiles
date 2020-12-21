(menu-bar-mode -1)

(setq
 make-backup-files nil
 create-lockfiles nil
 auto-save-default nil
 custom-file "~/.config/emacs/custom.el")

(global-set-key (kbd "C-c i") (lambda () (interactive) (find-file user-init-file)))

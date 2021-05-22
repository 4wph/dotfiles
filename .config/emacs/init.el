(setq make-backup-files nil
      create-lockfiles nil
      auto-save-default nil)

(setq kill-whole-line t
      show-paren-delay 0)

(setq-default indent-tabs-mode nil)

(setq-default tab-always-indent 'complete)

(defalias 'yes-or-no-p 'y-or-n-p)

(put 'dired-find-alternate-file 'disabled nil)

(electric-pair-mode t)

(setq display-time-day-and-date t)
(display-time-mode t)

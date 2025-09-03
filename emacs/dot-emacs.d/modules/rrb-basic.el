;; -*- lexical-binding: t -*-
(setq
    make-backup-files nil   ;; no backup files
    auto-save-default nil)  ;; do not create auto save files
(display-time-mode 1)       ;; Display time in mode line / tab bar
(column-number-mode 1)      ;; Show column number on mode line
;; Tabs to spaces
(setq-default indent-tabs-mode nil
	            tab-width 2)
(global-visual-line-mode 1) ;; wrap long lines in all buffers

;; Delete trailing whitespace before saving buffers
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Move customization settings out of init.el
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file t))

(provide 'rrb-basic)

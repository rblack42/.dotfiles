(use-package magit
 :bind (("C-x g" . magit-status)
       ("C-x M-g" . magit-blame))
  :init (setq magit-auto-revert-mode nil)
  :config (add-hook 'magit-mode-hook 'hl-line-mode))

(provide 'rrb-magit)

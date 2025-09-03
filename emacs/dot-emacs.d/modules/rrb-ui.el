;; -*- lexical-binding: t -*-
;; do not display the splash screen
(when (display-graphic-p)
  (tool-bar-mode 0)
  (scroll-bar-mode 0))
  ;; (menu-bar-mode 0) ; disabled here, not a problem on Mac
(setq inhibit-startup-screen t)

;; load an example dark theme
(load-theme 'wombat)
(with-eval-after-load 'wombat-theme
  (set-face-background 'default "#111")
  (set-face-background 'cursor "#c96")
  (set-face-foreground 'font-lock-comment-face "#fc0")
  (set-face-background 'isearch "#ff0")
  (set-face-foreground 'isearch "#000")
  (set-face-background 'lazy-highlight "#990")
  (set-face-foreground 'lazy-highlight "#000"))

(provide 'rrb-ui)

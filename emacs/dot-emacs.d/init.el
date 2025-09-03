;; -*- lexical-binding: t -*-
;; elisp.org - copyright 2025 by Roie Black
;;-----------------------------------------

;; Add module directory to load_path
(add-to-list 'load-path "/Users/rblack/.emacs.d/modules")
(add-to-list 'load-path ".")

;; hook modules into this file
(require 'rrb-basic)

;; hook modules into this file
(require 'rrb-ui)

;; require the package system
(require 'rrb-package)

(require 'rrb-windows)

;; require the which-key package
(require 'rrb-which)

;; require the spell package
(require 'rrb-spell)

;; Git project management
(require 'rrb-magit)

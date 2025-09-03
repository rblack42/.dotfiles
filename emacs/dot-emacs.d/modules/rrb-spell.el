;; -*- lexical-binding: t -*-
;; Check spelling with flyspell and hunspell

(use-package flyspell
  :custom
  (ispell-program-name "hunspell")
  (ispell-dictionary "en_US")
  (ispellpersonal-dictionary "~/.emacs.d/rrb-personal-dict")
  :config
  (ispell-set-spellchecker-params)
  :hook
  (text-mode . flyspell-mode)
  :bind
  (("C-c w s s" . ispell)
   ("C-;"       . flyspell-auto-correct-previous-word)))

(provide 'rrb-spell)

(require 'org)

;; define task state list
(setq org-todo-keywords
  '((sequence "TODO" "PLANNING" "IN-PROGRESS" "WAITING" "|" "CANCELED" "DONE")))

;; when a TODO is done record a timestamp
(setq org-log-done 'time)



(provide 'rrb-org)

;; require the org package
(require 'rrb-org)

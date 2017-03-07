(global-set-key (kbd "C-c s") 'org-set-task-as-started)
(global-set-key (kbd "C-c p") 'org-set-task-as-paused)
(global-set-key (kbd "C-c d") 'org-set-task-as-done)

(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "STARTED(s)" "PAUSED(p)" "|" "DONE(d)"))))

(setq org-todo-keyword-faces
      (quote (
              ("PAUSED" :foreground "magenta" :weight bold)
              ("STARTED" :foreground "deep sky blue" :weight bold))))

(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)

(setq org-startup-indented t)
(setq org-hide-leading-stars t)
(setq org-odd-level-only nil)
(setq org-insert-heading-respect-content nil)
(setq org-M-RET-may-split-line '((item) (default . t)))
(setq org-special-ctrl-a/e t)
(setq org-return-follows-link nil)
(setq org-use-speed-commands t)
(setq org-startup-align-all-tables nil)
(setq org-log-into-drawer nil)
(setq org-tags-column 1)

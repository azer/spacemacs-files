(add-hook 'after-init-hook
          (lambda ()
            (linum-relative-toggle)))

;;(global-linum-mode)

(defalias 'yes-or-no-p 'y-or-n-p)

(setq make-backup-files nil)
(setq backup-inhibited t)
(setq auto-save-default nil)
(setq temporary-file-directory "/tmp/")
(setq create-lockfiles nil)

(setq auto-save-file-name-transforms
	`((".*" ,temporary-file-directory t)))

(setq confirm-kill-emacs nil)

(global-set-key [left] 'undo)
(global-set-key [right] 'redo)
(define-key input-decode-map "\e\eOA" [(meta up)])
(define-key input-decode-map "\e\eOB" [(meta down)])
(global-set-key [(meta up)] 'scroll-down-command)
(global-set-key [(meta down)] 'scroll-up-command)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

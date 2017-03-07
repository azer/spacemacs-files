(add-hook 'after-init-hook
          (lambda ()
            (linum-relative-toggle)))

(dolist (mode-hook '(text-mode-hook
                      org-mode-hook
                      prog-mode-hook
                      ruby-mode-hook))
   (add-hook mode-hook
             (lambda ()
               (spacemacs/toggle-auto-completion-on)
               (linum-on))))

(defalias 'yes-or-no-p 'y-or-n-p)

(setq make-backup-files nil)
(setq backup-inhibited t)
(setq auto-save-default nil)
(setq temporary-file-directory "/tmp/")
(setq create-lockfiles nil)
(setq tab-always-indent t)
(setq auto-save-file-name-transforms
	`((".*" ,temporary-file-directory t)))

(setq confirm-kill-emacs nil)
(set-default 'truncate-lines t)

(global-set-key (kbd "M-r") 'replace-regexp)
(global-set-key [left] 'undo)
(global-set-key [right] 'redo)
(define-key input-decode-map "\e\eOA" [(meta up)])
(define-key input-decode-map "\e\eOB" [(meta down)])
(global-set-key [(meta up)] 'scroll-down-command)
(global-set-key [(meta down)] 'scroll-up-command)
(global-set-key [up] 'linum-previous)
(global-set-key [down] 'linum-forward)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

(setq css-indent-offset 2)

(global-set-key (kbd "M-n") 'notebook)

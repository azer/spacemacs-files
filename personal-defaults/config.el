(add-hook 'after-init-hook
          (lambda ()
            (linum-relative-global-mode)
            (spaceline-toggle-major-mode-off)
(spaceline-toggle-minor-modes-off)
(spaceline-toggle-workspace-number-off)
(spaceline-toggle-buffer-id-on)
(spaceline-toggle-window-number-off)
(spaceline-toggle-buffer-position-off)
(spaceline-toggle-line-off)
(spaceline-toggle-buffer-size-off)
(spaceline-toggle-version-control-off)
(spaceline-toggle-selection-info-off)
(spaceline-toggle-hud-off)
(spaceline-toggle-point-position-off)
(spaceline-toggle-buffer-modified-off)
(spaceline-toggle-anzu-off)
(spaceline-toggle-evil-state-off)
(spaceline-toggle-buffer-encoding-off)
(spaceline-toggle-buffer-encoding-abbrev-off)
(spaceline-toggle-helm-buffer-id-off)
(spaceline-toggle-helm-number-off)
(spaceline-toggle-helm-help-off)
(spaceline-toggle-helm-prefix-argument-off)
(spaceline-toggle-line-column-off)
(set-face-background 'powerline-inactive1 "#1b1d1e")
(setq spaceline-face-func 'my-spaceline-face)
(set-face-attribute 'mode-line nil :box nil)
))

(set-frame-parameter nil 'internal-border-width 10)

(dolist (mode-hook '(text-mode-hook
                      org-mode-hook
                      prog-mode-hook
                      go-mode-hook
                      js2-mode-hook
                      ruby-mode-hook))
   (add-hook mode-hook
             (lambda ()
               (spacemacs/toggle-auto-completion-on)
               (spacemacs/toggle-smartparens-globally-off)
               )))

(setq prettier-js-args '(
                         "--no-semi" ""
                         ))

(add-hook 'js2-mode-hook 'prettier-js-mode)
(add-hook 'typescript-mode-hook 'prettier-js-mode)

(add-hook 'web-mode-hook
          (lambda ()
            (prettier-js-mode)
            (setq web-mode-markup-indent-offset 2)
            (setq web-mode-code-indent-offset 2)
            ))

(setq typescript-indent-level 2)

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

(global-set-key (kbd "M-[") 'notebook)

(global-set-key (kbd "M-g s") 'magit-status)
(global-set-key (kbd "M-g l") 'magit-log)
(global-set-key (kbd "M-g f") 'magit-pull-from-upstream)
(global-set-key (kbd "M-g p") 'magit-push-current-to-upstream)

(setq web-mode-markup-indent-offset 2)
(customize-set-variable 'helm-git-grep-base-directory 'root)
(customize-set-variable 'helm-git-grep-command "git --no-pager grep -n%cH --color=always --exclude-standard --no-index --full-name -e %p")
(customize-set-variable 'projectile-use-git-grep t)

(defun git-grep (not-all)
  (interactive "P")
  (helm-grep-git-1 default-directory (null not-all)))

(global-set-key (kbd "M-g r") 'git-grep)
(global-set-key (kbd "C-c g") 'helm-grep-do-git-grep)
(setq helm-grep-file-path-style 'relative)

(global-set-key (kbd "M-i") 'helm-semantic-or-imenu)
(set-fringe-mode 10)


(defun my-spaceline-face (face active)
    'powerline-inactive1)

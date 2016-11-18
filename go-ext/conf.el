(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "C-c p") 'set-go-path)
                          (linum-on)))

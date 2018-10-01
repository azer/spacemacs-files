(setq elm-format-on-save t)

(add-hook 'elm-mode-hook (lambda ()
                          (local-set-key (kbd "C-c C-c") 'elm-compile-buffer)
                          (local-set-key (kbd "C-c C-d") 'elm-oracle-doc-at-point)
                          (local-set-key (kbd "C-c ,") 'elm-mode-format-buffer)
                          ))

;;(add-hook 'web-mode-hook
;;                    (lambda () (add-hook 'before-save-hook 'typescript/tsfmt-format-buffer nil 'local)))



(setq-default dotspacemacs-configuration-layers '(
                                                  (typescript :variables
                                                              typescript-fmt-on-save t)))

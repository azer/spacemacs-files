(custom-set-variables '(js2-strict-inconsistent-return-warning nil))
(custom-set-variables '(js2-strict-missing-semi-warning nil))

(add-hook 'js2-mode-hook (lambda ()
                           (linum-on)
                           (setq show-trailing-whitespace t)))

(custom-set-variables '(js2-strict-inconsistent-return-warning nil))
(custom-set-variables '(js2-strict-missing-semi-warning nil))

(setq js-indent-level 2)
(setq js2-indent-level 2)
(setq js2-basic-offset 2)

(add-hook 'js2-mode-hook (lambda ()
                           (linum-on)
                           (setq show-trailing-whitespace t)))

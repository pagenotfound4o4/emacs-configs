;;Auto-Complete≈‰÷√Œƒº˛
;;Version: 1.3.1
;;URL: http://cx4a.org/software/auto-complete/

;(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete/")
(require 'auto-complete-config)
(require 'ac-math)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/auto-complete//ac-dict/")
(ac-config-default)

(add-to-list 'ac-modes 'latex-mode)
(defun ac-latex-mode-setup ()
  (setq ac-sources
        (append '(ac-source-math-unicode
                  ac-source-math-latex
                  ac-source-latex-commands)
                ac-sources)))
(add-hook 'LaTeX-mode-hook 'ac-latex-mode-setup)

(global-auto-complete-mode t)
(setq ac-auto-show-menu 0.5)

(provide 'auto-complete-settings)

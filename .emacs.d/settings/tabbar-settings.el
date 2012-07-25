;;Tabbar-ModeÅäÖÃÎÄ¼ş
;;Version: 2.0
;;URL: https://github.com/davidswelt/aquamacs-emacs/blob/master/aquamacs/src/site-lisp/tabbar/tabbar.el
;(add-to-list 'load-path "~/.emacs.d/plugins/tabbar/")
(require 'tabbar)
(tabbar-mode t)
(global-set-key (kbd "M-p") 'tabbar-backward)
(global-set-key (kbd "M-n") 'tabbar-forward)

(provide 'tabbar-settings)

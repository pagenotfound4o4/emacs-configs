;;IBusÅäÖÃÎÄ¼ş
;;Version: 0.3.2
;;URL: https://launchpad.net/ibus.el

(if (eq system-type 'gnu/linux)
    (progn ;(add-to-list 'load-path "~/.emacs.d/plugins/ibus/")
           (require 'ibus)
           (add-hook 'after-init-hook 'ibus-mode-on)))

(provide 'ibus-settings)

;;org-mode配置文件
;;Version: 7.8.11
;;URL: http://orgmode.org/

;(add-to-list 'load-path "~/.emacs.d/plugins/org/")
(require 'org)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;;设置快捷键
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

(setq org-log-done t)

(provide 'org-settings)

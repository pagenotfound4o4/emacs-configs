;;AUCTeX�����ļ�
;;Version: 11.86
;;URL: http://www.gnu.org/software/auctex/

;(add-to-list 'load-path "~/.emacs.d/plugins/auctex/site-lisp/site-start.d")
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(if (string-equal system-type "windows-nt")
    (require 'tex-mik))
;(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
;;TeX�����۵�
(setq TeX-fold-mode t)
;;���Զ���ȫ
(setq auto-complete-mode t)
;;��outline mode
(setq outline-minor-mode t)
;;��math mode
(setq LaTeX-math-mode t)

(provide 'auctex-settings)

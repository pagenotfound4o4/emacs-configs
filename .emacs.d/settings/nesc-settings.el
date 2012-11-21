;;nesC-ModeÅäÖÃÎÄ¼ş
;;Version£º Unknown
;;URL: http://nesl.ee.ucla.edu/fw/torres/home/projects/tossim_gumstix/root/nesc-1.3.1/tools/editor-modes/emacs/new-nesc.el

(autoload 'nesc-mode "nesc.el")
(setq auto-mode-alist (cons '("\\.nc" . nesc-mode) auto-mode-alist))

(provide 'nesc-settings)
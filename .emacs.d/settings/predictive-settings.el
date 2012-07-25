;;Predictive-Mode≈‰÷√Œƒº˛
;;Version: 0.23.13
;;URL: http://www.dr-qubit.org/emacs.php#predictive
;(add-to-list 'load-path "~/.emacs.d/plugins/predictive/")
(autoload 'predictive-mode "predictive" "predictive" t)
(set-default 'predictive-auto-add-to-dict t)
(setq predictive-main-dict 'rpg-dictionary
      predictive-auto-learn t
      predictive-add-to-dict-ask nil
      predictive-use-auto-learn-cache nil
      predictive-which-dict t)

(provide 'predictive-settings)

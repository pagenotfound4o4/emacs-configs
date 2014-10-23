;;º”‘ÿYASnippet≈‰÷√Œƒº˛
;;Version: 0.7.0
;;URL: https://github.com/capitaomorte/yasnippet

;(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet/")
(require 'yasnippet)
(require 'dropdown-list)

(setq yas/text-popup-function 'yas/dropdown-list-popup-for-template)
(setq yas/prompt-functions '(yas/x-prompt
							 yas/dropdown-prompt
                             yas/ido-prompt
                             yas/completing-prompt))
(yas/global-mode 1)
(yas/initialize)
(yas/load-directory "~/.emacs.d/plugins/yasnippet/snippets/")

(provide 'yasnippet-settings)

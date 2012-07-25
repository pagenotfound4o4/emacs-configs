;;¼ÓÔØYASnippetÅäÖÃÎÄ¼ş
;;Version: 0.7.0
;;URL: https://github.com/capitaomorte/yasnippet
;(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet/")
(require 'yasnippet)
(require 'dropdown-list)
(setq yas/prompt-functions '(yas/x-prompt
                             yas/dropdown-prompt
                             yas/completing-prompt))
(yas/initialize)
(yas/load-directory "~/.emacs.d/plugins/yasnippet/snippets/")

(provide 'yasnippet-settings)

;;CEDET≈‰÷√Œƒº˛
;;Version: 1.1
;;URL: http://cedet.sourceforge.net/

(add-to-list 'load-path "~/.emacs.d/plugins/cedet/cogre")
(add-to-list 'load-path "~/.emacs.d/plugins/cedet/common")
(add-to-list 'load-path "~/.emacs.d/plugins/cedet/contrib")
(add-to-list 'load-path "~/.emacs.d/plugins/cedet/ede")
(add-to-list 'load-path "~/.emacs.d/plugins/cedet/eieio")
(add-to-list 'load-path "~/.emacs.d/plugins/cedet/semantic")
(add-to-list 'load-path "~/.emacs.d/plugins/cedet/speedbar")
(add-to-list 'load-path "~/.emacs.d/plugins/cedet/srecode")

(require 'cedet)
(require 'semantic-ia)
 
;; Enable EDE (Project Management) features
(global-ede-mode t)
 
(semantic-load-enable-minimum-features)
(semantic-load-enable-code-helpers)
(semantic-load-enable-guady-code-helpers)
(semantic-load-enable-excessive-code-helpers)
(semantic-load-enable-semantic-debugging-helpers)
 
;; Enable SRecode (Template management) minor-mode.
(global-srecode-minor-mode 1)

(provide 'cedet-settings)

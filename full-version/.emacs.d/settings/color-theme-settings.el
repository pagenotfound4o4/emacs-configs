;;Color-Theme≈‰÷√Œƒº˛
;;Version: 6.6.0
;;URL: http://www.nongnu.org/color-theme/

;(add-to-list 'load-path "~/.emacs.d/plugins/color-theme/")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-blackboard)))

(provide 'color-theme-settings)

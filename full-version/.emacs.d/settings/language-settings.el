;;代码语言配置文件
;;包含高亮配置，括号匹配，空格设置

;;更加丰富的高亮
(require 'generic)
(require 'generic-x)

;;语法高亮
(global-font-lock-mode t)

;;设置C/C++默认格式
(add-hook 'c-mode-common-hook (lambda()(c-set-style "stroustrup")))
(add-hook 'c++-mode-common-hook (lambda()(c-set-style "stroustrup")))

;;显示括号匹配
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;;默认使用空格替代TAB
(setq-default indent-tabs-mode nil)

;;设置默认tab宽度为4
(setq default-tab-width 4)

;;设置HTML-mode的默认tab宽度为4
(add-hook 'html-mode-hook
          (lambda()
            (setq sgml-basic-offset 4)))

;;设置不用空格替代TAB的模式
(dolist (hook (list
               'makefile-mode
               ))
  (add-hook hook '(lambda () (setq indent-tabs-mode t))))

;在状态条上显示当前光标在哪个函数体内部
(which-function-mode t)

;;在minibuffer里启用自动补全函数和变量
(icomplete-mode t)

(provide 'language-settings)

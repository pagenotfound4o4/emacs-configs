;;----------.emacs----------
;;GNU Emacs 配置文件
;;Author:Unlucky
;;E-mail:unlucky1990@gmail.com
;;Blog:http://unlucky.orgfree.com/blog

;;----------环境配置(Windows)----------
(setenv "HOME" "D:/Emacs")
(setenv "PATH" "D:/Emacs")
;;设置默认路径
(setq default-directory "~/")

;;----------基本设置----------
;;关闭启动画面
(setq inhibit-startup-message t)
;;在minibuffer里启用自动补全函数和变量
(icomplete-mode t)
;;语法高亮
(global-font-lock-mode t)
;;设置列号行号
(setq column-number-mode t)
(setq line-number-mode t)
;;设置C/C++默认格式
(add-hook 'c-mode-common-hook (lambda()(c-set-style "stroustrup")))
(add-hook 'c++-mode-common-hook (lambda()(c-set-style "stroustrup")))
;;显示括号匹配
(show-paren-mode t)
(setq show-paren-style 'parentheses)
;;显示时间
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(display-time)
;;设置光标类型
(setq-default cursor-type 'bar)
;;取消提示音
(setq ring-bell-function 'ignore)
;;取消自动备份
(setq make-backup-files nil)
;;设置个人信息
(setq user-full-name "Unlucky")
(setq user-mail-address "unlucky1990@gmail.com")
;;设置直接打开和显示图片
(auto-image-file-mode)
;;设置光标靠近鼠标指针时，让鼠标指针自动让开
(mouse-avoidance-mode 'animate)
;;设置标题栏显示buffer的名字
(setq frame-title-format "emacs@%b")
;;设置major-mode为text-mode
(setq default-major-mode 'text-mode)


;;----------Windows配置----------
;;设置字体
(set-default-font "YaHei Consolas Hybrid-11")
;;设置启动时位置及窗口大小
(setq default-frame-alist '((top . 0)(left . 0)(width . 80)(height . 33)))

;;----------Linux配置----------
;;设置启动时位置及窗口大小
;(setq default-frame-alist '((top . 0)(left . 0)(width . 80)(height . 30)))
;;设置ibus-el
;;(add-to-list 'load-path "~/.emacs.d/ibus-el")
;;(require 'ibus)
;;(add-hook 'after-init-hook 'ibus-mode-on)

;;----------插件配置----------
;;AUCTeX配置
(add-to-list 'load-path "~/.emacs.d/plugins/auctex/site-lisp/site-start.d")
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(if (string-equal system-type "windows-nt")
	(require 'tex-mik))

;;Auto-Complete配置
(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/auto-complete//ac-dict")
(ac-config-default)

;;YASnippet配置
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(require 'dropdown-list)
(setq yas/prompt-functions '(yas/x-prompt
			     yas/dropdown-prompt
			     yas/completing-prompt))
(yas/initialize)
(yas/load-directory "~/.emacs.d/plugins/yasnippet/snippets")

;;org-mode配置
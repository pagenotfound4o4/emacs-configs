;;GNU Emacs 配置文件
;;Author: Unlucky
;;Blog: http://unlucky.orgfree.com/blog


;;----------环境配置----------
(if (eq system-type 'windows-nt)
    (progn (setenv "HOME" "D:/Emacs")
	   (setenv "PATH" "D:/Emacs")
	   ;;设置默认路径
	   (setq default-directory "~/")))


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
;;在左侧显示行号
(global-linum-mode 'linum-mode)
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
;;支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t)
;;设置默认tab宽度为4
(setq tab-width 4
      indent-tabs-mode t
      c-basic-offset 4)
;;设置HTML-mode的默认tab宽度为4
(add-hook 'html-mode-hook
	  (lambda()
	    (setq sgml-basic-offset 4)
	    (setq indent-tabs-mode t)))
;;配置字体
(if (eq system-type 'windows-nt)
    (set-default-font "YaHei Consolas Hybrid-11"))
;;设置启动时位置及窗口大小
(if (eq system-type 'windows-nt)
    (setq default-frame-alist '((top . 0)(left . 0)(width . 80)(height . 33)))
  (setq default-frame-alist '((top . 0)(left . 0)(width . 80)(height . 30))))
;;取消滚动栏
(set-scroll-bar-mode nil)
;;取消工具栏
(tool-bar-mode -1)
;;打开矩形选择模式
(cua-selection-mode t)
;;设置mark-set快捷键
(global-set-key (kbd "S-SPC") 'set-mark-command)


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
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet/")
(require 'yasnippet)
(require 'dropdown-list)
(setq yas/prompt-functions '(yas/x-prompt
			     yas/dropdown-prompt
			     yas/completing-prompt))
(yas/initialize)
(yas/load-directory "~/.emacs.d/plugins/yasnippet/snippets/")

;;IBus配置
(if (eq system-type 'gnu/linux)
    (progn (add-to-list 'load-path "~/.emacs.d/plugins/ibus-el")
	   (require 'ibus)
	   (add-hook 'after-init-hook 'ibus-mode-on)))

;;org-mode配置
(add-to-list 'load-path "~/.emacs.d/plugins/org/")
(require 'org)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

;;color-theme配置
(add-to-list 'load-path "~/.emacs.d/plugins/color-theme/")
(require 'color-theme)
(eval-after-load "color-theme"
   '(progn
      (color-theme-initialize)
      (color-theme-blackboard)))

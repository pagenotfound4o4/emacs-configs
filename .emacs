;;GNU Emacs 配置文件
;;Author: Unlucky
;;Blog: http://unlucky.orgfree.com/blog


;;----------环境配置----------
(if (eq system-type 'windows-nt)
    (progn (setenv "HOME" "D:/Emacs")
           (setenv "PATH" "D:/Emacs")
           ;;设置默认路径
           (setq default-directory "~/")))

;;递归加载.emacs.d文件夹下所有子目录
(let ((default-directory "~/.emacs.d/"))
  (normal-top-level-add-subdirs-to-load-path))

;;----------基本设置----------
;;关闭启动画面
(setq inhibit-startup-message t)

;;取消提示音
(setq ring-bell-function 'ignore)

;;取消自动备份
(setq make-backup-files nil)

;;取消滚动栏
(set-scroll-bar-mode nil)

;;取消工具栏
(tool-bar-mode -1)

;;在minibuffer里启用自动补全函数和变量
(icomplete-mode t)

;;设置列号行号
(setq column-number-mode t)
(setq line-number-mode t)
;;在左侧显示行号
(global-linum-mode 'linum-mode)

(require 'generic-x)
;;语法高亮
(global-font-lock-mode t)
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


;;配置字体
(if (eq system-type 'windows-nt)
    (set-default-font "YaHei Consolas Hybrid-11"))

;;设置启动时位置及窗口大小
(if (eq system-type 'windows-nt)
    (setq default-frame-alist '((top . 0)(left . 0)(width . 80)(height . 33)))
  (setq default-frame-alist '((top . 0)(left . 0)(width . 80)(height . 30))))


;;打开矩形选择模式
(cua-selection-mode t)

;;光标在TAB字符上会显示为一个大方块
(setq x-stretch-cursor t)

;在状态条上显示当前光标在哪个函数体内部
(which-function-mode t)


;;-----快捷键设置-----
;;设置mark-set快捷键
(global-set-key (kbd "S-SPC") 'set-mark-command)


;;----------插件配置----------
;;加载Auto-Complete配置文件
(require 'auto-complete-settings)

;;加载YASnippet配置文件
(require 'yasnippet-settings)

;;加载AUCTeX配置文件
(require 'auctex-settings)

;;加载Color-Theme配置文件
(require 'color-theme-settings)

;;加载IBus配置文件
(require 'ibus-settings)

;;加载Org-Mode配置文件
(require 'org-settings)

;;加载Predictive-Mode配置文件
(require 'predictive-settings)

;;加载Tabbar-Mode配置文件
(require 'tabbar-settings)


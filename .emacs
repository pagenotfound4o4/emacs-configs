;;GNU Emacs 配置文件
;;Author: Unlucky
;;Blog: http://blog.thebeyond.name


;;----------环境配置----------
(if (eq system-type 'windows-nt)
    (progn (setenv "HOME" "D:/Emacs")
           (setenv "PATH" "D:/Emacs")
           ;;设置默认路径
           (setq default-directory "~/")
		   ;;设置启动emacs server
		   (setq server-auth-dir "D:/Emacs/bin")
		   (setq server-name "emacs-server-file")
		   (server-start)))

;;递归加载.emacs.d文件夹下所有子目录
(let ((default-directory "~/.emacs.d/"))
     (normal-top-level-add-subdirs-to-load-path))

	 
;;----------基本设置----------
;;加载外观配置文件
(require 'appearance-settings)

;;取消自动备份
(setq make-backup-files nil)

;;设置个人信息
(setq user-full-name "Unlucky")
(setq user-mail-address "unlucky1990@gmail.com")

;;设置直接打开和显示图片
(auto-image-file-mode)

;;设置major-mode为text-mode
(setq default-major-mode 'text-mode)

;;支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t)

;;打开矩形选择模式
(cua-selection-mode t)

;;设置写入文件编码
(setq default-buffer-file-coding-system 'utf-8)

;;加载代码语言配置文件
(require 'language-settings)

;;加载Gnus配置文件
(require 'gnus-settings)


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

;;加载Highlight-Symbol配置文件
(require 'highlight-symbol-settings)

;;加载IBus配置文件
(require 'ibus-settings)

;;加载Org-Mode配置文件
(require 'org-settings)

;;加载Predictive-Mode配置文件
(require 'predictive-settings)

;;加载Tabbar-Mode配置文件
(require 'tabbar-settings)

;;加载nesC-Mode配置文件
(require 'nesc-settings)

;;加载CEDET配置文件
;(require 'cedet-settings)

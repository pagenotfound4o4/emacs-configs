;;外观配置文件
;;包括界面, 光标, 状态栏, 标题栏, 窗口, 字体等配置

;;关闭启动画面
(setq inhibit-startup-message t)

;;取消提示音
(setq ring-bell-function 'ignore)

;;取消滚动栏
(set-scroll-bar-mode nil)

;;取消工具栏
(tool-bar-mode -1)

;;设置列号行号
(setq column-number-mode t)
(setq line-number-mode t)

;;在左侧显示行号
(global-linum-mode 'linum-mode)

;;显示时间
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(display-time)

;;设置光标类型
(setq-default cursor-type 'bar)

;;设置光标靠近鼠标指针时，让鼠标指针自动让开
(mouse-avoidance-mode 'animate)

;;光标在TAB字符上会显示为一个大方块
(setq x-stretch-cursor t)

;;设置标题栏显示buffer的名字
(setq frame-title-format "emacs@%b")

;;配置字体
(if (eq system-type 'windows-nt)
    (set-default-font "YaHei Consolas Hybrid-11"))

;;设置启动时位置及窗口大小
(if (eq system-type 'windows-nt)
    (setq default-frame-alist '((top . 0)(left . 0)(width . 80)(height . 33)))
  (setq default-frame-alist '((top . 0)(left . 0)(width . 80)(height . 30))))

(provide 'appearance-settings)

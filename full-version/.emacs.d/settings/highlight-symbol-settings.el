;;Highlight-Symbol配置文件
;;Version: 1.1
;;URL: http://nschum.de/src/emacs/highlight-symbol/

(require 'highlight-symbol)

;;自动高亮当前单词
(add-hook 'find-file-hook 'highlight-hooks)
(defun highlight-hooks()
    ;设置空闲时延迟高亮时间
    (setq highlight-symbol-idle-delay 0.5)
    ;启用highlight-symbol模式
    (highlight-symbol-mode t))

(provide 'highlight-symbol-settings)

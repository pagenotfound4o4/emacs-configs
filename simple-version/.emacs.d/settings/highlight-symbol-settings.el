;;Highlight-Symbol�����ļ�
;;Version: 1.1
;;URL: http://nschum.de/src/emacs/highlight-symbol/

(require 'highlight-symbol)

;;�Զ�������ǰ����
(add-hook 'find-file-hook 'highlight-hooks)
(defun highlight-hooks()
    ;���ÿ���ʱ�ӳٸ���ʱ��
    (setq highlight-symbol-idle-delay 0.5)
    ;����highlight-symbolģʽ
    (highlight-symbol-mode t))

(provide 'highlight-symbol-settings)

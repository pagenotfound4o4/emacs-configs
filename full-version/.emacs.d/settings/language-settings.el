;;�������������ļ�
;;�����������ã�����ƥ�䣬�ո�����

;;���ӷḻ�ĸ���
(require 'generic)
(require 'generic-x)

;;�﷨����
(global-font-lock-mode t)

;;����C/C++Ĭ�ϸ�ʽ
(add-hook 'c-mode-common-hook (lambda()(c-set-style "stroustrup")))
(add-hook 'c++-mode-common-hook (lambda()(c-set-style "stroustrup")))

;;��ʾ����ƥ��
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;;Ĭ��ʹ�ÿո����TAB
(setq-default indent-tabs-mode nil)

;;����Ĭ��tab���Ϊ4
(setq default-tab-width 4)

;;����HTML-mode��Ĭ��tab���Ϊ4
(add-hook 'html-mode-hook
          (lambda()
            (setq sgml-basic-offset 4)))

;;���ò��ÿո����TAB��ģʽ
(dolist (hook (list
               'makefile-mode
               ))
  (add-hook hook '(lambda () (setq indent-tabs-mode t))))

;��״̬������ʾ��ǰ������ĸ��������ڲ�
(which-function-mode t)

;;��minibuffer�������Զ���ȫ�����ͱ���
(icomplete-mode t)

(provide 'language-settings)

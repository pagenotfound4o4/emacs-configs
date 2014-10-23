;;GnusÅäÖÃÎÄ¼ş

(setq gnus-select-method '(nntp "news.newsfan.net"))
(setq gnus-default-charset 'utf-8
      gnus-group-name-charset-group-alist '((".*" . utf-8))
      gnus-summary-show-article-charset-alist
      '((1 . utf-8)
        (2 . gb18030)
        (3 . chinese-iso-8bit)
        (4 . gbk)
        (5 . big5)
        (6 . cn-gb-2312))
      gnus-newsgroup-ignored-charsets
      '(unknown-8bit x-unknown iso-8859-1))

(provide 'gnus-settings)

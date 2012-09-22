(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(js2-highlight-level 1))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;;auto-complete自动补全
(add-to-list 'load-path "~/.emacs.d/auto-complete/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/ac-dict")
(ac-config-default)
;;not to use quick help
(setq ac-use-quick-help nil)

;;显示时间
(display-time-mode 1)
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(setq display-time-use-mail-icon t)
(setq display-time)

;;关闭开机画面.
(setq inhibit-startup-message t)
;;光标禁止闪烁-1 光标闪烁1
(blink-cursor-mode 1)
(show-paren-mode t)
(setq show-paren-style 'parentheses)
;;括号匹配时显示另外一边的括号
(mouse-avoidance-mode 'animate)
;;进行语法加亮
(global-font-lock-mode t)
;;设置有用的个人信息
(setq user-full-name "Roman")
(setq user-mail-address "shuangxinyu@gmail.com")
;;设置tab为4个空格的宽度，而不是原来的2个
(setq c-basic-offset 4)
(setq default-tab-width 4)
(setq-default indent-tabs-mode nil)
;;不产生备份文件，临时文件
(setq make-backup-files nil)
(setq-default make-backup-files nil)
;;显示列号
(setq column-number-mode t)
;;让 dired 可以递归的拷贝和删除目录
(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top)
(setq visible-bell t)
;;打开图片显示功能
(auto-image-file-mode t)

;; 字体设置 
;;(set-default-font "YaHeiConsolas")
;;显示行号
(add-to-list 'load-path "~/.emacs.d/")
(require 'linum)
(setq linum-format "%3d")
(add-hook 'find-file-hooks(lambda()(linum-mode 1)));;对所有文件生效
;;goto功能
(global-set-key [(meta g)]'goto-line)
;;kill ring设置
(setq kill-ring-max 200)
;;设置sentence-end识别中文标点，不用在 fill 时在句号后插入两个空格。
(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)
;;在标题栏显示buffer的名字和文件路径
(setq frame-title-format 
	        '("GNU Emacs ["(buffer-file-name" %f \] "
							         (dired-directory dired-directory "%b \]"))))
;;选择方向切换窗口
( global-set-key [(meta left)] 'windmove-left ) ; move to left windnow
( global-set-key [(meta right)] 'windmove-right ) ; move to right window
( global-set-key [(meta up)] 'windmove-up ) ; move to upper window
( global-set-key [(meta down)] 'windmove-down ) ; move to downer window

(setenv "HOME" "D:/emacs-23.3")
(setenv "PATH" "D:/emacs-23.3")
;;set the default file path
(setq default-directory "~/")
;;try to improve slow performance on windows.
(setq w32-get-true-file-attributes nil)

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
;;el-get包管理
(add-to-list 'load-path "~/.emacs.d/el-get/el-get/")
(require 'el-get)

;;chrome-emacs plugin
(add-to-list 'load-path "~/.emacs.d/")
(require 'edit-server)
(edit-server-start)

;;auto-complete自动补全
(add-to-list 'load-path "~/.emacs.d/el-get/auto-complete/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacsf.d/el-get/auto-complete/ac-dict")
(ac-config-default)
;;not to use quick help
;(setq ac-use-quick-help nil)

;;git-emacs 
(add-to-list 'load-path"~/.emacs.d/git-emacs")
(require 'git-emacs)

;;muse:authoring and publishing environment for Emacs
(add-to-list 'load-path "~/.emacs.d/el-get/muse/lisp/")
(require 'muse-mode) ;load authoring mode
(require 'muse-html) ;load publishing styles 
(require 'muse-latex) ;load Latex/PDF publishing styles
(require 'muse-texinfo) ;load Info publishing style
(require 'muse-docbook) ;load DocBook publishing style
(require 'muse-project) ;publish files in projects

;;nxhtml-Emacs utilities for web development
(add-to-list 'load-path "~/.emacs.d/el-get/js2-mode/")
(require 'js2-mode)
(load "~/.emacs.d/el-get/nxhtml/autostart.el")
(setq mumamo-background-colors nil)
(add-to-list 'auto-mode-alist'("\\.thtml$" . django-html-mumamo-mode))

;;ibus 在ubuntu下的调用
;(add-to-list 'load-path "~/.emacs.d/ibus-el-0.2.1/")
;(require 'ibus)
;(add-hook 'after-init-hook 'ibus-mode-on)
;;Ctrl+分号开关ibus输入法
;;(global-set-key [(control ?;)] 'ibus-toggle)

;;tabbar 为emacs建立tab
(add-to-list 'load-path "~/.emacs.d/el-get/")
(require 'tabbar)
(tabbar-mode t)
;(global-set-key [C-S-iso-lefttab]' tabbar-backward)
(global-set-key (kbd "<S-tab>")' tabbar-backward)
(global-set-key (kbd "<C-tab>")' tabbar-forward)

;;Icicles
(add-to-list 'load-path "~/.emacs.d/icicles/")
(load "~/.emacs.d/el-get/icicles-install.el")
;;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;;choosing a color theme by cycling among themes
;;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
(add-to-list 'load-path "~/.emacs.d/el-get/color-theme-6.6.0/")
(require 'color-theme)
(color-theme-initialize)
(setq my-color-themes (list 'color-theme-R1 'color-theme-billw 'color-theme-deep-blue 'color-theme-jsc-dark))
(defun my-theme-set-default () ; Set the first row
      (interactive)
      (setq theme-current my-color-themes)
      (funcall (car theme-current)))
     
    (defun my-describe-theme () ; Show the current theme
      (interactive)
      (message "%s" (car theme-current)))
     
   ; Set the next theme (fixed by Chris Webber - tanks)
    (defun my-theme-cycle ()		
      (interactive)
      (setq theme-current (cdr theme-current))
      (if (null theme-current)
      (setq theme-current my-color-themes))
      (funcall (car theme-current))
      (message "%S" (car theme-current)))
  
    (setq theme-current my-color-themes)
    (setq color-theme-is-global nil) ; Initialization
    (my-theme-set-default)
    (global-set-key [f12] 'my-theme-cycle)

;; matlab-mode 配置
;; Edit the path in the following line to reflect the 
;; actual location of the MATLAB root directory on your system. 
(add-to-list 'load-path "/home/roman/software/matlab/java/extern/EmacsLink/lisp/") 
(autoload 'matlab-eei-connect "matlab-eei" 
"Connects Emacs to MATLAB's external editor interface.") 

(autoload 'matlab-mode "matlab" "Enter Matlab mode." t) 
(setq auto-mode-alist (cons '("\\.m\\'" . matlab-mode) auto-mode-alist)) 
(autoload 'matlab-shell "matlab" "Interactive Matlab mode." t) 

(setq matlab-indent-function t)	 ; if you want function bodies indented 
(setq matlab-verify-on-save-flag nil)	; turn off auto-verify on save 
(defun my-matlab-mode-hook () 
(setq fill-column 76) 
(imenu-add-to-menubar "Find"))	 ; where auto-fill should wrap 
(add-hook 'matlab-mode-hook 'my-matlab-mode-hook) 

;; Load CEDET
;(load-file "~/.emacs.d/cedet-1.0/common/cedet.el")
(semantic-mode 1)
;; Enable EDE (Project Management) features
(global-ede-mode 1)
;; speedbar的快捷键
(global-set-key [(f4)]'speedbar-get-focus)

;;ecb
(add-to-list 'load-path "~/.emacs.d/ecb-2.40")
;(require 'ecb)
(require 'ecb-autoloads)
;;cscope
(add-to-list 'load-path "~/.emacs.d/cscope-15.7a/contrib/xcscope")
(require 'xcscope)

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
( global-set-key [ M-left ] 'windmove-left ) ; move to left windnow
( global-set-key [ M-right ] 'windmove-right ) ; move to right window
( global-set-key [ M-up ] 'windmove-up ) ; move to upper window
( global-set-key [ M-down ] 'windmove-down ) ; move to downer window
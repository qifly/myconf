;;不显示GNU emacs启动界面
 (setq inhibit-startup-message t) 
;; 显示列号
 (setq column-number-mode t)
;;滚动条设置
 (scroll-bar-mode -1) ;;不显示滚动条 太丑
;;语法高亮
 (global-font-lock-mode t) 
 (which-function-mode t)                 ;在状态条上显示当前光标在哪个函数体内部
;;No backup file
(setq make-backup-files nil)
;;No temp file
(setq auto-save-default nil)

;;启动emacs时的窗口大小
(setq default-frame-alist'((height . 30) (width . 123) (menu-bar-lines . 20) (tool-bar-lines . 0)))

;;; ### Coding ###
 ;;; --- 编码设置
 (setq default-buffer-file-coding-system 'utf-8-unix)            ;缓存文件编码
 (setq default-file-name-coding-system 'utf-8-unix)              ;文件名编码
 (setq default-keyboard-coding-system 'utf-8-unix)               ;键盘输入编码
 (setq default-process-coding-system '(utf-8-unix . utf-8-unix)) ;进程输出输入编码
 (setq default-sendmail-coding-system 'utf-8-unix)               ;发送邮件编码
 (setq default-terminal-coding-system 'utf-8-unix)               ;终端编码

;;;字体
(set-language-environment 'UTF-8) 
(set-locale-environment "UTF-8") 
(set-default-font "-unknown-文泉驿等宽正黑-normal-normal-normal-*-15-*-*-*-*-0-iso10646-1")
;(set-fontset-font "fontset-default" 'unicode '("WenQuanYi Zen Hei Mono" . "unicode-ttf"))

;;;auto-complete
(add-to-list 'load-path "~/.emacs.d/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/ac-dict")
(ac-config-default)

;;color theme
(color-theme-initialize)
(color-theme-gnome2)

;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

;;;Zencoding
(add-to-list 'load-path "~/.emacs.d/zencoding")
(require 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode) ;; Auto-start on any markup modes
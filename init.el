;;set cursor 
(package-initialize)

;;关闭工具栏 tool-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)

;; 关闭启动帮助画面
(setq inhibit-splash-screen -1)

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; 这种快捷键，将函数 open-init-file 绑定 <f2> 键
(global-set-key (kbd "<f2>") 'open-init-file)


;;隐藏滚动条
(scroll-bar-mode -1)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (monokai-theme company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;最近打开
(require 'recentf)

;;覆盖选中的内容
(delete-selection-mode t)

;;开启括号匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;高亮当前行
(global-hl-line-mode t)

;;get start fullscreen
(setq initial-frame-alist (quote ((fullscreen . maximized))))

(require 'color-theme)
(color-theme-initialize)
(color-theme-classic)

(setq-default cursor-type 'bar)

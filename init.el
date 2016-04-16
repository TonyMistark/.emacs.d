;;emacs config
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;;菜单栏
(tool-bar-mode -1)
;;滚动条
(scroll-bar-mode -1)
;;启动画面
(setq inhibit-splash-screen t)

;;快捷键C-x i打开init.el 
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "C-x i") 'open-my-init-file)

;;补全
(global-company-mode t)
;;光标
(setq-default cursor-type 'bar)
;;禁止生成备份文件









(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (solarized-theme smartparens nodejs-repl monokai-theme js2-mode hungry-delete exec-path-from-shell counsel company color-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

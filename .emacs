
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(put 'upcase-region 'disabled nil)

;;(setq stack-trace-on-error t)
;;(global-set-key [(f5)] 'speedbar)
;;(put 'dired-find-alternate-file 'disabled nil)

(setq default-tab-width 4)
(setq-default indent-tabs-mode nil)

;;(setq semanticdb-project-roots 
;;      (list
;;        (expand-file-name "/")))


(add-to-list 'load-path "~/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

;; Graphviz dot mode
(load-file "~/.emacs.d/graphviz-dot-mode.el")


(global-set-key (kbd "C-c C-v") 'view-mode)
(add-hook 'emacs-lisp-mode-hook '(lambda () (view-mode 1)))
(add-hook 'c-mode-common-hook '(lambda () (view-mode 1)))
(add-hook 'c++-mode  '(lambda () (view-mode 1)))
(add-hook 'java-mode '(lambda () (view-mode 1)))
(add-hook 'python-mode-hook '(lambda () (view-mode 1)))
(view-mode 1)
;;(require 'view-mode)



(global-set-key [(f7)] 'visit-tags-table)         ; visit tags table  
(global-set-key [C-f7] 'sucha-generate-tag-table) ; generate tag table  



;;w3m
;;(require 'w3m-load)
;;(setq w3m-home-page "http://www.google.com.hk")

;;scilab
;;(require 'scilab)


(global-set-key (kbd "C-c C-n") 'linum-mode)
(add-hook 'c-mode-common-hook '(lambda () (linum-mode 1)))
(add-hook 'emacs-lisp-mode-hook '(lambda () (linum-mode 1)))
(add-hook 'c++-mode '(lambda () (linum-mode 1)))
(add-hook 'java-mode '(lambda () (linum-mode 1)))
(add-hook 'python-mode-hook '(lambda () (linum-mode 1)))
(add-hook 'org-mode '(lambda () (linum-mode 1)))
(add-hook 'xml-mode '(lambda () (linum-mode 1)))

(linum-mode 1)

;;(require 'linum-mode)
;;(setq linum-format "%3d ")
;;(add-hook 'find-file-hooks (lambda () (linum-mode 1)))

;;tags
;;(setq 'tags-table-list 
;;      '("./TAGS" "/usr/src"))
(setq tags-revert-without-query 1)

;;load cedet
(add-to-list 'load-path
             "/home/gale/Downloads/cedet-1.1/common")                                          
;;(load-file "/home/gale/Downloads/cedet-1.1/common")                                            
(require 'cedet)  
(semantic-load-enable-minimum-features)
(semantic-load-enable-code-helpers)
(semantic-load-enable-guady-code-helpers)
(semantic-load-enable-excessive-code-helpers)
(semantic-load-enable-semantic-debugging-helpers)


(add-to-list 'load-path 
             "/home/gale/Downloads/ecb-2.40")
(load-file "/home/gale/Downloads/ecb-2.40/ecb.el")
;;(setq stack-trace-on-error t)
(require 'ecb)
(require 'ecb-autoloads)

;;(add-to-list 'load-path
;;             "/home/gale/Downloads/cedet-1.1/common")

;;(load-file "/home/gale/Downloads/cedet-1.1/common")
;;(require 'cedet)

;;set backgroud color
(add-to-list 'load-path
             "/home/gale/Downloads/color-theme-6.6.0")

(require 'color-theme)
;;(color-theme-initialize)
;;(color-theme-matrix)


;;display timer
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)

;;don't generate backup file and temp file
(setq make-backup-files nil)
(setq-default make-backup-files nil)


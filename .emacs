(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(inhibit-startup-screen t)
 '(package-selected-packages (quote (ac-js2 auto-complete js2-mode neotree))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;Add MELPA repository
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Map <apps> key to M-x.
(global-set-key (kbd "<apps>") 'execute-extended-command)

;; neotree config
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; Bind ac-js2 mode when js2-mode starts
(add-hook 'js2-mode-hook 'ac-js2-mode)

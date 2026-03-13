
;; load org-babel
(require 'org)
(org-babel-load-file (expand-file-name "config.org" user-emacs-directory))
(message ">>> Emacs config loadedd successfully <<<")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(evil-insert-state-modes
   '(term-mode comint-mode erc-mode eshell-mode geiser-repl-mode gud-mode
	       inferior-apl-mode inferior-caml-mode
	       inferior-emacs-lisp-mode inferior-j-mode
	       inferior-python-mode inferior-scheme-mode
	       inferior-sml-mode internal-ange-ftp-mode
	       haskell-interactive-mode prolog-inferior-mode
	       racket-repl-mode reb-mode shell-mode slime-repl-mode
	       utop-mode wdired-mode))
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

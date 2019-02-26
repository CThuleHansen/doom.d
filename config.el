;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
;; MANUAL DANTE HASKELL MODE SETUP
;;

;; https://github.com/jyp/dante
;; https://gogs.kaangenc.me/SeriousBug/doom-emacs/src/kaan/modules/lang/haskell/config.el

;; HASKELL AND DANTE
(require 'haskell-mode)
(add-hook 'haskell-mode-hook 'dante-mode)
(add-hook 'haskell-mode-hook 'flycheck-mode)
;; Enable hlint
(add-hook 'dante-mode-hook '(lambda () (flycheck-add-next-checker 'haskell-dante '(warning . haskell-hlint))))
(setq dante-tap-type-time 0)
(setq flymake-no-changes-timeout nil)
(setq flymake-start-syntax-check-on-newline nil)
(setq flycheck-check-syntax-automatically '(save mode-enabled))


;;Enable flyspell for latex
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'org-mode-hook 'flyspell-mode)
(require 'ispell)
(setq ispell-dictionary "en_GB-ise")

;; Format using gq
(setq-default fill-column 100)

;; Enable Groovy-mode for Jenkinsfile
(add-to-list 'auto-mode-alist '("Jenkinsfile" . groovy-mode))

;; Remember dired target
(setq dired-dwim-target t)

;; ORG MODE AGENDA LIST
(setq org-agenda-files (list "/Users/casperthule/svn/iha_pgl-jointpub/phds/CasperThule/esa-acosim/ESA_DOCS/SRS/todo.org"))

(def-package! tangotango-theme 
	      :config (load-theme 'tangotango t))

;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
;; Enables projectile-switch-project to allow opening a folder
(setq projectile-switch-project-action 'projectile-dired)

;; MANUAL HASKELL-MODE SETUP

;; http://haskell.github.io/haskell-mode/manual/latest/Interactive-Haskell.html
;;(require 'haskell-interactive-mode)
;;(require 'haskell-process)
;;(require 'flycheck)
;;
;;;; The default checker is haskell-stack-ghc but haskell-ghc should be used instead.
;;;; http://www.flycheck.org/en/latest/user/syntax-checkers.html
;;(add-hook 'haskell-mode-hook 'hm-hooks)
;;(defun hm-hooks ()
;;  "My Haskell-mode-hooks"
;;  (interactive-haskell-mode)
;;  (flycheck-select-checker 'haskell-ghc)
;;  )
;;;; Using cabal's integrated REPL capabilities instead of ghci
;;;; https://github.com/serras/emacs-haskell-tutorial/blob/master/tutorial.md
;;(custom-set-variables
;; '(haskell-process-type "cabal-new-repl")
;; '(haskell-process-log t)
;; '(haskell-compile-cabal-build-command  "cabal new-build --ghc-option=-ferror-spans")
;; )

;; DANTE SETUP
;;(add-hook 'haskell-mode-hook 'dante-configure)
;;
;;
;;(defun dante-configure ()
;;  'dante-mode
;;  'flycheck-mode)
;;
;;(setq flymake-no-changes-timeout nil)
;;(setq flymake-start-syntax-check-on-newline nil)
;;(setq flycheck-check-syntax-automatically '(save mode-enabled))
;;
;; MANUAL DANTE HASKELL MODE SETUP
;;
(require 'haskell-mode)
(add-hook 'haskell-mode-hook 'dante-mode)
(add-hook 'haskell-mode-hook 'flycheck-mode)
(setq flymake-no-changes-timeout nil)
(setq flymake-start-syntax-check-on-newline nil)
(setq flycheck-check-syntax-automatically '(save mode-enabled))

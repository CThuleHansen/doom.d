;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
;; Enables projectile-switch-project to allow opening a folder
(setq projectile-switch-project-action 'projectile-dired)

;; http://haskell.github.io/haskell-mode/manual/latest/Interactive-Haskell.html
(require 'haskell-interactive-mode)
(require 'haskell-process)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
;; Using cabal's integrated REPL capabilities instead of ghci
;; https://github.com/serras/emacs-haskell-tutorial/blob/master/tutorial.md
(custom-set-variables
  '(haskell-process-type "cabal-new-repl")
  '(haskell-process-log t)
  '(haskell-compile-cabal-build-command  "cabal new-build --ghc-option=-ferror-spans")
  )

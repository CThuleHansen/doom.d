;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here


;; LATEX CONFIGURATION
;(def-package! tex
;  :config
;  (setq TeX-PDF-mode t)
;  ;; Generate sync file and sync with C-v
;  (eval-after-load
;      "tex" '(add-to-list 'TeX-command-list
;                          '("latexmk" "latexmk -pdf %t --synctex=1" TeX-run-TeX)))
;
;  ;; Enable spell-checking
;  (add-hook 'LaTeX-mode-hook 'flyspell-mode)
;  (add-hook 'LaTeX-mode-hook
;            '(lambda ()
;               (reftex-mode)))
;;; LateX keywords that need colouring
;(setq font-latex-match-reference-keywords
;      '(
;        ("ac" "[{")
;        ("todo" "[{")
;        ("kw" "[{")
;        ("vsl" "[{")
;        ("vpp" "[{")
;        ("vrt" "[{")
;        ("acp" "[{")
;        ("contribution" "[{")
;        ("acrodef" "[{")
;        ("crefName" "[{")
;        ("cref" "[{")
;        ("Cref" "[{")
;        ("cnref" "[{")
;        ("vdmkw" "[{")
;        ))
;)



;; Necessary such that projectile does not attempt to contact SVN server
;;https://github.com/bbatsov/projectile/issues/520
(setq projectile-svn-command "find . -type f -not -iwholename '*.svn/*' -print0")

;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

;; Set default ispell dictionary
(after! ispell (setq ispell-dictionary "en_GB"))    ;set the default dictionary

;; LATEX CONFIGURATION
(def-package! tex
  :config
  ;; Enable spell-checking
  (add-hook 'LaTeX-mode-hook 'flyspell-mode)
                                        ;  (add-hook 'LaTeX-mode-hook
                                        ;            '(lambda ()
                                        ;               (reftex-mode)))
;;; LateX keywords that need colouring
  (setq font-latex-match-reference-keywords
        '(
          ("ac" "[{")
          ("todo" "[{")
          ("kw" "[{")
          ("vsl" "[{")
          ("vpp" "[{")
          ("vrt" "[{")
          ("acp" "[{")
          ("contribution" "[{")
          ("acrodef" "[{")
          ("crefName" "[{")
          ("cref" "[{")
          ("Cref" "[{")
          ("cnref" "[{")
          ("vdmkw" "[{")
          ))
  )


;; Necessary such that projectile does not attempt to contact SVN server
;;https://github.com/bbatsov/projectile/issues/520
(setq projectile-svn-command "find . -type f -not -iwholename '*.svn/*' -print0")


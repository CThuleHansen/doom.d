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

(load! "hs-lint")
(require 'hs-lint)
(defun hs-lint-hook ()
  (local-set-key "\C-cl" 'hs-lint))
(add-hook 'haskell-mode-hook 'hs-lint-hook)




;; DICTIONARY
(require 'ispell)
(require 'flyspell)
(setq ispell-dictionary "en_GB-ise")
(add-hook 'org-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)

;; Format using gq
(setq-default fill-column 80)

;; Enable Groovy-mode for Jenkinsfile
(add-to-list 'auto-mode-alist '("Jenkinsfile" . groovy-mode))

;; Remember dired target
(setq dired-dwim-target t)

;; ORG MODE AGENDA LIST
(setq org-agenda-files (list "/Users/casperthule/svn/iha_pgl-jointpub/phds/CasperThule/esa-acosim/ESA_DOCS/SRS/todo.org"))




;; VISUAL CONFIGURATION
;; It is necessary to have after! hl-line, because the face does not exist before it has been loaded.
;; Without after emacs will throw "invalid face hl-line"

(def-package! base16-theme
  :config
  (load-theme 'base16-default-dark t)
  (after! hl-line
    (set-face-background 'hl-line "gray15")))

(set-face-attribute 'default nil :height 150)
(set-face-attribute 'region nil :background "gray30")


;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
;; may have their own settings.
;;(load-theme 'doom-molokai t)
;;
;;(after! hl-line
;;  (set-face-background 'hl-line "gray91"))
;;
;;(setq doom-font (font-spec :size 15))


;; LATEX CONFIGURATION

(def-package! tex;
  :config
  (setq TeX-PDF-mode t)
  ;; Generate sync file and sync with C-v
  (eval-after-load
      "tex" '(add-to-list 'TeX-command-list
                          '("latexmk" "latexmk -pdf %t --synctex=1" TeX-run-TeX)))

  ;; Enable spell-checking
  (add-hook 'LaTeX-mode-hook 'flyspell-mode)
  (add-hook 'LaTeX-mode-hook
            '(lambda ()
               (reftex-mode)))
;; LateX keywords that need colouring
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
;; Required to get pdf-tools working: https://github.com/politza/pdf-tools/issues/480
(setenv "PKG_CONFIG_PATH" "/usr/local/lib/pkgconfig:/usr/local/Cellar/libffi/3.2.1/lib/pkgconfig")

;; Beacon - lights up when cursor jumps
(def-package! beacon
  :config
  (setq-default beacon-lighter "")
  (setq-default beacon-size 5)
(add-hook 'after-init-hook 'beacon-mode))

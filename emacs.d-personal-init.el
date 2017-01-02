;;; emacs.d-personal-init.el --- jhanschoo's customizations for Emacs Prelude
;;; Commentary:
;; Copyright (C) 2015-2016 Johannes Choo <jhanschoo@gmail.com>
;; This file is *NOT* part of GNU Emacs.
;;; Code:

(prelude-require-packages
 '(color-theme-sanityinc-tomorrow))

(add-to-list
 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

;;(eval-after-load 'flycheck
;;  '(add-hook 'flycheck-mode-hook #'flycheck-haskell-setup))

; make Right Alt passthrough
(setq ns-right-alternate-modifier nil)


;; Haskell process configuration

;;(set-variable 'haskell-process-suggest-remove-import-lines t)
;;(set-variable 'haskell-process-auto-import-loaded-modules t)
;;(set-variable 'haskell-process-log t)

;; customize whitespace-mode

(setq whitespace-style '(face tabs empty trailing))

;; AUCTeX config

;;(add-hook ’plain-TeX-mode-hook
;;           (lambda () (set (make-variable-buffer-local ’TeX-electric-math)
;;                           (cons "$" "$"))))


;;(add-hook ’LaTeX-mode-hook
;;           (lambda () (set (make-variable-buffer-local ’TeX-electric-math)
;;                           (cons "\\(" "\\)"))))
;;(setq-default TeX-engine "luatex")

(setq LaTeX-indent-environment-list
      '(("verbatim" current-indentation)
        ("verbatim*" current-indentation)
        ("displaymath")
        ("equation")
        ("equation*")
        ("picture")
        ("tabbing")))

(setq font-latex-fontify-sectioning "color")

;; org-mode config

(setq org-directory "~/Documents/org")
(setq org-default-notes-file (concat org-directory "/index.org"))
(setq org-mobile-directory org-directory)
(setq org-mobile-inbox-for-pull org-default-notes-file)
(setq org-html-doctype "xhtml5")
(setq org-html-html5-fancy t)
;;(set-variable 'org-html-use-infojs t)
;;(set-variable 'org-html-head "<script src=\"https://cdnjs.cloudflare.com/ajax/libs/skel/2.2.1/skel.min.js\"></script>")

(setq org-publish-project-alist
              '(("org-notes"
                 :base-directory "~/Documents/org"
                 :publishing-directory "~/Documents/public_html/"
                 :recursive t
                 :publishing-function org-html-publish-to-html
                 :headline-levels 4
                 :auto-preamble t
                 )
                ("org-static"
                 :base-directory "~/Documents/org"
                 :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
                 :publishing-directory "~/Documents/public_html/"
                 :recursive t
                 :publishing-function org-publish-attachment)
                ("org"
                 :components ("org-notes" "org-static"))))
;;(define-key global-map "\C-cc" 'org-capture)

;; Color theme

(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-10"))
(load-theme 'sanityinc-tomorrow-day)
(enable-theme 'sanityinc-tomorrow-day)

;; Unset irritating keybinding s-q
(global-unset-key [8388721])

;; always show line numbers
(global-linum-mode t)

;; recognize terminal punctuation preceding single space as sentence
(setq sentence-end-double-space nil)

;; require polytonic-greek.el
(require 'greek-polytonic)

(provide 'emacs.d-personal-init)
;;; emacs.d-personal-init.el ends here

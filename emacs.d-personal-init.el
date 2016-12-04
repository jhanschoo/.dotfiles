(prelude-require-packages
 '(color-theme-sanityinc-tomorrow))

(add-to-list
 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

;(eval-after-load 'flycheck
;  '(add-hook 'flycheck-mode-hook #'flycheck-haskell-setup))

; For haskell?

; make Right Alt passthrough
;(setq ns-right-alternate-modifier nil)

(set-variable 'haskell-process-suggest-remove-import-lines t)
(set-variable 'haskell-process-auto-import-loaded-modules t)
(set-variable 'haskell-process-log t)

; disable whitespace-mode

(setq whitespace-style '(face tabs empty trailing))

; org-mode config

(set-variable 'org-directory "~/Documents/org")
(set-variable 'org-default-notes-file (concat org-directory "/index.org"))
(set-variable 'org-mobile-directory org-directory)
(set-variable 'org-mobile-inbox-for-pull org-default-notes-file)
(set-variable 'org-html-doctype "xhtml5")
(set-variable 'org-html-html5-fancy t)
;(set-variable 'org-html-use-infojs t)
;;(set-variable 'org-html-head "<script src=\"https://cdnjs.cloudflare.com/ajax/libs/skel/2.2.1/skel.min.js\"></script>")

(set-variable 'org-html-head "<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/skeleton/2.0.4/skeleton.min.css\" />
<link href='http://fonts.googleapis.com/css?family=Gentium+Basic:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<style type=\"text/css\">
body {
font-family: \"Gentium Basic\", serif;
}

blockquote, dl, figure, form, ol, p, pre, table, ul {
margin: 0.5em 0 0.5em 0;
}
</style>")

(set-variable 'org-publish-project-alist
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
;(define-key global-map "\C-cc" 'org-capture)

; Color theme

(load-theme 'sanityinc-tomorrow-night)

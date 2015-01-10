(prelude-require-packages
 '(color-theme-sanityinc-tomorrow))

(add-to-list
 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(set-variable 'haskell-process-suggest-remove-import-lines t)
(set-variable 'haskell-process-auto-import-loaded-modules t)
(set-variable 'haskell-process-log t)


(load-theme 'sanityinc-tomorrow-bright)

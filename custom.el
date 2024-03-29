(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#4F4F4F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#6F6F6F"])
 '(compilation-message-face 'default)
 '(cua-global-mark-cursor-color "#93E0E3")
 '(cua-normal-cursor-color "#DCDCCC")
 '(cua-overwrite-cursor-color "#F0DFAF")
 '(cua-read-only-cursor-color "#7F9F7F")
 '(custom-safe-themes
   '("fee7287586b17efbfda432f05539b58e86e059e78006ce9237b8732fde991b4c" "7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" "4c56af497ddf0e30f65a7232a8ee21b3d62a8c332c6b268c81e9ea99b11da0d3" "0fffa9669425ff140ff2ae8568c7719705ef33b7a927a0ba7c5e2ffcfac09b75" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "285d1bf306091644fb49993341e0ad8bafe57130d9981b680c1dbd974475c5c7" "c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" "0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" default))
>>>>>>> bab6b512b0a130e754d6b09fec9136f8868d12f4
 '(deft-strip-title-regexp
    "\\(?:^%+\\|^#\\+STARTUPFILE: *\\|^[#* ]+\\|-\\*-[[:alpha:]]+-\\*-\\|^Title:[	 ]*\\|#+$\\)")
 '(fci-rule-color "#4F4F4F")
 '(helm-minibuffer-history-key "M-p")
 '(highlight-changes-colors '("#DC8CC3" "#bbb0cb"))
 '(highlight-symbol-colors
   '("#680f63eb5998" "#54db645064d0" "#6097535f5322" "#5c2859a95fa1" "#4ede55f24ea4" "#64dd5979525e" "#530060d16157"))
 '(highlight-symbol-foreground-color "#FFFFEF")
 '(highlight-tail-colors
   '(("#4F4F4F" . 0)
     ("#488249" . 20)
     ("#5dacaf" . 30)
     ("#57a2a4" . 50)
     ("#b6a576" . 60)
     ("#ac7b5a" . 70)
     ("#aa5790" . 85)
     ("#4F4F4F" . 100)))
 '(hl-bg-colors
   '("#b6a576" "#ac7b5a" "#9f5c5c" "#aa5790" "#85749c" "#57a2a4" "#5dacaf" "#488249"))
 '(hl-fg-colors
   '("#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F"))
 '(hl-paren-colors '("#93E0E3" "#F0DFAF" "#8CD0D3" "#bbb0cb" "#7F9F7F"))
 '(lsp-ui-doc-border "#FFFFEF")
 '(nrepl-message-colors
   '("#CC9393" "#DFAF8F" "#F0DFAF" "#488249" "#95d291" "#57a2a4" "#93E0E3" "#DC8CC3" "#bbb0cb"))
 '(org-agenda-files
   '("~/Dropbox/notes/bio/bio.org" "~/Dropbox/notes/demo/demo.org" "~/Dropbox/notes/discrete/discrete.org" "~/Dropbox/notes/grad/grad.org" "~/Dropbox/notes/kahniashvili/kahniashvili.org" "~/Dropbox/notes/malt/malt.org" "~/Dropbox/notes/meth/meth.org" "~/Dropbox/notes/mpl/mpl.org" "~/Dropbox/notes/numeric/numeric.org" "~/Dropbox/notes/physics/physics.org" "~/Dropbox/notes/prob/prob.org" "~/Dropbox/notes/qcqi/qcqi.org" "~/Dropbox/notes/topo/topo.org" "~/Dropbox/notes/bullet.org"))
 '(package-selected-packages
   '(org-bullets org-ref scroll-restore good-scroll pdf-tools org-noter deft haskell-mode ob-async yasnippet auctex org-mode evil-org solarized-theme evil-collection evil-indent-textobject solarized evil-leader evil-mode use-package evil-visual-mark-mode))
 '(pos-tip-background-color "#4F4F4F")
 '(pos-tip-foreground-color "#FFFFEF")
 '(safe-local-variable-values
   '((eval progn
	   (org-babel-goto-named-src-block "setup")
	   (org-babel-execute-src-block)
	   (outline-hide-sublevels 1))
     (eval let nil
	   (org-babel-goto-named-src-block "setup")
	   (org-babel-execute-src-block))
     (eval esf/execute-startup-block)))
 '(smartrep-mode-line-active-bg (solarized-color-blend "#7F9F7F" "#4F4F4F" 0.2))
 '(term-default-bg-color "#3F3F3F")
 '(term-default-fg-color "#DCDCCC")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   '((20 . "#CC9393")
     (40 . "#df51b97ca1ae")
     (60 . "#e83dcc9aa8b1")
     (80 . "#F0DFAF")
     (100 . "#cadbca369f51")
     (120 . "#b7fbbf79973e")
     (140 . "#a52cb4cc8f3f")
     (160 . "#9260aa2d8754")
     (180 . "#7F9F7F")
     (200 . "#87dbb4dba003")
     (220 . "#8b6ebfadb0a1")
     (240 . "#8e96ca9fc17c")
     (260 . "#914ed5b0d293")
     (280 . "#93E0E3")
     (300 . "#90c5da6cdd6f")
     (320 . "#8f5dd735da39")
     (340 . "#8df4d401d704")
     (360 . "#8CD0D3")))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   '(unspecified "#3F3F3F" "#4F4F4F" "#9f5c5c" "#CC9393" "#488249" "#7F9F7F" "#b6a576" "#F0DFAF" "#57a2a4" "#8CD0D3" "#aa5790" "#DC8CC3" "#5dacaf" "#93E0E3" "#DCDCCC" "#6F6F6F"))
 '(xterm-color-names
   ["#4F4F4F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#fffff6"])
 '(xterm-color-names-bright
   ["#3F3F3F" "#DFAF8F" "#878777" "#6F6F6F" "#DCDCCC" "#bbb0cb" "#FFFFEF" "#FFFFFD"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-latex-slide-title-face ((t (:inherit font-lock-type-face)))))


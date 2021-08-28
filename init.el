(require 'package)

(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(setq package-check-signature nil)
(package-initialize)
(package-refresh-contents)

;;package manager - pretty important
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

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
   '("0fffa9669425ff140ff2ae8568c7719705ef33b7a927a0ba7c5e2ffcfac09b75" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "285d1bf306091644fb49993341e0ad8bafe57130d9981b680c1dbd974475c5c7" "c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" "0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" default))
 '(deft-strip-title-regexp
    "\\(?:^%+\\|^#\\+STARTUPFILE: *\\|^[#* ]+\\|-\\*-[[:alpha:]]+-\\*-\\|^Title:[	 ]*\\|#+$\\)")
 '(fci-rule-color "#4F4F4F")
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
   '("~/Dropbox/notes/aqp/aqp.org" "~/Dropbox/notes/kahniashvili/kahniashvili.org" "~/Dropbox/notes/malt/malt.org" "~/Dropbox/notes/mech/mech.org" "~/Dropbox/notes/prob/prob.org" "~/Dropbox/notes/survey/survey.org" "~/Dropbox/notes/thermal/thermal.org" "~/Dropbox/notes/bullet.org"))
 '(package-selected-packages
   '(org-ref scroll-restore good-scroll pdf-tools org-noter deft haskell-mode ob-async yasnippet auctex org-mode evil-org solarized-theme evil-collection evil-indent-textobject solarized evil-leader evil-mode use-package evil-visual-mark-mode))
 '(pos-tip-background-color "#4F4F4F")
 '(pos-tip-foreground-color "#FFFFEF")
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

;;Got to work like vim...
(setq evil-want-keybinding nil)
(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  ;(add-to-list 'evil-motion-state-modes 'doc-view-mode)
  ;(delete 'doc-view-mode evil-normal-state-modes)
  :config
  (evil-mode t))

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (add-to-list 'evil-collection-mode-list 'doc-view-mode)
  :init
  (evil-collection-init))

  ;(use-package evil-leader
  ;  :ensure t
  ;  :config
  ;  (global-evil-leader-mode))

(use-package evil-indent-textobject
  :after evil
  :ensure t)

(use-package org
  :ensure t
  :config
  (require 'org-agenda)
  (require 'org-capture)

  (setq org-startup-indented t)
  (setq org-list-allow-alphabetical t)
  (setq org-latex-pdf-process (list "latexmk -shell-escape -bibtex -f -pdf %f"))
  (org-reload))

(use-package org-bullets
  :ensure t
  :hook (org-mode . org-bullets-mode))

(use-package evil-org
  :ensure t
  :after org
  :config
  (add-hook 'org-mode-hook 'evil-org-mode)
  (add-hook 'evil-org-mode-hook
            (lambda ()
              (evil-org-set-key-theme)))
  (require 'evil-org-agenda)
  (evil-org-agenda-set-keys))

(use-package org-noter
  :ensure t
  :after org
  :config
  ;(add-to-list 'evil-overriding-maps '(org-noter-doc-mode))

  (setq org-noter-insert-note-no-questions t)
  (setq org-noter-insert-note-no-questions t)
  (if (equal system-name "fermi")
      (setq org-noter-notes-window-location 'other-frame))
  (setq org-noter-kill-frame-at-session-end nil)
  (setq org-noter-always-create-frame nil))

(use-package org-ref
  :ensure t
  :after org
  :config

  (require 'org-ref-arxiv)
  (setq org-ref-bibliography-notes "~/Dropbox/notes/kahniashvili/kahniashvili.org"
        org-ref-default-bibliography '("~/Dropbox/notes/kahniashvili/papers/ref.bib")
        org-ref-pdf-directory "~/Dropbox/notes/kahniashvili/papers/")
  )

(defun my/no-op (&rest args))
(advice-add 'org-noter--set-notes-scroll :override 'my/no-op)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (shell . t)
   (latex . t)
   (python . t)))

(setq org-agenda-window-setup 'current-window)
(setq org-agenda-start-on-weekday nil)
(setq org-agenda-todo-list-sublevels nil)
(setq org-refile-targets '((nil :maxlevel . 4)
                           (org-agenda-files :maxlevel . 4)
                           ))

(setq org-agenda-files (directory-files-recursively "~/Dropbox/notes/" "\\.org$"))
(setq org-default-notes-file "~/Dropbox/notes/bullet.org")

(setq org-agenda-custom-commands
      '(("c" . "My Custom Agendas")
        ("cu" "Unscheduled TODO"
         ((todo ""
                ((org-agenda-overriding-header "\nUnscheduled TODO")
                 (org-agenda-skip-function '(org-agenda-skip-entry-if 'scheduled)))))
         nil
         nil)))

(defun my/capture-seldon-file-name ()
  (interactive)
  (let ((name (read-string "Filename: ")))
    (expand-file-name (format "%s-%s.org"
                              name
                              (format-time-string "%Y-%m-%d"))
                      "~/Dropbox/seldon/")))

(setq org-capture-templates
      '(("t" "Todo Entry" entry (file+headline org-default-notes-file "Unorganized")
         "* TODO %^{Title}\n %? %i\n")
        ("c" "Calendar Entry" entry (file+headline org-default-notes-file "Random Meetings")
         "* %^{Title}\nSTART TIME: %^{Start Time}T\nEND TIME: %^{End Time}U\nLocation: %^{Location}\n\n%?")
        ("z" "Seldon Entry" entry (file my/capture-seldon-file-name) "* %^{Title}\n#+STARTUP: showall\n#+STARTUP latexpreview\n#+STARTUP inlineimages")))

(if (equal system-name "landau") 
    (setq org-latex-create-formula-image-program 'imagemagick)
    nil)

(setq font-latex-fontify-sectioning 'color)
(setq font-latex-fontify-script nil)
(setq font-tex-fontify-script nil)

(setq org-format-latex-options (plist-put org-format-latex-options :scale 1.5))
(add-to-list 'org-latex-packages-alist '("" "siunitx" t))
(add-to-list 'org-latex-packages-alist '("" "physics" t))
(add-to-list 'org-latex-packages-alist '("" "mathrsfs" t))


(add-hook 'doc-view-mode-hook 'auto-revert-mode)

(load "/home/jnthn/.emacs.d/notes.el")

(defun my/org-mode-hook ()
"Stop the org-level headers from increasing in height relative to the other text."
(dolist (face '(org-level-1
                org-level-2
                org-level-3
                org-level-4
                org-level-5))
(setq org-image-actual-width nil)
(set-face-attribute face nil :weight 'semi-bold :height 1.0)))
(add-hook 'org-mode-hook
          (lambda () (add-hook 'after-save-hook #'org-babel-tangle
                          :append :local)))


(add-hook 'org-mode-hook 'my/org-mode-hook) 
(add-hook 'auto-save-hook 'org-save-all-org-buffers)

;;org-mode keybindings
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c C-l") 'org-insert-link)

(use-package deft
  :ensure t
  :config
  (setq deft-extensions '("txt" "org"))
  (setq deft-directory "~/Dropbox/seldon"))

;;Navigating splits easier
(use-package windmove
  :ensure t
  :config
  (windmove-default-keybindings)
  (setq windmove-wrap-around nil))

;;org-mode conflicts with windmove
(add-hook 'org-shiftup-final-hook 'windmove-up)
(add-hook 'org-shiftleft-final-hook 'windmove-left)
(add-hook 'org-shiftdown-final-hook 'windmove-down)
(add-hook 'org-shiftright-final-hook 'windmove-right)

(pixel-scroll-mode)
(setq pixel-dead-time 0)
(setq pixel-resolution-fine-flag t)
(setq mouse-wheel-scroll-amount '(2))
(setq mouse-wheel-progressive-speed nil)

;;Some basic visual stuff
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

(use-package solarized-theme
  :ensure t
  :config
  (load-theme 'solarized-dark t))
(set-face-attribute 'default t :font "Droid Sans Mono 14")
(set-face-attribute 'default nil :font "Droid Sans Mono 14")

(setq backup-directory-alist '(("" . "~/.emacs.d/backup")))

(add-hook 'text-mode-hook (lambda () (visual-line-mode)))

(setq tramp-default-method "ssh")

(defun my/disable-scroll-bars (frame)
  (modify-frame-parameters frame
                           '((vertical-scroll-bars . nil)
                             (horizontal-scroll-bars . nil))))
(add-hook 'after-make-frame-functions 'my/disable-scroll-bars)

(add-to-list 'default-frame-alist '(font . "Droid Sans Mono 14"))
(add-to-list 'default-frame-alist '(height . 30))
(add-to-list 'default-frame-alist '(width . 80))

(use-package auctex
  :defer t
  :ensure auctex 
  :config
  (setq LaTeX-item-indent 0)
  (setq-default TeX-master nil)
)

(use-package pdf-tools
  :ensure t
  :after evil
  :config
  (evil-set-initial-state 'pdf-view-mode 'normal)
  (pdf-tools-install)
  (setq-default pdf-view-display-size 'fit-page))

(use-package yasnippet
  :ensure t
  :config
  (setq yas-triggers-in-field t)
  (yas-reload-all)
  (yas-recompile-all)
  (add-hook 'text-mode #'yas-minor-mode)
  (add-hook 'LaTeX-mode-hook 'yas-minor-mode)
  (add-hook 'org-mode-hook 'yas-minor-mode)
)

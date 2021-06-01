(require 'package)

(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(setq package-check-signature nil)
(package-initialize)
(package-refresh-contents)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" default))
 '(deft-strip-title-regexp
    "\\(?:^%+\\|^#\\+STARTUPFILE: *\\|^[#* ]+\\|-\\*-[[:alpha:]]+-\\*-\\|^Title:[	 ]*\\|#+$\\)")
 '(org-agenda-files
   '("~/Dropbox/notes/aqp/aqp.org" "~/Dropbox/notes/kahniashvili/kahniashvili.org" "~/Dropbox/notes/malt/malt.org" "~/Dropbox/notes/mech/mech.org" "~/Dropbox/notes/prob/prob.org" "~/Dropbox/notes/survey/survey.org" "~/Dropbox/notes/thermal/thermal.org" "~/Dropbox/notes/tasks.org"))
 '(org-format-latex-header
   "\\documentclass{article}
\\usepackage[usenames]{color}
[PACKAGES]
[DEFAULT-PACKAGES]
\\pagestyle{empty}             % do not remove
% The settings below are copied from fullpage.sty
\\setlength{\\textwidth}{\\paperwidth}
\\addtolength{\\textwidth}{-3cm}
\\setlength{\\oddsidemargin}{1.5cm}
\\addtolength{\\oddsidemargin}{-2.54cm}
\\setlength{\\evensidemargin}{\\oddsidemargin}
\\setlength{\\textheight}{\\paperheight}
\\addtolength{\\textheight}{-\\headheight}
\\addtolength{\\textheight}{-\\headsep}
\\addtolength{\\textheight}{-\\footskip}
\\addtolength{\\textheight}{-3cm}
\\setlength{\\topmargin}{1.5cm}
\\addtolength{\\topmargin}{-2.54cm}  
\\input{/home/jnthn/Dropbox/seldon/macros.tex}  ")
 '(package-selected-packages
   '(scroll-restore good-scroll pdf-tools org-noter deft haskell-mode ob-async yasnippet auctex org-mode evil-org solarized-theme evil-collection evil-indent-textobject solarized evil-leader evil-mode use-package evil-visual-mark-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-latex-slide-title-face ((t (:inherit font-lock-type-face)))))

;;package manager - pretty important
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

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
  (org-reload))

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
  (setq org-noter-notes-window-location 'other-frame)
  (setq org-noter-kill-frame-at-session-end nil)
  (setq org-noter-always-create-frame nil))

(defun my/no-op (&rest args))
(advice-add 'org-noter--set-notes-scroll :override 'my/no-op)

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

;;org-mode keybindings
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c C-l") 'org-insert-link)
(setq org-agenda-window-setup 'current-window)
(setq org-agenda-start-on-weekday nil)
(setq org-agenda-todo-list-sublevels nil)
(setq org-refile-targets '((nil :maxlevel . 4)
			   (org-agenda-files :maxlevel . 4)
      ))
(setq org-agenda-files (directory-files-recursively "~/Dropbox/notes/" "\\.org$"))
(setq org-default-notes-file "~/Dropbox/notes/tasks.org")

(setq org-agenda-custom-commands
      '(("c" . "My Custom Agendas")
        ("cu" "Unscheduled TODO"
         ((todo ""
                ((org-agenda-overriding-header "\nUnscheduled TODO")
                 (org-agenda-skip-function '(org-agenda-skip-entry-if 'scheduled)))))
         nil
         nil)))

(pixel-scroll-mode)
(setq pixel-dead-time 0)
(setq pixel-resolution-fine-flag t)
(setq mouse-wheel-scroll-amount '(2))
(setq mouse-wheel-progressive-speed nil)

(defun my/org-mode-hook ()
"Stop the org-level headers from increasing in height relative to the other text."
(dolist (face '(org-level-1
		org-level-2
		org-level-3
		org-level-4
		org-level-5))
(setq org-image-actual-width (/ (display-pixel-width) 4))
(set-face-attribute face nil :weight 'semi-bold :height 1.0)))

(add-hook 'org-mode-hook 'my/org-mode-hook) 
(add-hook 'auto-save-hook 'org-save-all-org-buffers)

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

(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (shell . t)
   (latex . t)
   (python . t)))

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

;(setq org-latex-create-formula-image-program 'imagemagick)
(setq org-format-latex-options (plist-put org-format-latex-options :scale 1.5))
(add-to-list 'org-latex-packages-alist '("" "siunitx" t))
(add-to-list 'org-latex-packages-alist '("" "physics" t))
(add-to-list 'org-latex-packages-alist '("" "mathrsfs" t))

(setq font-latex-fontify-sectioning 'color)
(setq font-latex-fontify-script nil)
(setq font-tex-fontify-script nil)

(add-hook 'doc-view-mode-hook 'auto-revert-mode)

(require 'package)

(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" default)))
 '(org-agenda-files (quote ("~/Dropbox/org/")))
 '(package-selected-packages
   (quote
    (auctex org-mode evil-org solarized-theme evil-collection evil-indent-textobject solarized evil-leader evil-mode use-package evil-visual-mark-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;package manager - pretty important
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

;;Got to work like vim...
(setq evil-want-keybinding nil)
(use-package evil
  :ensure t
  :config
  (evil-mode t)

  (use-package evil-collection
    :ensure t
    :config
    (evil-collection-init 'doc-view))

  (use-package evil-leader
    :ensure t
    :config
    (global-evil-leader-mode))

  (use-package evil-indent-textobject
    :ensure t))

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
	    

;;Navigating splits easier
(use-package windmove
  :ensure t
  :config
  (windmove-default-keybindings)
  (setq windmove-wrap-around t))

;;org-mode conflicts with windmove
(add-hook 'org-shiftup-final-hook 'windmove-up)
(add-hook 'org-shiftleft-final-hook 'windmove-left)
(add-hook 'org-shiftdown-final-hook 'windmove-down)
(add-hook 'org-shiftright-final-hook 'windmove-right)

;;org-mode keybindings
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(setq org-agenda-window-setup 'current-window)
(setq org-agenda-start-on-weekday nil)
(setq org-agenda-todo-list-sublevels nil)
(setq org-refile-targets '((org-agenda-files :maxlevel . 2)))
(setq org-default-notes-file "~/writing.git/org/random.org")

(defun my/org-mode-hook ()
"Stop the org-level headers from increasing in height relative to the other text."
(dolist (face '(org-level-1
		org-level-2
		org-level-3
		org-level-4
		org-level-5))
(set-face-attribute face nil :weight 'semi-bold :height 1.0)))

(add-hook 'org-mode-hook 'my/org-mode-hook) 
(add-hook 'auto-save-hook 'org-save-all-org-buffers)

(setq org-capture-templates
      '(("t" "Basic Todo Entry" entry (file+headline org-default-notes-file "Tasks")
	 "* TODO %^{Title}\n %? %i\n")
	("a" "Basic Assignment" entry (file+headline org-default-notes-file "Unorganized Assignments")
	 "* TODO %^{Title} ([/])\nDEADLINE:%^{Deadline}T\n\nIntermediate Tasks\n- [ ] %?")
	("m" "Basic Meeting" entry (file+headline org-default-notes-file "Random Meetings")
	 "* TODO %^{Title}\nSCHEDULED: %^{Start Time}T\nEND TIME: %^{End Time}U\nLocation: %^{Location}\n\nDescription:\n%?")))

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
)

(setq font-latex-fontify-script nil)
(setq font-latex-fontify-sectioning 'color)
(custom-set-faces
'(font-latex-slide-title-face ((t (:inherit font-lock-type-face)))))

(add-hook 'doc-view-mode-hook 'auto-revert-mode)

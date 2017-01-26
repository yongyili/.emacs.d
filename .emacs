;Customize hot key
;(define-key global-map [(f12)] 'hs-toggle-hiding)
;; (define-key global-map [(f12)] 'hs-hide-block)
;; (define-key global-map [(control f12)] 'hs-show-block)
;Shwo full file name in title bar
(setq  frame-title-format 
'("%S"  (buffer-file-name  "%f" 
(dired-directory  dired-directory  "%b")))) 
;Show trailing whitespace
(setq show-trailing-whitespace t)
;Disable splash
(setq inhibit-startup-message t)
;Disable toolbar
(tool-bar-mode nil)
;Disble system bell
(setq visible-bell t)
;Show line number after emacs23
(global-linum-mode t)
;Make echo area prompt promptly
(setq echo-keystrokes -1)
;move mouse automatically, when it cover cursor
(mouse-avoidance-mode 'exile)
;Show column number
(setq column-number-mode t) 
;Scroll smoothly
(setq scroll-margin 0)
(setq scroll-conservatively 10000)
;Set compile mode to follow output
(setq compilation-scroll-output 'first-error)
;Set compile mode to ignore warning
(setq compilation-skip-threshold 2)
;Enable visible mark when copy
(transient-mark-mode 1)
;Show matching bracket
(show-paren-mode t)
;Move scroll bar to right
(customize-set-variable 'scroll-bar-mode 'right)
;Set default mode to text instead of fundamental
(setq default-major-mode 'text-mode)
;I'd like to answer questions with "y-or-n", not "yes-or-no"
(defalias 'yes-or-no-p 'y-or-n-p)
;disable the version control
(setq vc-handled-backends nil) 
;Auto saving customize
(setq
 backup-by-copying t
 backup-directory-alist
 '(("." . "~/.emacs.d/auto-save-list"))
 version-control t
 kept-new-versions 3
 delete-old-versions t
 kept-old-versions 2)
;send kill text to clipboard
(setq x-select-enable-clipboard t)
;set fonts
(set-face-attribute 'default nil :font "Operator Mono Medium-12")
;set tab equal 4 spaces
(setq default-tab-width 4)

(add-to-list 'load-path "~/.emacs.d/powerline")
(require 'powerline)
(powerline-default-theme)

(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                         ("melpa" . "http://elpa.emacs-china.org/melpa/")))
(package-initialize)

(require 'color-theme)
(load-theme 'misterioso)

(require 'mmm-mode)
(add-to-list 'auto-mode-alist '("\\.sls\\'" . yaml-mode))
(setq mmm-global-mode 'maybe)
(mmm-add-mode-ext-class 'yaml-mode "\\.sls\\'" 'jinja2)

;; set up personal info
;; TO BE CHANGED if you cloned my dotfiles
(setq user-full-name "Damien Cupif")
(setq user-mail-address "damien.cupif@gmail.com")

;; disable welcome screen
(setf inhibit-startup-screen t)

;; start in fullscreen mode
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

;; remove menu bar
(menu-bar-mode -1)

;; remove tool bar
(tool-bar-mode -1)

;; remove scroll bar
(scroll-bar-mode -1)

;; display line numbers
(column-number-mode 1)
(line-number-mode 1)

;; display matching paren
(show-paren-mode t)

;; highlight current line
(global-hl-line-mode 1)

;; show trailing white spaces
(setq-default show-trailing-whitespaces t)

;; remove useless whitespace before saving a file
(add-hook 'before-save-hook 'whitespace-cleanup)
(add-hook 'before-save-hook (lambda() (delete-trailing-whitespace)))

;; use spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; Put backup and autosave files in their own directory
(setq backup-directory-alist `((".*" . , "~/.emacs-backup/")))
(setq auto-save-file-name-transforms `((".*" , "~/.emacs-autosave/" t)))

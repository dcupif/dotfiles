;; disable welcome screen
(setf inhibit-startup-screen t)

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

;; use spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; Put backup and autosave files in their own directory
(setq backup-directory-alist `((".*" . , "~/.emacs-backup/")))
(setq auto-save-file-name-transforms `((".*" , "~/.emacs-autosave/" t)))

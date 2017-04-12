;; load the use-package framework for package configuration
(add-to-list 'load-path "~/.emacs.d/pkgs/use-package")
(require 'use-package)

;; undo-tree needs to be loaded before evil
(use-package undo-tree
  :load-path "pkgs/undo-tree")

;; evil mode
(use-package evil
  :load-path "pkgs/evil"

  :config
  ;; enable evil mode
  (evil-mode 1)
  
  ;; define cursor colors depending on mode
  (setq evil-emacs-state-cursor '("#969896" box))
  (setq evil-normal-state-cursor '("#a71d5d" box))
  (setq evil-visual-state-cursor '("#183691" box))
  (setq evil-insert-state-cursor '("#a71d5d" bar))
  (setq evil-replace-state-cursor '("#a71d5d" bar))
  (setq evil-operator-state-cursor '("#a71d5d" hollow))
  
  ;; enable visual line browsing
  (define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
  (define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line))

;; display relative line numbers
(use-package linum-relative
  :load-path "pkgs/linum-relative"

  :init
  (global-linum-mode t)
  ;; add padding next to line number
  (setf linum-format
	(lambda (line)
	  (propertize
	    (format
	      (let ((w (length (number-to-string (count-lines (point-min) (point-max))))))
		(concat "%" (number-to-string w) "d "))
	      line)
	    'face
	    'linum)))

  :config
  (linum-relative-on)
  (setf linum-relative-format "%3s "
	linum-relative-current-symbol ""))

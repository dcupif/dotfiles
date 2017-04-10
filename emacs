;; -*- no-byte-compile: t -*-
(setf load-prefer-newer t)
(package-initialize)
(add-to-list 'load-path "~/.emacs.d/pkgs/dash")
(add-to-list 'load-path "~/.emacs.d/pkgs/packed")
(add-to-list 'load-path "~/.emacs.d/pkgs/auto-compile")
(require 'auto-compile)
(auto-compile-on-load-mode)
(auto-compile-on-save-mode)

;; Load configuration
(load-file "~/.emacs.d/init.el")

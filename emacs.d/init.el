(add-to-list 'load-path "~/.emacs.d/conf")

(load "packages")
(load "settings")
(load "theme")

(let ((custom "~/.emacs_local"))
  (when (file-exists-p custom)
    (load-file custom)))

(setq custom-file "~/emacs/custom/settings.el")
(load custom-file)

(add-to-list 'load-path "~/emacs/custom") ;; Custom key bindings
(require 'conf)                 ;; General configuration
(require 'key-bindings)
(provide 'init)

(setq custom-file "~/emacs/custom/settings.el")
(load custom-file)

(add-to-list 'load-path "~/emacs/custom") ;; Custom key bindings
(require 'conf)                 ;; General configuration
(require 'key-bindings)

;; Load plugins

;; evil: Vim key bindings
(add-to-list 'load-path "~/emacs/ext/evil")
(require 'evil)
(evil-mode 1)


;; color-theme: Name says it all
(add-to-list 'load-path "~/emacs/ext/color-theme-6.6.0")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-hober)))

(defun color-theme-vibrant-ink ()
  "Emacs Vibrant Ink"
  (interactive)
  (color-theme-install
   '(color-theme-vibrant-ink
     ((background-color . "#111111")
      (background-mode . dark)
      (border-color . "black")
      (cursor-color . "white")
      (foreground-color . "white")
      (list-matching-lines-face . bold)
      (view-highlight-face . highlight))
     (default ((t (nil))))
     (bold ((t (:bold t))))
     (bold-italic ((t (:italic t :bold t))))
     (fringe ((t (:background "black"))))
     (font-lock-builtin-face ((t (:foreground "#aaccff"))))
     (font-lock-comment-face ((t (:italic t :foreground "#9933cc"))))
     (font-lock-comment-delimiter-face ((t (:foreground "#9933cc"))))
     (font-lock-constant-face ((t (:foreground "#339999"))))
     (font-lock-function-name-face ((t (:foreground "#ffcc00"))))
     (font-lock-keyword-face ((t (:foreground "#ff6600"))))
     (font-lock-preprocessor-face ((t (:foreground "#aaffff"))))
     (font-lock-reference-face ((t (:foreground "LightSteelBlue"))))
     (font-lock-string-face ((t (:foreground "#66FF00"))))
     (font-lock-doc-face ((t (:foreground "LightSalmon"))))
     (font-lock-type-face ((t (:foreground "#FFFFFF"))))
     (font-lock-variable-name-face ((t (:foreground "#FFFFFF"))))
     (font-lock-warning-face ((t (:bold t :foreground "Pink"))))
     (paren-face-match-light ((t (:background "#222222"))))
     (highlight ((t (:background "#222222"))))
     (italic ((t (:italic t))))
     (modeline ((t (:background "#444444" :foreground "black"))))
     (modeline-buffer-id ((t (:background "#444444" :foreground "black"))))
     (modeline-mousable ((t (:background "#444444" :foreground "black"))))
     (modeline-mousable-minor-mode ((t (:background "#444444" :foreground "black"))))
     (region ((t (:background "#555577"))))
     (primary-selection ((t (:background "#555577"))))
     (isearch ((t (:background "#555555"))))
     (zmacs-region ((t (:background "#555577"))))
     (secondary-selection ((t (:background "darkslateblue"))))
     (flymake-errline ((t (:background "LightSalmon" :foreground "black"))))
     (flymake-warnline ((t (:background "LightSteelBlue" :foreground "black"))))
     (underline ((t (:underline t))))
     (minibuffer-prompt ((t (:bold t :foreground "#ff6600")))))))

(color-theme-vibrant-ink)

(set-face-attribute 'default nil :height 140)

(provide 'init)

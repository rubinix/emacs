
;; Ido Settings
(ido-mode t)
(setq ido-enable-flex-matching t) ; fuzzy matching
(setq ido-max-window-height 2)
(setq ido-max-prospects 50)

;; Set indention to 4 spaces
(setq default-tab-width 4)
(setq-default indent-tabs-mode nil) ; always replace tabs with spaces

;; Do not make backup files
(setq make-backup-files nil)

;; Activate winner mode - C-c left / C-c right window layout history
(winner-mode 1)

;; Make query-replace take the last interactive search string
(setq query-replace-interactive 1)

;; Keep unchanged buffers in sync with the file system.  This is handy
;; when changing branches on software project
(setq global-auto-revert-mode t)

;; Display column number in the mode line
(column-number-mode t)

;; Always allow 'y' instead of 'yes' 
(defalias 'yes-or-no-p 'y-or-n-p)

;; Make Ibuffer mode the default buffer handler instead of Buffer List
(global-set-key (kbd "C-x C-b") 'ibuffer)

(provide 'conf)
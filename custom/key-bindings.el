;; ----- Core Enhancements

;; Bind the the caps lock key to <cntl> in your OS.  This is the first
;; enhancement to make.

;; You know, like Readline.
;; This keychord is bound by default to "mark-defun"
(global-set-key (kbd "C-M-h") 'backward-kill-word)

;; Because the backspace key is just too far away.  This combines
;; nicely with C-M-h.
(global-set-key (kbd "C-h") 'backward-delete-char-untabify)

;; Help is key.  Bound by default to "C-h", this needs a nice handy
;; binding
(global-set-key (kbd "C-?") 'help)

;; Facilitate buffer next and previous.  
;; These are unbound by default.
(global-set-key (kbd "M-}") 'next-buffer)
(global-set-key (kbd "M-{") 'previous-buffer)

;; Make aliases for line movement to provide consistent up/down key
;; semantics (M-{ and M-} move by up/down by paragraph; M-< and M->
;; move up/down to beginning/end of buffer; In many compilation and
;; shell modes M-n and M-p map to 'next' and 'previous'; M-o switches
;; windows, usually horizontally stacked).  These four are unbound by
;; default.
(global-set-key (kbd "M-n") 'next-line)
(global-set-key (kbd "M-p") 'previous-line)
(global-set-key (kbd "M-N") 'scroll-up)
(global-set-key (kbd "M-P") 'scroll-down)

;; This function is bound by default to "C-x 1".
;; This keychord is unbound by default.
(global-set-key (kbd "M-u") 'delete-other-windows)

;; Make a short cut for switching to the other window
;; This function is bound by default to "C-x o".
;; This keychord is unbound by default.
(global-set-key (kbd "M-o") 'other-window)

;; Make a short cut for switching frames.
;; This function is bound by default to "C-x 5 o".
;; This keychord is bound by default to "toggle-input-method".
(global-set-key (kbd "M-`") 'other-frame)

;; Since saving is so common, map this to a more comfortable keychord.
;; Choose a simple meta keychord. 
;; This function is bound by default to "C-x C-s"
;; This keychord is bound by default to a Prefix Command which in turn 
;; fronts 'occur', 'isearch-forward-word', and a handful of highlight 
;; related functions.  All these I haven't needed yet -- the search tools
;; in the color-moccur package are quite sufficient. 
(global-set-key (kbd "M-s") 'save-buffer)

;; Really handy.  Not sure why this isn't bound by default.
(global-set-key (kbd "C-x C-j") 'join-line)

;; ----- End Core Tweaks
(provide 'key-bindings)
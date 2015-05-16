; C-c to enter normal mode
;(define-key evil-visual-state-map (kbd "C-c") 'evil-normal-state)
;(define-key evil-visual-state-map (kbd "C-c") 'evil-exit-visual-state)
;(define-key evil-insert-state-map (kbd "C-c") 'evil-normal-state)

; .. to cycle through buffers in current window
(define-key evil-normal-state-map (kbd ",m") 'evil-buffer)

; disable q for macro recording to keep it for emacs
(define-key evil-normal-state-map (kbd "q") nil)

; C-u to scroll up
(define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)
(define-key evil-visual-state-map (kbd "C-u") 'evil-scroll-up)

;to activate default evil-nerd-commenter hotkeys
(evilnc-default-hotkeys)

; move across windows
(define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
(define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
(define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
(define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)

; Make horizontal movement cross lines                                    
(setq-default evil-cross-lines t)

; swap : and ;
(define-key evil-normal-state-map (kbd ";") 'evil-ex)
(define-key evil-normal-state-map (kbd ":") 'evil-repeat-find-char)

; regain some emacs commands (losing scrolling without moving cursor)
(define-key evil-normal-state-map "\C-y" 'yank)
(define-key evil-insert-state-map "\C-y" 'yank)
(define-key evil-visual-state-map "\C-y" 'yank)
(define-key evil-insert-state-map "\C-e" 'end-of-line)
(define-key evil-normal-state-map "\C-e" 'end-of-line)
(define-key evil-visual-state-map "\C-e" 'end-of-line)
(define-key evil-normal-state-map "\C-w" 'evil-delete)
(define-key evil-insert-state-map "\C-w" 'evil-delete)
(define-key evil-insert-state-map "\C-r" 'search-backward)
(define-key evil-visual-state-map "\C-w" 'evil-delete)

;;; esc quits
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

; add blank lines
(define-key evil-normal-state-map (kbd "[ SPC") 'evil-add-line-above)
(define-key evil-normal-state-map (kbd "] SPC") 'evil-add-line-below)

(defun evil-add-line-above ()
  (interactive)
  (evil-open-above 1)
  (evil-normal-state)
  (evil-next-line-first-non-blank 1))

(defun evil-add-line-below ()
  (interactive)
  (evil-open-below 1)
  (evil-normal-state)
  (evil-previous-line-first-non-blank 1))

; barfing and slurping with [ ] and k l
(define-key evil-insert-state-map (kbd "C-l") 'paredit-forward-slurp-sexp)
(define-key evil-insert-state-map (kbd "C-k") 'paredit-forward-barf-sexp)
(define-key evil-insert-state-map (kbd "M-k") 'paredit-backward-slurp-sexp)
(define-key evil-insert-state-map (kbd "M-l") 'paredit-backward-barf-sexp)

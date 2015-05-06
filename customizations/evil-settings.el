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
(define-key evil-normal-state-map "\C-w" 'evil-delete)
(define-key evil-insert-state-map "\C-w" 'evil-delete)
(define-key evil-insert-state-map "\C-r" 'search-backward)
(define-key evil-visual-state-map "\C-w" 'evil-delete)

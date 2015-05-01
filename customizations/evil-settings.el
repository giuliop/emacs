; C-c to enter normal mode
;(define-key evil-visual-state-map (kbd "C-c") 'evil-normal-state)
;(define-key evil-visual-state-map (kbd "C-c") 'evil-exit-visual-state)
;(define-key evil-insert-state-map (kbd "C-c") 'evil-normal-state)

; .. to cycle through buffers in current window
(define-key evil-normal-state-map (kbd ",,") 'evil-buffer)

; disable q for macro recording to keep it for emacs
(define-key evil-normal-state-map (kbd "q") nil)

; C-u to scroll up
(define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)
(define-key evil-visual-state-map (kbd "C-u") 'evil-scroll-up)

;to activate default evil-nerd-commenter hotkeys
(evilnc-default-hotkeys)

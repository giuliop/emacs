;; C-h for backspace and C-x? for help
(define-key global-map "\C-x?" 'help-command)
(define-key global-map "\C-h" 'backward-delete-char-untabify)


(add-hook 'ido-minibuffer-setup-hook 'ido-my-keys)
(defun ido-my-keys ()
  "Add my keybindings for ido."
  (define-key ido-completion-map (kbd "C-j") 'ido-exit-minibuffer)
  )

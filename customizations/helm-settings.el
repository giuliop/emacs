(setq helm-M-x-fuzzy-match t) ;; optional fuzzy matching for helm-M-x
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t)


(define-key helm-map (kbd "C-j") 'helm-maybe-exit-minibuffer)

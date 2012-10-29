(defun color-theme-R1 ()
  (interactive)
  (color-theme-install
   '(color-theme-R1
      ((background-color . "#111f22")
      (background-mode . light)
      (border-color . "#404145")
      (cursor-color . "#dddcd5")
      (foreground-color . "#c38e18")
      (mouse-color . "black"))
     (fringe ((t (:background "#404145"))))
     (mode-line ((t (:foreground "#ffffff" :background "#4d4d4d"))))
     (region ((t (:background "#3b443d"))))
     (font-lock-builtin-face ((t (:foreground "#c7d7e1"))))
     (font-lock-comment-face ((t (:foreground "#2ca80b"))))
     (font-lock-function-name-face ((t (:foreground "#fa7c6b"))))
     (font-lock-keyword-face ((t (:foreground "#5099ed"))))
     (font-lock-string-face ((t (:foreground "#bd65b4"))))
     (font-lock-type-face ((t (:foreground"#e6f825"))))
     (font-lock-variable-name-face ((t (:foreground "#f5cf38"))))
     (minibuffer-prompt ((t (:foreground "#78a7d9" :bold t))))
     (font-lock-warning-face ((t (:foreground "Red" :bold t))))
     )))
(provide 'color-theme-R1) 
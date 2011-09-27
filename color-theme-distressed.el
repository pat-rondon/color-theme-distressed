;; Rough principles for syntax highlighting:
;; - Keywords, functions, variables, and constants are blue
;; - Metaprogram info (e.g., preprocessor directives) are purple
;; - Types are teal
;; - Text is gray

(defun color-theme-distressed ()
  (interactive)
   (let ((dark-gray   "#4a4a4a")
         (medium-gray "#858585")
         (light-gray  "gray92")
         (green       "SeaGreen")
         (purple      "#72275a")
         (yellow      "LightGoldenrod1")
         (orange      "DarkOrange1")
         (red         "firebrick")
         (teal        "#308876")
         (light-blue  "#4189a4")
         (blue        "#325f9f")
         (faint-blue  "#dfe8f1")
         (steel-blue  "#606b85"))
  (color-theme-install
     `(color-theme-distressed
       ((background-color . "white")
        (background-mode  . light)
        (border-color     . ,dark-gray)
        (cursor-color     . ,medium-gray)
        (foreground-color . ,dark-gray)
        (mouse-color      . "black"))

       ;; UI Elements
       (fringe                          ((t (:background ,dark-gray))))
       (minibuffer-prompt               ((t (:foreground ,blue        :bold t))))
       (mode-line                       ((t (:foreground "white"      :background ,dark-gray))))
       (mode-line-inactive              ((t (:foreground ,medium-gray :background ,light-gray))))
       (region                          ((t (:background ,faint-blue))))

       ;; Searching/Highlights
       (lazy-highlight                  ((t (:background ,faint-blue))))
       (isearch-fail                    ((t (:foreground ,red :background "white"))))
       (isearch                         ((t (:background ,yellow))))
       (match                           ((t (:background ,yellow))))
       (show-paren-match                ((t (:background ,yellow))))
       (show-paren-mismatch             ((t (:background ,purple))))

       ;; Source code highlighting
       (font-lock-builtin-face          ((t (:foreground ,blue))))
       (font-lock-comment-face          ((t (:foreground ,medium-gray))))
       (font-lock-function-name-face    ((t (:foreground ,light-blue))))
       (font-lock-variable-name-face    ((t (:foreground ,light-blue))))
       (font-lock-keyword-face          ((t (:foreground ,blue))))
       (font-lock-string-face           ((t (:foreground ,steel-blue))))
       (font-lock-type-face             ((t (:foreground ,teal))))
       (font-lock-preprocessor-face     ((t (:foreground ,purple))))
       (font-lock-warning-face          ((t (:foreground ,orange :bold t))))
       (tuareg-font-lock-governing-face ((t (:foreground ,blue))))
       (tuareg-font-lock-operator-face  ((t (:foreground ,blue))))

       ;; Compilation
       (compilation-info                ((t (:foreground ,green :bold t))))
       (compilation-error               ((t (:foreground ,orange :bold t))))

       ;; magit
       (magit-diff-add                  ((t (:foreground ,green  :bold t))))
       (magit-diff-del                  ((t (:foreground ,purple :bold t))))

       ;; org
       (org-level-1                     ((t (:foreground ,blue   :bold t))))
       (org-level-2                     ((t (:foreground ,purple :bold t))))
       (org-todo                        ((t (:foreground ,red    :bold t))))
       (org-done                        ((t (:foreground ,green  :bold t))))
       ))))
(provide 'color-theme-distressed)
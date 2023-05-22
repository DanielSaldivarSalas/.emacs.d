;; Make startup faster by reducing the frequency of garbage
;; collection.
(setq gc-cons-threshold (* 100 1024 1024))

(require 'package)
;;(package-initialize)

(if (file-exists-p (expand-file-name "config.el" user-emacs-directory))
    (load-file (expand-file-name "config.el" user-emacs-directory))
  (org-babel-load-file (expand-file-name "config.org" user-emacs-directory)))

;; Make gc pauses faster by decreasing the threshold.
(setq gc-cons-threshold (* 10 1000 1000))

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("5f128efd37c6a87cd4ad8e8b7f2afaba425425524a68133ac0efd87291d05874" default))
 '(package-selected-packages
   '(dired-hide-dotfiles dired-open all-the-icons-dired dired-single eshell-prompt-extras eshell-git-prompt beancount calfw-org exec-path-from-shell use-package-ensure-system-package delight which-key vterm visual-fill-column use-package typescript-mode terraform-mode rainbow-delimiters org-superstar org-roam org-fancy-priorities org-download org-contacts neotree lsp-ui lsp-treemacs lsp-pyright lsp-ivy ivy-rich general evil-nerd-commenter evil-leader evil-collection ebdb doom-themes doom-modeline counsel-projectile company-box command-log-mode all-the-icons))
 '(warning-suppress-types
   '((use-package)
     ((package reinitialization))
     ((package reinitialization))
     ((package reinitialization))
     ((package reinitialization))
     ((package reinitialization))
     ((package reinitialization))
     ((package reinitialization))
     ((package reinitialization))
     ((package reinitialization)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

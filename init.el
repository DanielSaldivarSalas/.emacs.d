;; Make startup faster by reducing the frequency of garbage
;; collection.
(setq gc-cons-threshold (* 100 1024 1024))

(require 'package)
;;(package-initialize)

;(when (not package-archive-contents)
 ;   (package-refresh-contents))

(if (file-exists-p (expand-file-name "config.el" user-emacs-directory))
    (load-file (expand-file-name "config.el" user-emacs-directory))
  (org-babel-load-file (expand-file-name "config.org" user-emacs-directory)))

;; Make gc pauses faster by decreasing the threshold.
(setq gc-cons-threshold (* 10 1000 1000))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(## affe all-the-icons-dired calfw calfw-org command-log-mode
	company-box counsel-projectile dired-hide-dotfiles dired-open
	dired-single doom-modeline doom-themes ebdb elpy
	eshell-git-prompt eshell-prompt-extras eterm-256color
	evil-collection evil-indent-plus evil-leader
	evil-nerd-commenter evil-visual-mark-mode exec-path-from-shell
	fireplace general helpful impatient-mode
	linum-relative lsp-ivy lsp-pyright lsp-treemacs lsp-ui
	lua-mode magit neotree orderless org-autolist org-bullets
	org-contacts org-contrib org-download org-fancy-priorities
	org-roam org-superstar python-mode rainbow-delimiters skeletor
	smooth-scroll terraform-mode typescript-mode undo-tree
	use-package-ensure-system-package vc-use-package
	visual-fill-column vterm which-key)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; -*- lexical-binding: t; -*- 

;; Iosevka font
(set-frame-font "IosevkaNerdFontMono 14")

;; Disable GUI things
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(ido-mode 1)
(ido-everywhere 1)
(global-display-line-numbers-mode 1)

;; Bootstrap straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
(setq package-enable-at-startup nil)
(straight-use-package 'use-package)

;; Tokyonight theme
(use-package tokyonight-themes
  :straight '(:type git :host github :repo "xuchengpeng/tokyonight-themes")
  :config (tokyonight-themes-load-theme 'tokyonight-night))

;; Evil mode
;;(use-package evil
;;  :straight t
;;  :config (evil-mode 1))
;;(use-package goto-chg
;;  :straight t)

(use-package typst-ts-mode
  :straight '(:type git :host codeberg :repo "meow_king/typst-ts-mode" :branch "main"))

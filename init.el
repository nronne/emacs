;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MY SETUP
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Server setup
(require 'server)
(unless (server-running-p)
  (server-start))

;; Package management: MELPA and use-package
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Bootstrap `use-package' ; Cleaner package installation
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(custom-safe-themes
   (quote
    ("672bb062b9c92e62d7c370897b131729c3f7fd8e8de71fc00d70c5081c80048c" "76c5b2592c62f6b48923c00f97f74bcb7ddb741618283bdb2be35f3c0e1030e3" default)))
 '(debug-on-error t)
 '(exec-path
   (quote
    ("/comm/swstack/tools/git/2.14.2/bin/git" "/usr/bin" "/bin" "/usr/sbin" "/sbin" "/Applications/Emacs.app/Contents/MacOS/bin-x86_64-10_14" "/Applications/Emacs.app/Contents/MacOS/libexec-x86_64-10_14" "/Applications/Emacs.app/Contents/MacOS/libexec" "/Applications/Emacs.app/Contents/MacOS/bin")))
 '(hl-sexp-background-color "#efebe9")
 '(package-selected-packages
   (quote
    (doom-themes vterm eglot kaolin-themes flacui-themes flatui-themes solarized-theme flucui-themes emojify ibuffer-projectile projectile yasnippet-snippets web-mode all-the-icons-ibuffer leuven-theme zenburn-theme wrap-region doom-modeline expand-region flycheck which-key use-package try org-bullets help-find-org-mode dash counsel)))
 '(tramp-remote-path
   (quote
    (tramp-default-remote-path "/comm/swstack/tools/git/2.14.2/bin/git" "/bin" "/usr/bin" "/sbin" "/usr/sbin" "/usr/local/bin" "/usr/local/sbin" "/local/bin" "/local/freeware/bin" "/local/gnu/bin" "/usr/freeware/bin" "/usr/pkg/bin" "/usr/contrib/bin" "/opt/bin" "/opt/sbin" "/opt/local/bin"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(lsp-ui-doc-background ((t (:background nil))))
 '(lsp-ui-doc-header ((t (:inherit (font-lock-string-face italic))))))
(put 'dired-find-alternate-file 'disabled nil)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(cc-search-directories (quote ("." "include" "../include")))
 '(dired-listing-switches "-lahX")
 '(disable-mouse-mode-global-lighter " ☒")
 '(dumb-jump-default-project ".")
 '(dumb-jump-git-grep-cmd "git -c core.precomposeUnicode=false grep")
 '(evil-want-Y-yank-to-eol nil)
 '(explicit-bash-args
   (quote
    ("--noediting" "--rcfile" "~/.spacemacs.d/bashrc-macos" "-i")))
 '(helm-boring-file-regexp-list
   (quote
    ("\\.o$" "~$" "\\.bin$" "\\.lbin$" "\\.so$" "\\.a$" "\\.ln$" "\\.blg$" "\\.bbl$" "\\.elc$" "\\.lof$" "\\.glo$" "\\.idx$" "\\.lot$" "\\.svn/\\|\\.svn$" "\\.hg/\\|\\.hg$" "\\.git/\\|\\.git$" "\\.bzr/\\|\\.bzr$" "CVS/\\|CVS$" "_darcs/\\|_darcs$" "_MTN/\\|_MTN$" "\\.fmt$" "\\.tfm$" "\\.class$" "\\.fas$" "\\.lib$" "\\.mem$" "\\.x86f$" "\\.sparcf$" "\\.dfsl$" "\\.pfsl$" "\\.d64fsl$" "\\.p64fsl$" "\\.lx64fsl$" "\\.lx32fsl$" "\\.dx64fsl$" "\\.dx32fsl$" "\\.fx64fsl$" "\\.fx32fsl$" "\\.sx64fsl$" "\\.sx32fsl$" "\\.wx64fsl$" "\\.wx32fsl$" "\\.fasl$" "\\.ufsl$" "\\.fsl$" "\\.dxl$" "\\.lo$" "\\.la$" "\\.gmo$" "\\.mo$" "\\.toc$" "\\.aux$" "\\.cp$" "\\.fn$" "\\.ky$" "\\.pg$" "\\.tp$" "\\.vr$" "\\.cps$" "\\.fns$" "\\.kys$" "\\.pgs$" "\\.tps$" "\\.vrs$" "\\.pyc$" "\\.pyo$" "\\.DS_Store$")))
 '(helm-buffer-max-length 30)
 '(helm-ff-skip-boring-files t)
 '(hl-todo-activate-in-modes (quote (prog-mode c++-mode)))
 '(hl-todo-keyword-faces
   (quote
    (("TODO" . "#D00000")
     ("NOTE" . "#0000D0")
     ("FIXME" . "#D00000")
     ("TIPS" . "#AA0D91")
     ("SOURCE" . "#0000D0")
     ("NOTICE" . "#AA0D91"))))
 '(js-indent-level 2)
 '(ls-lisp-dirs-first t)
 '(ls-lisp-ignore-case t)
 '(ls-lisp-use-insert-directory-program nil)
 '(ls-lisp-use-localized-time-format t)
 '(mouse-highlight nil)
 '(org-agenda-files (quote ("~/to-do.org")))
 '(org-agenda-log-mode-items (quote (closed clock state)))
 '(org-agenda-skip-deadline-if-done t)
 '(org-agenda-skip-scheduled-if-done t)
 '(org-agenda-skip-timestamp-if-done t)
 '(org-agenda-tags-column (quote auto))
 '(org-agenda-time-grid
   (quote
    ((daily today require-timed)
     (800 1000 1200 1400 1600 1800 2000 2200)
     "......" "----------------")))
 '(org-agenda-window-setup (quote current-window))
 '(org-auto-align-tags t)
 '(org-bullets-bullet-list (quote ("◉" "∗" "∙" "◦")))
 '(org-deadline-warning-days 18)
 '(org-src-preserve-indentation t)
 '(org-startup-indented t)
 '(org-stuck-projects
   (quote
    ("+PROJECT&+LEVEL=2/-DONE"
     ("TODO" "NEXT" "NEXTACTION" "WAIT" "ABORT")
     nil "")))
 '(org-tags-column -145)
 '(org-todo-keyword-faces (quote (("WAIT" . "#0000f0") ("ABORT" . "#e000f0"))))
 '(org-todo-keywords (quote ((sequence "TODO" "WAIT" "|" "DONE" "ABORT"))))
 '(package-selected-packages
   (quote
    (glsl-mode tidal intero flycheck hlint-refactor hindent helm-hoogle haskell-snippets company-ghci company-ghc ghc company haskell-mode cmm-mode ghub let-alist disable-mouse smeargle orgit magit-gitflow helm-gitignore gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link evil-magit magit magit-popup web-mode tagedit slim-mode scss-mode sass-mode pug-mode less-css-mode helm-css-scss haml-mode emmet-mode git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-commit auto-save-buffers-enhanced zonokai-theme zenburn-theme zen-and-art-theme underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme seti-theme reverse-theme railscasts-theme purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme naquadah-theme mustang-theme monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme madhat2r-theme lush-theme light-soap-theme jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gandalf-theme flatui-theme flatland-theme farmhouse-theme espresso-theme dracula-theme django-theme darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clues-theme cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme centered-window-mode web-beautify persistent-scratch mmm-mode markdown-toc markdown-mode livid-mode skewer-mode simple-httpd json-mode json-snatcher json-reformat js2-refactor yasnippet multiple-cursors js2-mode js-doc gh-md coffee-mode xterm-color shell-pop multi-term eshell-z eshell-prompt-extras esh-help disaster cmake-mode clang-format with-editor git-gutter diff-hl org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-download htmlize gnuplot ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint info+ indent-guide hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight elisp-slime-nav dumb-jump f dash s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async)))
 '(pcomplete-ignore-case t)
 '(persistent-scratch-save-file
   (expand-file-name ".persistent-scratch" dotspacemacs-directory))
 '(spacemacs-theme-comment-bg nil)
 '(spacemacs-theme-custom-colors
   (quote
    ((bg1 . "#F8F8F0")
     (base . "#000000")
     (bg2 . "#E8E8E0")
     (const . "#1C00CF"))))
 '(spacemacs-theme-org-agenda-height nil)
 '(spacemacs-theme-org-height nil)
 '(split-width-threshold nil)
 '(vc-git-annotate-switches "-w")
 '(vc-git-diff-switches "-b"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(diff-added ((t (:background "#D0F0D0" :foreground "#000000"))))
 '(diff-indicator-added ((t (:background "#D0F0D0" :foreground "#000000"))))
 '(diff-indicator-removed ((t (:background "#FFD0D0" :foreground "#000000"))))
 '(diff-removed ((t (:background "#FFD0D0" :foreground "#000000"))))
 '(dired-directory ((t (:inherit bold :background "#F8F8F0" :foreground "medium blue"))))
 '(font-lock-function-name-face ((t (:inherit unspecified :foreground "#000000"))))
 '(font-lock-keyword-face ((t (:inherit unspecified :foreground "#AA0D91"))))
 '(font-lock-type-face ((t (:inherit unspecified :foreground "#ba2f59"))))
 '(fringe ((t (:background "#F0F0E8" :foreground "#000000"))))
 '(helm-buffer-directory ((t (:inherit nil :background "#F8F8F0" :foreground "medium blue" :weight bold))))
 '(helm-buffer-not-saved ((t (:background "#F8F8F0" :foreground "dark violet"))))
 '(helm-ff-directory ((t (:inherit bold :background "#F8F8F0" :foreground "medium blue"))))
 '(org-agenda-done ((t (:foreground "#00A000" :height 1.0))))
 '(org-done ((t (:inherit bold :foreground "#00A000" :background nil))))
 '(org-level-1 ((t (:inherit unspecified :foreground "#3a81c3" :height 1.0))))
 '(org-level-2 ((t (:inherit unspecified :foreground "#2d9574" :height 1.0))))
 '(org-time-grid ((t (:foreground "#4f8f00"))))
 '(org-todo ((t (:inherit bold :background nil :foreground "#E00000"))))
 '(show-paren-match ((((class color) (background light)) (:background "#90e0e0"))))
 '(spacemacs-emacs-face ((t (:background "SkyBlue2" :foreground "#202020" :inherit (quote mode-line)))))
 '(spacemacs-evilified-face ((t (:background "LightGoldenrod3" :foreground "#202020" :inherit (quote mode-line)))))
 '(spacemacs-hybrid-face ((t (:background "SkyBlue2" :foreground "#202020" :inherit (quote mode-line)))))
 '(spacemacs-iedit-face ((t (:background "firebrick1" :foreground "202020#" :inherit (quote mode-line)))))
 '(spacemacs-iedit-insert-face ((t (:background "firebrick1" :foreground "#202020" :inherit (quote mode-line)))))
 '(spacemacs-insert-face ((t (:background "chartreuse3" :foreground "#202020" :inherit (quote mode-line)))))
 '(spacemacs-lisp-face ((t (:background "HotPink1" :foreground "#202020" :inherit (quote mode-line)))))
 '(spacemacs-motion-face ((t (:background "plum3" :foreground "#202020" :inherit (quote mode-line)))))
 '(spacemacs-normal-face ((t (:background "DarkGoldenrod2" :foreground "#202020" :inherit (quote mode-line)))))
 '(spacemacs-replace-face ((t (:background "chocolate" :foreground "#202020" :inherit (quote mode-line)))))
 '(spacemacs-visual-face ((t (:background "gray" :foreground "#202020" :inherit (quote mode-line))))))

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(cc-other-file-alist
   '(("\\.cc\\'"
      (".hh" ".h"))
     ("\\.hh\\'"
      (".cc" ".C" ".CC" ".cxx" ".cpp" ".c++"))
     ("\\.c\\'"
      (".h"))
     ("\\.m\\'"
      (".h"))
     ("\\.h\\'"
      (".c" ".cc" ".C" ".CC" ".cxx" ".cpp" ".c++" ".m" ".mm"))
     ("\\.C\\'"
      (".H" ".hh" ".h"))
     ("\\.H\\'"
      (".C" ".CC"))
     ("\\.CC\\'"
      (".HH" ".H" ".hh" ".h"))
     ("\\.HH\\'"
      (".CC"))
     ("\\.c\\+\\+\\'"
      (".h++" ".hh" ".h"))
     ("\\.h\\+\\+\\'"
      (".c++"))
     ("\\.cpp\\'"
      (".hpp" ".hh" ".h"))
     ("\\.hpp\\'"
      (".cpp"))
     ("\\.cxx\\'"
      (".hxx" ".hh" ".h"))
     ("\\.hxx\\'"
      (".cxx"))
     ("\\.mm\\'"
      (".h"))))
 '(cc-search-directories '("." "include" "../include"))
 '(dired-listing-switches "-lahX")
 '(dumb-jump-default-project ".")
 '(dumb-jump-git-grep-cmd "git -c core.precomposeUnicode=false grep")
 '(evil-want-Y-yank-to-eol nil)
 '(explicit-bash-args
   '("--noediting" "--rcfile" "~/.spacemacs.d/bashrc-macos" "-i"))
 '(font-lock-maximum-decoration '((c-mode . t) (c++-mode . 2) (t . 1)))
 '(helm-boring-file-regexp-list
   '("\\.o$" "~$" "\\.bin$" "\\.lbin$" "\\.so$" "\\.a$" "\\.ln$" "\\.blg$" "\\.bbl$" "\\.elc$" "\\.lof$" "\\.glo$" "\\.idx$" "\\.lot$" "\\.svn/\\|\\.svn$" "\\.hg/\\|\\.hg$" "\\.git/\\|\\.git$" "\\.bzr/\\|\\.bzr$" "CVS/\\|CVS$" "_darcs/\\|_darcs$" "_MTN/\\|_MTN$" "\\.fmt$" "\\.tfm$" "\\.class$" "\\.fas$" "\\.lib$" "\\.mem$" "\\.x86f$" "\\.sparcf$" "\\.dfsl$" "\\.pfsl$" "\\.d64fsl$" "\\.p64fsl$" "\\.lx64fsl$" "\\.lx32fsl$" "\\.dx64fsl$" "\\.dx32fsl$" "\\.fx64fsl$" "\\.fx32fsl$" "\\.sx64fsl$" "\\.sx32fsl$" "\\.wx64fsl$" "\\.wx32fsl$" "\\.fasl$" "\\.ufsl$" "\\.fsl$" "\\.dxl$" "\\.lo$" "\\.la$" "\\.gmo$" "\\.mo$" "\\.toc$" "\\.aux$" "\\.cp$" "\\.fn$" "\\.ky$" "\\.pg$" "\\.tp$" "\\.vr$" "\\.cps$" "\\.fns$" "\\.kys$" "\\.pgs$" "\\.tps$" "\\.vrs$" "\\.pyc$" "\\.pyo$" "\\.DS_Store$"))
 '(helm-buffer-max-length 30)
 '(helm-ff-skip-boring-files t)
 '(hl-todo-activate-in-modes '(prog-mode c++-mode objc-mode))
 '(hl-todo-include-modes '(prog-mode c++-mode objc-mode))
 '(hl-todo-keyword-faces
   '(("TODO" . "#D00000")
     ("NOTE" . "#0000D0")
     ("FIXME" . "#D00000")
     ("TIPS" . "#AA0D91")
     ("SOURCE" . "#0000D0")
     ("NOTICE" . "#AA0D91")))
 '(js-indent-level 2)
 '(ls-lisp-dirs-first t)
 '(ls-lisp-ignore-case t)
 '(ls-lisp-use-insert-directory-program nil)
 '(ls-lisp-use-localized-time-format t)
 '(mouse-highlight nil)
 '(org-agenda-files '("~/to-do.org"))
 '(org-agenda-log-mode-items '(closed clock state))
 '(org-agenda-skip-deadline-if-done t)
 '(org-agenda-skip-scheduled-if-done t)
 '(org-agenda-skip-timestamp-if-done t)
 '(org-agenda-tags-column 'auto)
 '(org-agenda-time-grid
   '((daily today require-timed)
     (800 1000 1200 1400 1600 1800 2000 2200)
     "......" "----------------"))
 '(org-agenda-window-setup 'current-window)
 '(org-auto-align-tags t)
 '(org-bullets-bullet-list '("◉" "∗" "∙" "◦"))
 '(org-deadline-warning-days 18)
 '(org-src-preserve-indentation t)
 '(org-startup-indented t)
 '(org-stuck-projects
   '("+PROJECT&+LEVEL=2/-DONE"
     ("TODO" "NEXT" "NEXTACTION" "WAIT" "ABORT")
     nil ""))
 '(org-tags-column -145)
 '(org-todo-keyword-faces '(("WAIT" . "#0000f0") ("ABORT" . "#e000f0")))
 '(org-todo-keywords '((sequence "TODO" "WAIT" "|" "DONE" "ABORT")))
 '(package-selected-packages
   '(xterm-color ws-butler winum which-key web-mode web-beautify volatile-highlights vi-tilde-fringe uuidgen use-package toc-org tagedit super-save spaceline powerline smeargle slim-mode shell-pop scss-mode sass-mode restart-emacs pug-mode popwin persp-mode persistent-scratch pcre2el ox-gfm orgit org-present org-pomodoro alert log4e gntp org-plus-contrib org-mime org-download org-bullets move-text mmm-mode markdown-toc markdown-mode magit-gitflow magit-popup macrostep lorem-ipsum livid-mode skewer-mode simple-httpd linum-relative link-hint json-mode json-snatcher json-reformat js2-refactor yasnippet multiple-cursors js2-mode js-doc indent-guide hydra lv hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation helm-themes helm-swoop helm-projectile projectile helm-mode-manager helm-make helm-gitignore request helm-flycheck helm-flx helm-descbinds helm-css-scss helm-ag haml-mode gnuplot glsl-mode gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter git-gutter+ gh-md flycheck-pos-tip pos-tip flycheck pkg-info epl flx-ido flx fill-column-indicator fancy-battery expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired f evil-tutor evil-surround evil-search-highlight-persist highlight evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit magit git-commit with-editor transient evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu eshell-z eshell-prompt-extras esh-help emmet-mode elisp-slime-nav dumb-jump dash s disaster disable-mouse diminish diff-hl define-word column-enforce-mode coffee-mode cmake-mode clean-aindent-mode clang-format bind-map bind-key auto-highlight-symbol auto-compile packed aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async))
 '(pcomplete-ignore-case t)
 '(persistent-scratch-save-file
   (expand-file-name ".persistent-scratch" dotspacemacs-directory))
 '(spacemacs-theme-comment-bg nil)
 '(spacemacs-theme-custom-colors
   '((bg1 . "#F8F8F0")
     (base . "#000000")
     (bg2 . "#E8E8E0")
     (const . "#1C00CF")))
 '(spacemacs-theme-org-agenda-height nil)
 '(spacemacs-theme-org-height nil)
 '(split-width-threshold nil)
 '(super-save-all-buffers t)
 '(super-save-triggers nil)
 '(transient-history-file
   (expand-file-name
    (convert-standard-filename "transient/history.el")
    spacemacs-cache-directory))
 '(vc-git-annotate-switches "-w")
 '(vc-git-diff-switches "-b")
 '(which-key-enable-extended-define-key t))
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
 '(spacemacs-emacs-face ((t (:background "SkyBlue2" :foreground "#202020" :inherit 'mode-line))))
 '(spacemacs-evilified-face ((t (:background "LightGoldenrod3" :foreground "#202020" :inherit 'mode-line))))
 '(spacemacs-hybrid-face ((t (:background "SkyBlue2" :foreground "#202020" :inherit 'mode-line))))
 '(spacemacs-iedit-face ((t (:background "firebrick1" :foreground "202020#" :inherit 'mode-line))))
 '(spacemacs-iedit-insert-face ((t (:background "firebrick1" :foreground "#202020" :inherit 'mode-line))))
 '(spacemacs-insert-face ((t (:background "chartreuse3" :foreground "#202020" :inherit 'mode-line))))
 '(spacemacs-lisp-face ((t (:background "HotPink1" :foreground "#202020" :inherit 'mode-line))))
 '(spacemacs-motion-face ((t (:background "plum3" :foreground "#202020" :inherit 'mode-line))))
 '(spacemacs-normal-face ((t (:background "DarkGoldenrod2" :foreground "#202020" :inherit 'mode-line))))
 '(spacemacs-replace-face ((t (:background "chocolate" :foreground "#202020" :inherit 'mode-line))))
 '(spacemacs-visual-face ((t (:background "gray" :foreground "#202020" :inherit 'mode-line)))))

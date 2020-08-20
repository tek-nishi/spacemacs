;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ;; helm
     ;; auto-completion
     ;; better-defaults
     emacs-lisp
     javascript
     c-c++
     shaders
     (org :variables org-enable-github-support t)
     markdown
     git
     html
     ;; haskell
     ;; csharp
     (shell :variables shell-default-shell 'shell
                       shell-default-height 40)
     ;; spell-checking
     (syntax-checking :variables syntax-checking-enable-by-default nil)
     version-control 
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      persistent-scratch
                                      ;; auto-save-buffers-enhanced
                                      disable-mouse
                                      ;; tidal
                                      super-save
                                      helm-flycheck
                                      )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '(
                                  )
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(
                                    neotree
                                    avy
                                    google-translate
                                    ido
                                    ;;undo-tree
                                    ;;winum
                                    ;;winner
                                    ;;elisp-slime-nav
                                    paradox
                                    ;;persp-mode
                                    eyebrowse
                                    org-projectile
                                    open-junk-file
                                    multi-term
                                    golden-ratio
                                    ;;anzu
                                    ;;magithub
                                    tern
                                    git-gutter
                                    smartparens
                                    rainbow-delimiters
                                    )
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-but-keep-unused))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'lisp-interaction-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         ;;dichromacy
                         ;; spacemacs-dark
                         spacemacs-light
                         )
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Ricty"
                               :size   18
                               :weight normal
                               :width  normal
                               :powerline-scale 1.2)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key ""
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key nil
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts t
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location nil
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols nil
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  ;; 新しいリリースまでパッケージはstableを使う
  (push '("melpa-stable" . "stable.melpa.org/packages/") configuration-layer--elpa-archives)
  (push '(use-package . "melpa-stable") package-pinned-packages) 
  ;; Info path
  (setq Info-default-directory-list (list (expand-file-name "info" dotspacemacs-directory)
                                          (expand-file-name "../info" data-directory)))
  ;;カスタマイズ変数を読み込む
  (setq custom-file (expand-file-name "custom.el" dotspacemacs-directory))
  (when (file-exists-p custom-file)
    (load custom-file))
)

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  (add-to-list 'load-path (expand-file-name "lisp" dotspacemacs-directory))
  ;; diredの挙動をWindowsと揃える
  (load-library "ls-lisp")

  ;; (setq-default line-spacing 0.25)
  (setq frame-title-format " %b %f")

  ;; TIPS: 対応する括弧のハイライトを有効にしつつ OFF
  (show-paren-mode -1)

  (global-auto-revert-mode 1)

  (require 'ucs-normalize)
  (set-file-name-coding-system 'utf-8-hfs)
  (setq locale-coding-system   'utf-8-hfs)
  ;; git grep が utf-8-hfs に対応していないためのwork around
  (defun my-shell-quote-argument (shell-quote-argument str)
    (funcall shell-quote-argument (ucs-normalize-NFD-string str)))
  (advice-add 'shell-quote-argument :around 'my-shell-quote-argument)
  ;; バッファを閉じる時のクエリを抑止
  (defun shell-mode-hooks ()
    (set-process-query-on-exit-flag (get-buffer-process (current-buffer)) nil)
    )
  (add-hook 'shell-mode-hook 'shell-mode-hooks)
  ;; shell-popでshellを表示する時に、設定を無視して画面上部に表示されてしまうworkaround
  (push (cons "\\*shell\\*" display-buffer--same-window-action) display-buffer-alist)

  ;; Rictyだとpowerlineのシンボルに想定外のフォントが使われてしまうためのworkaround
  (set-fontset-font t 'symbol (font-spec :name "Hiragino Sans"))
  ;; マイナーモードの表示 
  ;; (spacemacs|diminish view-mode "" "V")
  ;; (spacemacs|diminish centered-cursor-mode "" "-")
  ;; (spacemacs|diminish super-save-mode "" "sSave")
  ;; (spacemacs|diminish helm-ff-cache-mode "" "ffCache")
  ;; (spacemacs|diminish which-key-mode "" "wKey")
  ;; (spacemacs|diminish flycheck-mode "" "!Flyc")
  ;; (spacemacs|diminish magit-blame-mode "" "Blame")

  ;; いくつかのアイコンはHookで書き換える
  ;; (defun evil-org-mode-hooks ()
  ;;   (spacemacs|diminish evil-org-mode " " "evil-org"))
  ;; (add-hook 'evil-org-mode-hook 'evil-org-mode-hooks)
  ;; (defun magit-gitflow-mode-hooks()
  ;;   (spacemacs|diminish magit-gitflow-mode "" "Flow"))
  ;; (add-hook 'magit-gitflow-mode-hook 'magit-gitflow-mode-hooks)

  ;; スクラッチバッファを永続化  
  (persistent-scratch-setup-default)
  ;; 折り返しモード設定
  (add-hook 'text-mode-hook #'visual-line-mode)
  ;; agenga viewからRETを押してorgを表示した時に、sub-treeを展開する
  (defun my-org-agenda-after-show-hooks ()
    (org-cycle))
  (add-hook 'org-agenda-after-show-hook 'my-org-agenda-after-show-hooks)

  ;; alt+arrowでwindowを移動
  (windmove-default-keybindings 'alt)

  ;; LISP構文の間違いを警告するfont-lockを無効にする
  (defadvice lisp--match-hidden-arg (around lisp--match-hidden-arg-wrapper)
    (if (not (and (boundp 'use-my-lisp--match-hidden-arg) 'use-my-lisp--match-hidden-arg))
        ad-do-it))
  (ad-activate 'lisp--match-hidden-arg)
  (defun my-lisp-interaction-mode-hooks ()
    (highlight-parentheses-mode 0)
    (hl-todo-mode 0)
    (setq-local show-paren-mode nil)
    (set (make-local-variable 'use-my-lisp--match-hidden-arg) t))
  (add-hook 'lisp-interaction-mode-hook 'my-lisp-interaction-mode-hooks)

  ;; 対応する括弧を表示する ON
  (defun my-show-paren-mode-toggle-on ()
    (setq-local show-paren-mode t))

  ;; c++modeでの設定
  ;; C-c C-s でその行の statement を解析する
  (defun my-c-mode-common-hooks ()
    (setq truncate-lines t)
    ;; (setq wrap-prefix t)
    (setq tab-width 2)
    (setq indent-tabs-mode nil)
    ;; (setq comment-column 52)
    ;; (setq comment-fill-column 500)

    (c-set-style "stroustrup")
    (setq c-basic-offset 2)
    ;; C-c C-s でその行の statement を解析する
    (c-set-offset 'inextern-lang 0)
    (c-set-offset 'statement-case-intro '+)
    (c-set-offset 'statement-case-open '+)
    (c-set-offset 'arglist-close '-)
    (c-set-offset 'substatement 0)
    (c-set-offset 'innamespace 0)
    ;; (c-set-offset 'inlambda 0)
    (c-set-offset 'inline-open 0)
    (c-set-offset 'objc-method-call-cont '++)
    (c-set-offset 'statement-cont 'c-lineup-cascaded-calls)

    (setq c-electric-pound-behavior '(alignleft))
    ;; (electric-pair-local-mode)
    (my-show-paren-mode-toggle-on)
    (highlight-numbers-mode)
    )
  (add-hook 'c-mode-common-hook 'my-c-mode-common-hooks)

  (add-to-list 'magic-mode-alist '("\\(.\\|\n\\)*\n\\(class\\|namespace\\|template\\)" . c++-mode))

  (add-to-list 'magic-mode-alist '("\\(.\\|\n\\)*\n\\(@interface\\|#import\\|@protocol\\)" . objc-mode))
  (add-to-list 'auto-mode-alist '("\\.mm\\'" . objc-mode))

  (remove-hook 'prog-mode-hook 'hl-todo-mode)
  (add-hook 'prog-mode-hook 'my-show-paren-mode-toggle-on)

  ;; 行末の空白を色分けしない
  (setq spacemacs-show-trailing-whitespace nil)
  ;; buffer切り替えでorg-agendaを無視しない
  (push "\\*Org\.\+\\*" spacemacs-useful-buffers-regexp)

  ;; normal-modeになったら強制的に英語入力へ
  (defun my-evil-normal-state-entry-hook ()
    (mac-select-input-source "com.apple.keylayout.ABC"))
  (add-hook 'evil-normal-state-entry-hook 'my-evil-normal-state-entry-hook)
  (add-hook 'focus-in-hook 'my-evil-normal-state-entry-hook)

  ;; フォーカスアウトで自動保存
  (super-save-mode +1)

  ;; 左右マージン
  (require 'wm)
  (spacemacs/set-leader-keys "t," 'wm-toggle)
  (wm-turn-on)

  ;; カーソル移動を見た目で workaround
  (define-key evil-normal-state-map (kbd "<remap> <evil-next-line>")     'evil-next-visual-line)
  (define-key evil-normal-state-map (kbd "<remap> <evil-previous-line>") 'evil-previous-visual-line)
  (define-key evil-motion-state-map (kbd "<remap> <evil-next-line>")     'evil-next-visual-line)
  (define-key evil-motion-state-map (kbd "<remap> <evil-previous-line>") 'evil-previous-visual-line)
  
  ;; diffでwhitespace非表示のworkaround
  (remove-hook 'diff-mode-hook 'whitespace-mode)
  (remove-hook 'diff-mode-hook 'spacemacs//set-whitespace-style-for-diff)
  
  ;; GCの閾値を初期値に戻す
  (setq gc-cons-threshold (* 8 1024 1024))

  ;; 曖昧な文字幅を全て二文字扱いにする
  ;; (require 'eaw)
  ;; (eaw-fullwidth)
  
  ;; バッファの文字コード表示に改行とBOM付きを加える
  (spaceline-define-segment buffer-encoding-abbrev
    "The line ending convention used in the buffer."
    (let ((buf-coding (format "%s" buffer-file-coding-system)))
      (list (replace-regexp-in-string "-with-signature\\|-unix\\|-dos\\|-mac" "" buf-coding)
            (concat (and (string-match "with-signature" buf-coding) "BOM")
            ;; (concat (and (string-match "with-signature" buf-coding) "")
            ;;         (and (string-match "unix"           buf-coding) "")
            ;;         (and (string-match "dos"            buf-coding) "")
            ;;         (and (string-match "mac"            buf-coding) "")
                    )))
    :separator " ")

  (spacemacs/set-leader-keys "jo" 'ff-find-other-file)

  ;; キーワード挿入
  (defun my-TODO ()
    (interactive)
    (insert "TODO ")) 

  (defun my-FIXME()
    (interactive)
    (insert "FIXME ")) 

  (defun my-TIPS()
    (interactive)
    (insert "TIPS ")) 
  
  (defun my-SOURCE()
    (interactive)
    (insert "SOURCE ")) 
  
  (defun my-NOTICE()
    (interactive)
    (insert "NOTICE "))

  (spacemacs/set-leader-keys "iT" '("insert TODO" . my-TODO))
  (spacemacs/set-leader-keys "iF" '("insert FIXME" . my-FIXME))
  (spacemacs/set-leader-keys "iP" '("insert TIPS" . my-TIPS))
  (spacemacs/set-leader-keys "iS" '("insert SOURCE" . my-SOURCE))
  (spacemacs/set-leader-keys "iN" '("insert NOTICE" . my-NOTICE))
  
  (global-hl-todo-mode t)

  ;; dumb-jump
  (spacemacs/set-leader-keys "jg" 'dumb-jump-go)
  (spacemacs/set-leader-keys "jp" 'dumb-jump-back)
  ;; (spacemacs/set-leader-keys "jq" nil)

  (spacemacs/set-leader-keys "bC" 'set-buffer-file-coding-system)

  ;; tagの整列は SPC u C-c C-c
  (with-eval-after-load 'org
    ;; Replace org-set-tags with org-set-tags-command in keybinding
    (spacemacs/set-leader-keys-for-major-mode 'org-mode ":" 'org-set-tags-command)
    ;; 簡単雛形挿入
    (require 'org-tempo)
    (spacemacs/set-leader-keys-for-major-mode 'org-mode "eh" 'org-html-export-to-html)
    (spacemacs/set-leader-keys-for-major-mode 'org-mode "em" 'org-gfm-export-to-markdown)
    (spacemacs/set-leader-keys-for-major-mode 'org-mode "v" 'org-todo-list-current-file)
    )

  ;; org-agenda
  (with-eval-after-load "org-agenda"
    (define-key org-agenda-mode-map "u" 'org-agenda-undo))

  (defun org-todo-list-current-file (&optional arg)
    "Like `org-todo-list', but using only the current buffer's file."
    (interactive "P")
    (let ((org-agenda-files (list (buffer-file-name (current-buffer)))))
      (if (null (car org-agenda-files))
          (error "%s is not visiting a file" (buffer-name (current-buffer)))
        (org-todo-list arg))))

  (fset 'evil-visual-update-x-selection 'ignore)

  ;; mouse禁止
  (setq disable-mouse-wheel-events nil)
  (global-disable-mouse-mode)
  (define-key evil-motion-state-map (kbd "<down-mouse-1>") nil)
  (with-eval-after-load 'helm
    (remove-hook 'helm-after-initialize-hook 'spacemacs//prevent-minibuffer-escape)
    (remove-hook 'helm-cleanup-hook 'spacemacs//unprevent-minibuffer-escape)
    )
  ;; ピンチインでテキスト縮小
  (define-key global-map (kbd "<magnify-down>") 'mac-magnify-text-scale)
  (define-key global-map (kbd "<magnify-up>") 'mac-magnify-text-scale)

  ;; FIXME ieditでの関数名が変わった
  (fset 'iedit-toggle-unmatched-lines-visible 'iedit-show/hide-unmatched-lines)

  ;; Tidal
  ;; (setq tidal-interpreter "/usr/local/bin/stack")
  ;; (setq tidal-interpreter-arguments
  ;;       (list "repl"
  ;;             "--ghci-options=-XOverloadedStrings"
  ;;             ))
  
  ;; SuperCollider
  ;; (with-eval-after-load "tidal"
  ;;   (require 'sclang)
  ;;   (define-key tidal-mode-map (kbd "C-c s s") 'sclang-start)
  ;;   (define-key tidal-mode-map (kbd "C-c s q") 'sclang-quit))

  ;; 電卓
  (spacemacs/set-leader-keys "ac" 'calculator)
  (add-to-list 'evil-insert-state-modes 'calculator-mode)

  ;; GLSL
  (defun glsl-mode-hooks ()
    ;; (setq tab-width 2)
    ;; (setq indent-tabs-mode nil)
    (add-to-list 'glsl-other-file-alist '("\\.fsh$" (".vsh"))) 
    (add-to-list 'glsl-other-file-alist '("\\.vsh$" (".fsh")))) 
  (add-hook 'glsl-mode-hook 'glsl-mode-hooks)

  ;; JSON mode
  (defun json-mode-hooks ()
    (flycheck-mode))
  (add-hook 'json-mode-hook 'json-mode-hooks)

  ;; magit
  (setq magit-auto-revert-mode t)
  (spacemacs/set-leader-keys "gd" 'magit-diff-buffer-file)

  (spacemacs/set-leader-keys "ap" nil)
  )

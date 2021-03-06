﻿;; You should not put any user code in this function besides modifying the variable values."
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
   ;; javascript
   lua
   ;; ----------------------------------------------------------------
   ;; Example of useful layers you may want to use right away.
   ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
   ;; <M-m f e R> (Emacs style) to install them.
   ;; ----------------------------------------------------------------
   (ipython-notebook :variables
                     ein:use-auto-complete t
                     ein:complete-on-dot t
                     ein:completion-backend 'ein:use-company-backend)
   python
   ;; helm
   ivy
   ;; smex
   pdf-tools
   html
   latex
   better-defaults
   (auto-completion
    :variables
    auto-completion-enable-snippets-in-popup t)
   (python :variables python-enable-yapf-format-on-save t)

   emacs-lisp
   git
   markdown
   org
   ;; smex
   (shell :variables
          shell-default-height 30
          shell-default-position 'bottom)
   ;;spell-checking
   syntax-checking
   ;; version-control
   ;; mu4e
   )
 ;; List of additional packages that will be installed without being
 ;; wrapped in a layer. If you need some configuration for these
 ;; packages, then consider creating a layer. You can also put the
 ;; configuration in `dotspacemacs/user-config'.
 dotspacemacs-additional-packages '(
                                    ;; org-sidebar
                                    pinyin-search
                                    
                                    vdiff
                                    google-this
                                    notmuch
                                    ;; helm-smex

                                    cal-china-x
                                    org-ref
                                    writeroom-mode
                                    company-tabnine
                                    fcitx
                                    ;; helm-google
                                    ;; company-jedi
                                    evil-mu4e
                                    ;; org-superstar
                                    super-save
                                    real-auto-save
                                    ivy-rich
                                    origami
                                    evil-find-char-pinyin
                                    alert
                                    darkroom
                                    diminish
                                    emojify
                                    )
 ;; A list of packages that cannot be updaERR_SOCKET_NOT_CONNECTEDted.
 dotspacemacs-frozen-packages '()
 ;; A list of packages that will not be installed and loaded.
 dotspacemacs-excluded-packages '(
                                  org-projectile
                                  ;; auto-complete
                                  ;; mu4e-maildirs-extension
                                  evil-search-highlight-persist
                                  org-bullets
                                  ;; ivy
                                  )
 ;; Defines the behaviour of Spacemacs when installing packages.
 ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
 ;; `used-only' installs only explicitly used packages and uninstall any
 ;; unused packages as well as their unused dependencies.
 ;; `used-but-keep-unused' installs only the used packages but won't uninstall
 ;; them if they become unused. `all'(setq python-shell-interpreter-args "") installs *all* packages supported by
 ;; Spacemacs and never uninstall them. (default is `used-only')
 dotspacemacs-install-packages 'used-only)

(defun dotspacemacs/init ()
  "Initialimu4e-maildirs-extensionzation funcmu4e-maildirs-extensiontion.
This function is called at thhi Function term=bold       ctermfg=White guifg=White
e very startup of Spacemacs initialization
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
   dotspacemacs-elpa-timeout 300
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
                                (projects . 5))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'org-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         ;; dracula
                         ;; zenburn
                         sanityinc-tomorrow-bright
                         solarized-dark
                         ;; spacemacs-light
                         spacemacs-dark
                         monokai
                         )
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state nil
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   ;; Inconsolatag For Powerline

   dotspacemacs-default-font '("Monaco for Powerline"
                               :size 14
                               ;; :embolden t
                               :weight normal
                               :width normal
                               :powerline-scale 1.0)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of

   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   ;;hether separate commands are bound in the GUI to
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
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 10
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 100
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
   dotspacemacs-maximized-at-startup nil
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
   dotspacemacs-mode-line-unicode-symbols t
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

  ;;Release
  (setq configuration-layer--elpa-archives
        '(("melpa-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
          ("org-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
          ("gnu-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))

  ;;Develop
  ;;(setq configuration-layer-elpa-archives
  ;;      '(("melpa-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
  ;;        ("org-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
  ;;        ("gnu-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))

  ;; https://github.com/syl20bnr/spacemacs/issues/2705
  (setq tramp-ssh-controlmaster-options "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")

  ;;Solve Environment variable warnings
  (setq exec-path-from-shell-check-startup-files nil)
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

  ;; (set-face-attribute 'default nil 
  ;;                     :family "Monaco" 
  ;;                     :height 120  
  ;;                     :weight 'bold
  ;;                     :width 'normal)
  ;;{------------------------------------------------
  ;;Load Init Config File
  (push "~/.spacemacs.d/lisp" load-path)

  ;;Set Shell
  ;; (setq shell-file-name "cmdproxy");; Copyright (c) 2010-2017 Dennis Ogbe
  (setq shell-file-name "/bin/zsh")

  ;;Set Default Home Dir
  ;;(setq default-directory "C:/Users/zhangtao/Dropbox/")
  ;;(cd "~/emacs/home/")
  (setq default-directory "~/Dropbox/")
  ;; (setq default-directory "c:/Users/张宏")

  ;;----------------
  ;;yasnippet - A template system for Emacs and add extra snippet directories
  (setq yas-snippet-dirs
        '("/home/zhangtao/Dropbox/.backup/snippets"

          ))
  (yas-global-mode 1) ;; or M-x yas-reload-all if you've started YASnippet already.

  ;; txt file with org mode 
  (add-to-list 'auto-mode-alist '("\\.txt\\'" . org-mode))

  ;; (setq projectile-project-search-path '("~/Dropbox/" "~/Documents/"))

  ;;Browser
  (setq gnus-button-url 'browse-url-generic
        browse-url-generic-program "google-chrome"
        browse-url-browser-function gnus-button-url)
  
  ;;------------------------------------------------}
  ;; (require 'init-fix)
  (require 'init-face)
  (require 'init-emacs)
  (require 'init-save)
  (require 'init-ivy)
  (require 'init-evil)
  ;;------------------------------------------------}
  (require 'init-org)
  (require 'init-latex)
  (require 'init-org-pdf)
  ;;----------------------------------------------------------
  (require 'init-day)
  ;; (require 'init-email)

  (require 'init-python)

  (setq recentf-save-file (expand-file-name "recentf" "~/Dropbox/.backup/")) ;;Notice the line positon should be in the last
    ;;-------------------------------end---------------------------------------
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-done ((t (:foreground "Grey" :weight normal :strike-through t))))
 '(org-done ((t (:foreground "#999" :weight normal :strike-through t))))
 '(org-headline-done ((((class color) (min-colors 16) (background dark)) (:foreground "#999" :strike-through t))))
 '(org-todo ((t (:foreground "DarkRed" :weight extra-bold :strike-through nil)))))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(markdown-command "/usr/bin/pandoc")
 '(org-agenda-files
   (quote
    ("~/Dropbox/Note/todo_new.txt" "~/Dropbox/Note/todo.txt" "~/Dropbox/Note/inbox.txt")))
 '(package-selected-packages
   (quote
    (unicode-fonts ucs-utils font-utils persistent-soft list-utils pcache helm-smex ivy-rich real-auto-save org-superstar evil-find-char-pinyin vdiff pinyin-search pinyinlib fcitx flucui-theme pyim pyim-basedict xr color-theme-sanityinc-solarized emojify company-tern tern coffee-mode darkroom web-beautify livid-mode json-mode json-snatcher json-reformat js2-refactor multiple-cursors js-doc org-sidebar org-ql peg ov org-super-agenda ts company-tabnine unicode-escape names lv transient polymode writeroom-mode visual-fill-column helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag ace-jump-helm-line org-plus-contrib org-bullets yapfify xterm-color ws-butler winum which-key wgrep web-mode volatile-highlights vi-tilde-fringe uuidgen use-package unfill toc-org tagedit super-save spaceline powerline smex smeargle slim-mode shell-pop scss-mode sass-mode restart-emacs rainbow-delimiters pyvenv pytest pyenv-mode py-isort pug-mode popwin pip-requirements persp-mode pcre2el paradox spinner orgit org-ref pdf-tools key-chord helm-bibtex biblio parsebib biblio-core tablist org-present org-pomodoro org-mime org-download open-junk-file neotree mwim multi-term mu4e-maildirs-extension mu4e-alert ht alert log4e gntp move-text mmm-mode markdown-toc markdown-mode magit-gitflow macrostep lua-mode lorem-ipsum live-py-mode linum-relative link-hint less-css-mode ivy-hydra indent-guide hydra hy-mode dash-functional hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation helm-make helm helm-core haml-mode google-translate google-this golden-ratio gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gh-md fuzzy flycheck-pos-tip pos-tip flycheck flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mu4e evil-mc evil-matchit evil-magit magit magit-popup git-commit ghub let-alist with-editor evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight eshell-z eshell-prompt-extras esh-help emmet-mode elisp-slime-nav ein skewer-mode request-deferred websocket request deferred js2-mode simple-httpd dumb-jump diminish diff-hl define-word cython-mode counsel-projectile projectile pkg-info epl counsel swiper ivy company-web web-completion-data company-statistics company-auctex company-anaconda company column-enforce-mode clean-aindent-mode cal-china-x bind-map bind-key auto-yasnippet yasnippet auto-highlight-symbol auto-compile packed auctex-latexmk auctex async anaconda-mode pythonic f dash s aggressive-indent adaptive-wrap ace-window ace-link avy ac-ispell auto-complete popup color-theme-sanityinc-tomorrow)))
 '(send-mail-function (quote mailclient-send-it))
 '(window-divider-mode nil))

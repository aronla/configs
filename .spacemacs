; -*- mode: emacs-lisp -*-
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
   '(rust
     csv
     html
     ipython-notebook
     markdown
     sql
     shell-scripts
     vimscript
     javascript
     yaml
     auto-completion
     latex
     lsp
     ;; (python :variables python-backend 'lsp)
     python
     scala
     (java :variables java-backend 'lsp)
     dap
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     helm
     ;; themes-megapack
     ;; better-defaults
     emacs-lisp
     git
     bibtex
     ;; markdown
     (org :variables
          org-enable-reveal-js-support t)
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom)
     spell-checking
     syntax-checking
     version-control
     zotero
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(ox-reveal
                                      atom-dark-theme)
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(evil-search-highlight-persist
                                    smartparens
                                    importmagic
                                    undo-tree
                                    org-bullets)
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

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
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         atom-dark
                         cyberpunk
                         zenburn
                         spacemacs-light
                         spacemacs-dark
                         )
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
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
   dotspacemacs-major-mode-leader-key "DEL"
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
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
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'nil
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
   dotspacemacs-fullscreen-at-startup t
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
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers t
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
   dotspacemacs-fullscreen-at-startup t
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  (defun foo () 5)
  ;; KEYBOARD RELATED
  ;; (mapc 'global-unset-key '([left] [right] [up] [down]))
  ;; (define-key evil-normal-state-map [left] 'foo)
  ;; (define-key evil-normal-state-map [right] 'foo)
  ;; (define-key evil-normal-state-map [up] 'foo)
  ;; (define-key evil-normal-state-map [down] 'foo)

  ;; (define-key evil-insert-state-map [left] 'foo)
  ;; (define-key evil-insert-state-map [right] 'foo)
  ;; (define-key evil-insert-state-map [up] 'foo)
  ;; (define-key evil-insert-state-map [down] 'foo)

  ;; (define-key evil-visual-state-map [left] 'foo)
  ;; (define-key evil-visual-state-map [right] 'foo)
  ;; (define-key evil-visual-state-map [up] 'foo)
  ;; (define-key evil-visual-state-map [down] 'foo)
  (setq-default evil-escape-delay 0.2)
  (setq python-shell-interpreter "/Users/aron/.pyenv/shims/python")


  (define-key evil-normal-state-map (kbd "C-i") 'evil-jump-forward)
  (global-set-key (kbd "<tab>") 'indent-for-tab-command)
  (evil-define-key 'normal evil-jumper-mode-map (kbd "TAB") nil)
  (global-set-key (kbd "C-h") 'delete-backward-char)
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; OS X SPECIFIC
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (setq ns-pop-up-frames nil)
  (setq pop-up-frames nil)
  (add-to-list 'default-frame-alist '(fullscreen . fullboth))

  (setq evil-search-highlight-persist nil)

  (setq neo-theme 'ascii)
  (setq treemacs-no-png-images t)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; PYTHON STUFF
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; (setq python-shell-interpreter "python3"
  ;;       python-shell-interpreter-args "-i")
  ;; (with-eval-after-load 'python
  ;;   (defun python-shell-completion-native-try ()
  ;;     "Return non-nil if can trigger native completion."
  ;;     (let ((python-shell-completion-native-enable t)
  ;;           (python-shell-completion-native-output-timeout
  ;;            python-shell-completion-native-try-output-timeout))
  ;;       (python-shell-completion-native-get-completions
  ;;        (get-buffer-process (current-buffer))
  ;;        nil "_"))))
  (defvaralias 'flycheck-python-pylint-executable 'python-shell-interpreter)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; UNDO TREE
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; (unless (file-exists-p (concat spacemacs-cache-directory "undo"))
  ;;   (make-directory (concat spacemacs-cache-directory "undo")))
  ;; (setq undo-tree-auto-save-history f
  ;;       undo-tree-history-directory-alist
  ;;       `(("." . ,(concat spacemacs-cache-directory "undo"))))
  ;; (setq undo-tree-visualizer-relative-timestamps nil)
  (setq undo-tree-enable-undo-in-region nil)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; VARIOUS
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (setq dired-listing-switches "-alh")
  (setq-default evil-search-module 'evil-search)
  (setq create-lockfiles nil)
  (setq helm-buffer-max-length 40)
  (setq-default shell-file-name "/bin/bash")

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; DISABLE SYNTAX CHECKING BY DEFAULT
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (setq-default dotspacemacs-configuration-layers
                '((syntax-checking :variables syntax-checking-enable-by-default nil)))

  ;; GETS RID OF MENU BAR IN SOME MODES
  (defun contextual-menubar (&optional frame)
    (interactive)
    (set-frame-parameter frame 'menu-bar-lines (if (display-graphic-p frame) 0 0)))
  (add-hook 'after-make-frame-functions 'contextual-menubar)
  (menu-bar-mode -1)

  (setq projectile-enable-caching t)

  ;; targets include this file and any file contributing to the agenda, up to 9 levels deep
  (setq org-refile-targets '((org-agenda-files :maxlevel . 9)
        (nil :maxlevel . 3)))


  (defun buffer-mode (buffer-or-string)
    "Returns the major mode associated with a buffer."
    (with-current-buffer buffer-or-string
      major-mode))

  (defun if-org-get-name(default-path)
    (if ( string-equal (buffer-mode (buffer-name)) "org-mode" )
        (buffer-file-name)
        default-path
      )
    )

  (require 'helm-bookmark)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; ORG MODE
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (with-eval-after-load 'org

    (setq org-default-notes-file "~/org/refile.org")

    (setq org-capture-templates
          (quote (("t" "todo" entry (file "~/org/todo.org")
                  "* TODO %?\n%T\n" :empty-lines 1)
                  ;; ("e" "experiment" entry (file+headline "~/org/experiments.org" "refile")
                  ;; "* Experiment %U :experiment: \n** Name: %^{name| }\n** Tag: %^{tag| }\n** ID: %^{id| } \n** Description: \n %? \n** Results: \n" )
                  ;; ("e" "experiment" entry (file (lambda () (buffer-file-name)))

                  ("e" "experiment" entry (file (lambda () (if-org-get-name "~/org/experiments.org")))
                  ;; ("e" "experiment" entry (file "~/org/experiments.org")
                  "* Experiment %U :experiment: \n** Name: %^{name| }\n** ID: %^{id| } \n** Description: \n %? \n** Results: \n" )
                  ("n" "note" entry (file "/Users/aron/org/notes.org")
                  "* %? :NOTE:\n%T\n" )
                  ("j" "Journal" entry (file+olp+datetree "~/org/journal.org")
                  "* %T\n%?\n" )
                  ("m" "Meeting" entry (file "~/org/meetings.org")
                  "* MEETING with %^{participants} :MEETING:%T\n%?"  ))))

    (setq org-outline-path-complete-in-steps nil)
    ;; (setq org-refile-use-outline-path t)
    (setq org-refile-use-outline-path 'file)

    ;; auto save on refile
    (add-hook 'org-after-refile-insert-hook
              (lambda ()
                (add-hook 'auto-save-hook 'org-save-all-org-buffers nil t)
                (auto-save-mode)))

    (setq org-todo-keywords
            '((sequence "TODO" "IN PROGRESS" "|" "DONE" )))

  )

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; BIBTEX
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (setq org-ref-default-bibliography '("~/org/references.bib")
        org-ref-pdf-directory "~/org/papers/"
        org-ref-bibliography-notes "~/org/bib_notes.org")

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; ECLIM
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


  (setq eclim-eclipse-dirs '("~/Applications/java-oxygen/Eclipse.app/Contents/Eclipse")
        eclim-executable "~/Applications/java-oxygen/Eclipse.app/Contents/Eclipse/eclim"
        eclimd-executable "~/Applications/java-oxygen/Eclipse.app/Contents/Eclipse/eclimd"
        )

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; LATEX
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (setenv "LANG" "en_US.UTF-8")
  (add-hook 'doc-view-mode-hook 'auto-revert-mode)

)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#080808" "#d70000" "#67b11d" "#875f00" "#268bd2" "#af00df" "#00ffff" "#b2b2b2"])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-safe-themes
   (quote
    ("c620ce43a0b430dcc1b06850e0a84df4ae5141d698d71e17de85e7494377fd81" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(fci-rule-color "#383838" t)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(org-agenda-files
   (quote
    ("~/org/ML_learning.org" "~/org/experiments.org" "~/org/epics.org" "~/org/journal.org" "~/org/personal_development.org" "~/org/meetings.org" "~/org/research_days.org" "~/org/main.org" "~/org/todo.org")))
 '(org-use-fast-tag-selection nil)
 '(package-selected-packages
   (quote
    (zotxt zotelo transient polymode org-ref pdf-tools key-chord ivy tablist helm-bibtex parsebib biblio biblio-core atom-dark-theme treepy graphql org-projectile-helm white-sand-theme rebecca-theme org-mime exotica-theme ghub let-alist ein request-deferred websocket deferred ox-reveal powerline spinner org-category-capture gntp skewer-mode simple-httpd json-snatcher json-reformat parent-mode gitignore-mode fringe-helper git-gutter+ git-gutter flyspell-correct pos-tip pkg-info epl flx iedit anzu goto-chg undo-tree autothemer dash-functional tern bind-map bind-key pythonic dash auto-complete popup multiple-cursors request flycheck sbt-mode scala-mode diminish packed avy anaconda-mode eclim yasnippet company smartparens magit magit-popup highlight evil git-commit with-editor helm helm-core async alert log4e projectile hydra f js2-mode s winum solarized-theme madhat2r-theme fuzzy csv-mode web-mode tagedit slim-mode scss-mode sass-mode pug-mode less-css-mode helm-css-scss haml-mode emmet-mode company-web web-completion-data mmm-mode markdown-toc markdown-mode gh-md zonokai-theme zenburn-theme zen-and-art-theme yapfify yaml-mode xterm-color ws-butler window-numbering which-key web-beautify volatile-highlights vimrc-mode vi-tilde-fringe uuidgen use-package underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme tronesque-theme toxi-theme toc-org tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme sql-indent spacemacs-theme spaceline spacegray-theme soothe-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle shell-pop seti-theme reverse-theme restart-emacs rainbow-delimiters railscasts-theme quelpa pyvenv pytest pyenv-mode py-isort purple-haze-theme professional-theme popwin planet-theme pip-requirements phoenix-dark-pink-theme phoenix-dark-mono-theme persp-mode pcre2el pastels-on-dark-theme paradox orgit organic-green-theme org-projectile org-present org-pomodoro org-plus-contrib org-download org-bullets open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noflet noctilux-theme niflheim-theme neotree naquadah-theme mustang-theme multi-term move-text monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme magit-gitflow macrostep lush-theme lorem-ipsum livid-mode live-py-mode linum-relative link-hint light-soap-theme json-mode js2-refactor js-doc jbeans-theme jazz-theme ir-black-theme insert-shebang inkpot-theme info+ indent-guide ido-vertical-mode hy-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt heroku-theme hemisu-theme help-fns+ helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-company helm-c-yasnippet helm-ag hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme google-translate golden-ratio gnuplot gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gandalf-theme flyspell-correct-helm flycheck-pos-tip flx-ido flatui-theme flatland-theme fish-mode firebelly-theme fill-column-indicator farmhouse-theme fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu espresso-theme eshell-z eshell-prompt-extras esh-help ensime elisp-slime-nav dumb-jump dracula-theme django-theme diff-hl define-word darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme dactyl-mode cython-mode cyberpunk-theme company-tern company-statistics company-shell company-emacs-eclim company-anaconda column-enforce-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized coffee-mode clues-theme clean-aindent-mode cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes aggressive-indent afternoon-theme adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(safe-local-variable-values
   (quote
    ((eval setq python-shell-extra-pythonpaths
           (list "/Users/aron/programming/kraken/rest_server/" "sandbox/data_utils/"))
     (eval setq python-shell-extra-pythonpaths
           (list "/Users/aron/programming/kraken/rest_server/")))))
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#080808" "#d70000" "#67b11d" "#875f00" "#268bd2" "#af00df" "#00ffff" "#b2b2b2"])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-safe-themes
   (quote
    ("c620ce43a0b430dcc1b06850e0a84df4ae5141d698d71e17de85e7494377fd81" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(fci-rule-color "#383838" t)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(org-agenda-files
   (quote
    ("~/org/ML_learning.org" "~/org/experiments.org" "~/org/epics.org" "~/org/journal.org" "~/org/personal_development.org" "~/org/meetings.org" "~/org/research_days.org" "~/org/main.org" "~/org/todo.org")))
 '(org-use-fast-tag-selection nil)
 '(package-selected-packages
   (quote
    (toml-mode racer helm-gtags ggtags flycheck-rust counsel-gtags cargo rust-mode zotxt zotelo transient polymode org-ref pdf-tools key-chord ivy tablist helm-bibtex parsebib biblio biblio-core atom-dark-theme treepy graphql org-projectile-helm white-sand-theme rebecca-theme org-mime exotica-theme ghub let-alist ein request-deferred websocket deferred ox-reveal powerline spinner org-category-capture gntp skewer-mode simple-httpd json-snatcher json-reformat parent-mode gitignore-mode fringe-helper git-gutter+ git-gutter flyspell-correct pos-tip pkg-info epl flx iedit anzu goto-chg undo-tree autothemer dash-functional tern bind-map bind-key pythonic dash auto-complete popup multiple-cursors request flycheck sbt-mode scala-mode diminish packed avy anaconda-mode eclim yasnippet company smartparens magit magit-popup highlight evil git-commit with-editor helm helm-core async alert log4e projectile hydra f js2-mode s winum solarized-theme madhat2r-theme fuzzy csv-mode web-mode tagedit slim-mode scss-mode sass-mode pug-mode less-css-mode helm-css-scss haml-mode emmet-mode company-web web-completion-data mmm-mode markdown-toc markdown-mode gh-md zonokai-theme zenburn-theme zen-and-art-theme yapfify yaml-mode xterm-color ws-butler window-numbering which-key web-beautify volatile-highlights vimrc-mode vi-tilde-fringe uuidgen use-package underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme tronesque-theme toxi-theme toc-org tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme sql-indent spacemacs-theme spaceline spacegray-theme soothe-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle shell-pop seti-theme reverse-theme restart-emacs rainbow-delimiters railscasts-theme quelpa pyvenv pytest pyenv-mode py-isort purple-haze-theme professional-theme popwin planet-theme pip-requirements phoenix-dark-pink-theme phoenix-dark-mono-theme persp-mode pcre2el pastels-on-dark-theme paradox orgit organic-green-theme org-projectile org-present org-pomodoro org-plus-contrib org-download org-bullets open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noflet noctilux-theme niflheim-theme neotree naquadah-theme mustang-theme multi-term move-text monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme magit-gitflow macrostep lush-theme lorem-ipsum livid-mode live-py-mode linum-relative link-hint light-soap-theme json-mode js2-refactor js-doc jbeans-theme jazz-theme ir-black-theme insert-shebang inkpot-theme info+ indent-guide ido-vertical-mode hy-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt heroku-theme hemisu-theme help-fns+ helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-company helm-c-yasnippet helm-ag hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme google-translate golden-ratio gnuplot gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gandalf-theme flyspell-correct-helm flycheck-pos-tip flx-ido flatui-theme flatland-theme fish-mode firebelly-theme fill-column-indicator farmhouse-theme fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu espresso-theme eshell-z eshell-prompt-extras esh-help ensime elisp-slime-nav dumb-jump dracula-theme django-theme diff-hl define-word darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme dactyl-mode cython-mode cyberpunk-theme company-tern company-statistics company-shell company-emacs-eclim company-anaconda column-enforce-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized coffee-mode clues-theme clean-aindent-mode cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes aggressive-indent afternoon-theme adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(safe-local-variable-values
   (quote
    ((eval setq python-shell-extra-pythonpaths
           (list "/Users/aron/programming/kraken/rest_server/" "sandbox/data_utils/"))
     (eval setq python-shell-extra-pythonpaths
           (list "/Users/aron/programming/kraken/rest_server/")))))
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
)

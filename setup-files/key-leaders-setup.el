;;; package -- Summary
;;; Commentary:
;; --------------------------------------------------------------------
;;; Code:
;; --------------------------------------------------------------------

;; --------------------------------------------------------------------
;; general leader
;; --------------------------------------------------------------------
(general-define-key
 :states '(normal visual motion emacs)
 :keymaps 'override
 :prefix "SPC"
 ;; show filename
 "`" 'show-file-name
 ;; helm
 "x" 'helm-M-x
 "w" 'helm-mini
 "f" 'helm-swoop-without-pre-input
 "F" 'helm-find-files
 "M-f" 'helm-multi-swoop-all
 "b" 'helm-filtered-bookmarks
 "B" 'edit-bookmarks
 "m" 'helm-all-mark-rings
 "r" 'helm-semantic-or-imenu
 "R" 'helm-imenu-anywhere
 "y" 'helm-show-kill-ring
 "Y" 'helm-register
 "hg" 'helm-google
 "hG" 'helm-do-grep-ag
 "ha" 'helm-do-ag
 "hl" 'helm-locate
 "hw" 'helm-do-ag-buffers
 "hd" 'helm-dash
 "hs" 'helm-system-packages
 "hf" 'helm-fzf
 "hp" 'helm-fzf-project-root
 ;; help
 "hv" 'describe-variable
 "hF" 'describe-function
 "hm" 'describe-mode
 "hk" 'describe-key
 "hi" 'info
 "Df" 'describe-face
 "DF" 'describe-font
 "Dt" 'describe-text-properties
 ;; helpful
 "Hv" 'helpful-variable
 "Hf" 'helpful-callable
 "HF" 'helpful-function
 "Hp" 'helpful-at-point
 "Hc" 'helpful-command
 "Hk" 'helpful-key
 ;; projectile
 "pp" 'helm-projectile-switch-project
 "pf" 'helm-projectile-find-file
 "pF" 'helm-projectile-find-file-in-known-projects
 "pi" 'projectile-invalidate-cache
 "pk" 'projectile-kill-buffers
 "pa" 'helm-projectile-ag
 "pc" 'org-projectile-project-todo-completing-read
 ;; save all buffers
 "s" (lambda() (interactive) (save-some-buffers t))
 ;; hydras
 "t" 'hydra-rare-launcher/body
 "d" 'hydra-window-operations/body
 "SPC" 'hydra-window-operations/body
 ;; "I" 'hydra-indent/body
 "gS" 'hydra-smerge/body
 ;; winner
 "q" 'winner-undo
 "Q" 'winner-redo
 "M-q" 'clean-buffer-list
 ;; avy
 "e" 'avy-goto-char-timer
 "E" 'evil-avy-goto-char-2
 "u" 'evil-avy-goto-char-2
 "j" 'evil-avy-goto-word-or-subword-1
 "J" 'evil-avy-goto-word-0
 ;; anzu
 "a" 'anzu-query-replace
 "A" 'anzu-query-replace-at-cursor
 ;; evil comment
 ";" 'evilnc-comment-or-uncomment-lines
 "kk" 'evilnc-comment-or-uncomment-lines
 "kl" 'evilnc-quick-comment-or-uncomment-to-the-line
 "kc" 'evilnc-copy-and-comment-lines
 "kp" 'evilnc-comment-or-uncomment-paragraphs
 "kr" 'comment-or-uncomment-region
 "kv" 'evilnc-toggle-invert-comment-line-by-line
 ;; whitespace mode
 "W" 'ibuffer
 ;; editing assists
 "i" 'cleanup-buffer-untabify
 "I" 'cleanup-buffer-tabify
 ;; dumb jump
 "lo" 'dumb-jump-go-other-window
 "lj" 'dumb-jump-go
 "lx" 'dumb-jump-go-prefer-external
 "lz" 'dumb-jump-go-prefer-external-other-window
 "lq" 'dumb-jump-quick-look
 ;; git
 "gs" 'magit-status
 "gi" 'magit-init
 "gc" 'magit-clone
 "gl" 'magit-log-popup
 "gr" 'magit-list-repositories
 "gm" 'git-messenger:popup-message
 "gM" 'git-messenger:popup-show-verbose
 ;; org
 "oc" 'org-capture
 "ol" 'org-store-link
 "oA" 'org-agenda-list
 "oa" 'org-agenda-list-and-delete-other-windows
 "oo" 'org-agenda
 "ob" 'org-iswitchb
 "ok" 'cfw:open-org-calendar
 "oK" 'calendar
 "ot" 'org-agenda-todo-items
 "os" 'org-agenda-search-items
 "om" 'org-agenda-match-tag-items
 ;; editing assist
 "zz" 'insert-char
 "zb" 'flyspell-buffer
 "zd" 'define-word-at-point
 "zD" 'define-word
 ;; frames
 "nn" 'grim/new-frame
 "nd" 'delete-frame
 ;; multifiles
 "M-m" 'mf/mirror-region-in-multifile
 ;; eyebrowse
 "'" 'eyebrowse-last-window-config
 "0" 'eyebrowse-switch-to-window-config-0
 "1" 'eyebrowse-switch-to-window-config-1
 "2" 'eyebrowse-switch-to-window-config-2
 "3" 'eyebrowse-switch-to-window-config-3
 "4" 'eyebrowse-switch-to-window-config-4
 "5" 'eyebrowse-switch-to-window-config-5
 "6" 'eyebrowse-switch-to-window-config-6
 "7" 'eyebrowse-switch-to-window-config-7
 "8" 'eyebrowse-switch-to-window-config-8
 "9" 'eyebrowse-switch-to-window-config-9)

;; --------------------------------------------------------------------
;; web mode leader
;; --------------------------------------------------------------------
(general-define-key
 :states '(normal visual emacs)
 :prefix "SPC"
 :keymaps 'web-mode-map
 "cew" 'web-mode-element-wrap
 "ces" 'web-mode-element-select
 "cea" 'web-mode-element-content-select
 "cek" 'web-mode-element-kill
 "cei" 'web-mode-element-insert
 "cec" 'web-mode-element-clone
 "cer" 'web-mode-element-rename
 "cet" 'web-mode-element-transpose
 "cen" 'web-mode-element-next
 "cep" 'web-mode-element-previous
 "cai" 'web-mode-attribute-insert
 "cak" 'web-mode-attribute-kill
 "can" 'web-mode-attribute-next
 "cap" 'web-mode-attribute-previous
 "cas" 'web-mode-attribute-select
 "ctm" 'web-mode-tag-match
 "cts" 'web-mode-tag-select
 "ctn" 'web-mode-tag-next
 "ctp" 'web-mode-tag-previous
 "cdn" 'web-mode-dom-normalize
 "cdt" 'web-mode-dom-traverse)

;; --------------------------------------------------------------------
;; org mode leader
;; --------------------------------------------------------------------
(general-define-key
 :states '(normal visual emacs)
 :prefix "SPC"
 :keymaps 'org-mode-map
 "cf" 'helm-org-rifle
 "cs" 'org-download-screenshot
 "ck" 'org-kanban/shift
 "ce" 'org-export-dispatch
 "cy" 'org-download-yank)

;; --------------------------------------------------------------------
;; org agenda leader
;; --------------------------------------------------------------------
(general-define-key
 :states '(normal visual emacs)
 :prefix "SPC"
 :keymaps 'org-agenda-mode-map
 "ca" 'hydra-org-agenda/body)

;; --------------------------------------------------------------------
;; js2 leader
;; --------------------------------------------------------------------
(general-define-key
 :states '(normal visual emacs)
 :prefix "SPC"
 :keymaps 'js2-mode-map
 "ci" 'js-doc-insert-function-doc-snippet
 "cF" 'js-doc-insert-file-doc
 "cc" 'tern-get-type
 "cr" 'tern-rename-variable
 "cd" 'tern-get-docs)

;; --------------------------------------------------------------------
;; typescript leader
;; --------------------------------------------------------------------
(general-define-key
 :states '(normal visual emacs)
 :prefix "SPC"
 :keymaps 'typescript-mode-map
 "cF" 'js-doc-insert-file-doc
 "cd" 'tide-documentation-at-point
 "cR" 'tide-refactor
 "cr" 'tide-rename-symbol
 "c." 'tide-references
 "ce" 'tide-project-errors
 "cj" 'tide-jsdoc-template
 "ci" 'tide-organize-imports
 "cc" 'tide-fix)

;; --------------------------------------------------------------------
;; elisp leader
;; --------------------------------------------------------------------
(general-define-key
 :states '(normal visual emacs)
 :prefix "SPC"
 :keymaps 'emacs-lisp-mode-map
 "ce" 'eval-last-sexp
 "cb" 'eval-buffer
 "cr" 'eval-region)

;; --------------------------------------------------------------------
;; pomidor leader
;; --------------------------------------------------------------------
(general-define-key
 :states '(normal visual emacs)
 :prefix "SPC"
 :keymaps 'pomidor-mode-map
 "SPC" 'pomidor-break)

;; --------------------------------------------------------------------
;; neotree leader
;; --------------------------------------------------------------------
(general-define-key
 :states '(normal visual emacs)
 :prefix "SPC"
 :keymaps 'neotree-mode-map
 "cr" 'neotree-rename-node
 "cd" 'neotree-delete-node
 "cn" 'neotree-create-node
 "cc" 'neotree-copy-node)

;; --------------------------------------------------------------------
;; dired leader
;; --------------------------------------------------------------------
(general-define-key
 :states '(normal visual emacs)
 :prefix "SPC"
 :keymaps 'dired-mode-map
 ;; subtree
 "ci" 'dired-maybe-insert-subdir
 "cI" 'dired-kill-subdir
 ;; multistage copy
 "cc" 'dired-ranger-copy
 "cm" 'dired-ranger-move
 "cp" 'dired-ranger-paste
 ;; marking
 "c*" 'dired-mark-files-regexp
 "c8" 'dired-mark-files-regexp
 ;; filter group toggles
 "cfg" 'dired-filter-group-mode
 ;; filters
 "cfs" 'dired-filter-save-filters
 "cfl" 'dired-filter-load-saved-filters
 "cfP" 'dired-filter-pop
 "cfe" 'dired-filter-by-extension
 "cfn" 'dired-filter-by-name
 "cfr" 'dired-filter-by-regexp
 "cfd" 'dired-filter-by-directory
 "cff" 'dired-filter-by-file
 "cfa" 'dired-filter-pop-all)

;; --------------------------------------------------------------------
;; json leader
;; --------------------------------------------------------------------
(general-define-key
 :states '(normal visual emacs)
 :prefix "SPC"
 :keymaps 'json-mode-map
 ;; json print path
 "cc" 'jsons-print-path)

;; --------------------------------------------------------------------
;; restclient leader
;; --------------------------------------------------------------------
(general-define-key
 :states '(normal visual emacs)
 :prefix "SPC"
 :keymaps 'restclient-mode-map
 ;; json prettify
 "ci" 'json-mode-beautify
 "cj" 'restclient-jump-next
 "ck" 'restclient-jump-prev
 "cu" 'get-user-bearer-token
 "ca" 'get-admin-bearer-token
 "cU" 'run-user-bearer-token
 "cA" 'run-admin-bearer-token
 "cc" 'restclient-http-send-current-stay-in-window
 "ch" 'hydra-restclient/body)

(provide 'key-leaders-setup)
;;; key-leaders-setup.el ends here

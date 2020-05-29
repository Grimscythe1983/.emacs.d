;;; package --- Summary
;;; Commentary:
;;; Code:
;; =================================================================================================================
;; custom set variables
;; =================================================================================================================
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#1B2229" "#ff6c6b" "#98be65" "#ECBE7B" "#51afef" "#c678dd" "#46D9FF" "#DFDFDF"])
 '(anzu-replace-to-string-separator " > ")
 '(async-shell-command-buffer (quote confirm-new-buffer))
 '(before-save-hook (quote (delete-trailing-whitespace)))
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(browse-url-browser-function (quote browse-url-chromium))
 '(column-number-mode t)
 '(company-auto-complete-chars (quote (32 41 46)))
 '(company-backends
   (quote
    (company-tide company-bbdb company-css company-semantic company-clang company-xcode company-cmake company-capf company-files
                  (company-dabbrev-code company-gtags company-etags company-keywords company-web-html)
                  company-oddmuse company-tern)))
 '(company-begin-commands
   (quote
    (self-insert-command org-self-insert-command orgtbl-self-insert-command c-scope-operator c-electric-colon c-electric-lt-gt c-electric-slash)))
 '(company-dabbrev-code-everywhere t)
 '(company-dabbrev-code-modes
   (quote
    (prog-mode batch-file-mode csharp-mode css-mode erlang-mode haskell-mode jde-mode lua-mode python-mode web-mode js2-mode java-mode typescript-mode)))
 '(company-dabbrev-code-other-buffers (quote all))
 '(company-dabbrev-downcase nil)
 '(company-frontends
   (quote
    (company-pseudo-tooltip-unless-just-one-frontend company-echo-metadata-frontend company-preview-if-just-one-frontend company-quickhelp-frontend)))
 '(company-gtags-modes (quote (prog-mode jde-mode python-mode)))
 '(company-idle-delay 0.2)
 '(company-minimum-prefix-length 2)
 '(company-show-numbers t)
 '(company-tooltip-align-annotations t)
 '(company-tooltip-minimum-width 40)
 '(cua-rectangle-mark-key [C-M-return])
 '(cursor-type (quote bar))
 '(custom-safe-themes
   (quote
    ("97efd958634d07db50dee52cfb3beac47531f758944959621b46419de571e27f" "0e7070ac09aa6532ac385acd7696f08821f8e23945b11bcf362cfbfd9dce2c86" "18f7bb2906ccc1e75bd3a025ce4aa6529f37b867453fb2c3d37d14ad097c6e84" "bce3ae31774e626dce97ed6d7781b4c147c990e48a35baedf67e185ebc544a56" "9e0071e8088c8c5ca67d40c715c95ee53fe18d9102b3d215a945e4390acc8085" "ff7625ad8aa2615eae96d6b4469fcc7d3d20b2e1ebc63b761a349bebbb9d23cb" "5715d3b4b071d33af95e9ded99a450aad674e308abb06442a094652a33507cd2" "013c62a1fcee7c8988c831027b1c38ae215f99722911b69e570f21fc19cb662e" "242ed4611e9e78142f160e9a54d7e108750e973064cee4505bfcfc22cc7c61b1" "4597d1e9bbf1db2c11d7cf9a70204fa42ffc603a2ba5d80c504ca07b3e903770" "c5d320f0b5b354b2be511882fc90def1d32ac5d38cccc8c68eab60a62d1621f2" "4724d21018ba8825cddbb9964f6170c71021f5339c1b13d206e9a3119825ccf0" "7c8d71a5848e12a8295c59f4be73d5df88f52cf843560f068780cdc1ddd215ae" "602000d05b871ac0fca42fbd382ad3f7c9ec9879a060876434fe7aae0be5141b" "ae6daa8afd8c6808f8c09aeb4c6f8b47060d2ac2fb8f3531575a37948eb5f8bf" "f854444f12b854ec81c456c273b02566c1c0520b6053c243959b98da9597c220" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "2a1b4531f353ec68f2afd51b396375ac2547c078d035f51242ba907ad8ca19da" "b5ecb5523d1a1e119dfed036e7921b4ba00ef95ac408b51d0cd1ca74870aeb14" "7666b079fc1493b74c1f0c5e6857f3cf0389696f2d9b8791c892c696ab4a9b64" "2af26301bded15f5f9111d3a161b6bfb3f4b93ec34ffa95e42815396da9cb560" "63b822ccd7a1928a7cbc88037dddf7b74b2f8a507e1bccd7281f20646f72cd0a" "6bde11b304427c7821b72a06a60e8d079b8f7ae10b407d8af37ed5e5d59b1324" "e91ca866d6cbb79786e314e0466f4f1b8892b72e77ed702e53bf7565e0dfd469" "9f3181dc1fabe5d58bbbda8c48ef7ece59b01bed606cfb868dd147e8b36af97c" "227e2c160b0df776257e1411de60a9a181f890cfdf9c1f45535fc83c9b34406b" "a0dc0c1805398db495ecda1994c744ad1a91a9455f2a17b59b716f72d3585dde" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "08b8807d23c290c840bbb14614a83878529359eaba1805618b3be7d61b0b0a32" "6254372d3ffe543979f21c4a4179cd819b808e5dd0f1787e2a2a647f5759c1d1" "1160f5fc215738551fce39a67b2bcf312ed07ef3568d15d53c87baa4fd1f4d4e" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "02e30200f168b362d5e12cdef4afb2453aa9e00af11cc93c2bcd2a413251eac1" "71ecffba18621354a1be303687f33b84788e13f40141580fa81e7840752d31bf" "54ece5659cc7acdcd529dddd78675c2972a5ac69260af4a6aec517dcea16208b" "770181eda0f652ef9293e8db103a7e5ca629c516ca33dfa4709e2c8a0e7120f3" "12b4427ae6e0eef8b870b450e59e75122d5080016a9061c9696959e50d578057" default)))
 '(dired-du-size-format t)
 '(dired-filter-saved-filters nil)
 '(eclimd-default-workspace "~/eclipse-workspace")
 '(evil-kill-on-visual-paste nil)
 '(expand-region-preferred-python-mode (quote fgallina-python))
 '(expand-region-smart-cursor t)
 '(fci-rule-color "#3E4451")
 '(flycheck-flake8-maximum-line-length 120)
 '(flycheck-idle-change-delay 5)
 '(flycheck-python-flake8-executable nil)
 '(ggtags-executable-directory "/usr/bin")
 '(ggtags-use-project-gtagsconf nil)
 '(git-messenger:show-detail t)
 '(git-messenger:use-magit-popup t)
 '(global-eldoc-overlay-mode nil)
 '(global-flycheck-mode t)
 '(global-hl-line-mode t)
 '(global-semantic-decoration-mode nil)
 '(global-semantic-idle-scheduler-mode t)
 '(global-semanticdb-minor-mode t)
 '(helm-external-programs-associations (quote (("html" . "chromium"))))
 '(helm-swoop-split-with-multiple-windows t)
 '(holiday-bahai-holidays nil)
 '(holiday-christian-holidays nil)
 '(holiday-general-holidays nil)
 '(holiday-hebrew-holidays nil)
 '(holiday-islamic-holidays nil)
 '(holiday-local-holidays nil)
 '(holiday-oriental-holidays nil)
 '(holiday-other-holidays nil)
 '(holiday-solar-holidays nil)
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#51afef"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#98be65"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#3f444a"))
 '(line-move-visual nil)
 '(mc/always-run-for-all t)
 '(menu-bar-mode nil)
 '(message-directory "~/Mail/maestrosartori69/[Gmail].Sent Mail")
 '(notmuch-saved-searches
   (quote
    ((:name "inbox" :query "tag:inbox" :key "i")
     (:name "unread" :query "tag:unread" :key "u")
     (:name "flagged" :query "tag:flagged" :key "f")
     (:name "sent" :query "tag:sent" :key "s")
     (:name "drafts" :query "tag:draft" :key "d")
     (:name "all mail" :query "*" :key "a")
     (:name "trash" :query "tag:trash" :key "b")
     (:name "stash" :query "tag:stash" :key "t"))))
 '(org-link-from-user-regexp nil)
 '(org-log-done t)
 '(org-src-fontify-natively t)
 '(org-super-agenda-mode t)
 '(org-support-shift-select t)
 '(package-selected-packages
   (quote
    (bookmark+ ess engine-mode org-fancy-priorities highlight-numbers mu4e-maildirs-extension mu4e-alert mu4e org-mime python-mode typescript treemacs-evil treemacs go-mode nginx-mode frog-jump-buffer frog-menu prodigy dired-hide-dotfiles quelpa-use-package quelpa transmission which-key-posframe electric-operator helm-posframe helm-chronos chronos eacl pcmpl-args git-link expand-region disk-usage eldoc-box company-restclient helm-chrome flycheck-posframe doom-modeline all-the-icons-dired ob-mongo keychain-environment exec-path-from-shell company-tern tern kv a magit-todos yaml-mode dockerfile-mode moody minions multifiles define-word smart-jump highlight-thing speeddating use-package-ensure-system-package zerodark-theme ranger vlf vlfi org-super-agenda org-kanban org-edna gitattributes-mode gitconfig-mode dired-subtree dired-filter dired-ranger helm-google helm-gitignore helm-flx flx fzf ibuffer-vc helpful color-identifiers-mode darkroom org-notify org-alert toc-org org-projectile org-download diredful direful evil-collection evil-colletion general company-statistics json-mode jedi virtualenv holiday holidays pdf-tools calfw-org calfw zenity-color-picker helm-system-packages exato evil-indent-plus evil-ediff evil-numbers evil-number evil-exchange ace-link git-messenger omnisharp omnisharp-emacs markdown-mode notmuch js-doc dired-du evil-snipe helm-dash web-beautify which-key doom-themes restclient realgud evil-nerd-commenter eyebrowse emmet-mode emmet ox-reveal ox-impress-js org-impress-js ox-gfm org-brain company-ispell hl-todo imenu-anywhere pomidor company-yasnippet eclimd evil-lion git-gutter-fringe git-timemachine lice dired-launch auto-yasnippet quickrun evil-magit evil-god-state god-mode evil-args evil-visualstar evil-matchit evil-anzu evil-surround evil-leader powerline-evil powerline htmlize latex-extra tabbar rainbow-mode rainbow-delimiters org-bullets helm-swoop company-web company-jedi auto-package-update anaphora ac-html-bootstrap ac-dabbrev undo-tree)))
 '(palette-hex-rgb-digits 2)
 '(paradox-github-token t)
 '(powerline-gui-use-vcs-glyph nil)
 '(python-shell-completion-native-disabled-interpreters (quote ("pypy" "python")))
 '(save-place-mode t)
 '(scroll-preserve-screen-position 1)
 '(send-mail-function (quote mailclient-send-it))
 '(shell-pop-full-span t)
 '(shell-pop-shell-type
   (quote
    ("eshell" "*eshell*"
     (lambda nil
       (eshell shell-pop-term-shell)))))
 '(shell-pop-term-shell "eshell")
 '(shell-pop-universal-key "C-`")
 '(shell-pop-window-position "bottom")
 '(shell-pop-window-size 30)
 '(show-paren-mode t)
 '(split-height-threshold 5)
 '(split-width-threshold 5)
 '(tabbar-separator (quote (1)))
 '(tool-bar-mode nil)
 '(track-eol t)
 '(vc-annotate-background "#1B2229")
 '(vc-annotate-very-old-color nil)
 '(vckannotate-color-map
   (list
    (cons 20 "#98be65")
    (cons 40 "#b4be6c")
    (cons 60 "#d0be73")
    (cons 80 "#ECBE7B")
    (cons 100 "#e6ab6a")
    (cons 120 "#e09859")
    (cons 140 "#da8548")
    (cons 160 "#d38079")
    (cons 180 "#cc7cab")
    (cons 200 "#c678dd")
    (cons 220 "#d974b7")
    (cons 240 "#ec7091")
    (cons 260 "#ff6c6b")
    (cons 280 "#cf6162")
    (cons 300 "#9f585a")
    (cons 320 "#6f4e52")
    (cons 340 "#5B6268")
    (cons 360 "#5B6268")))
 '(web-mode-auto-close-style 2)
 '(web-mode-enable-current-column-highlight t)
 '(web-mode-enable-current-element-highlight t)
 '(which-key-hide-alt-key-translations nil)
 '(which-key-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#131519" :foreground "#bbc2cf" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 108 :width normal :foundry "PfEd" :family "DejaVu Sans Mono"))))
 '(ahs-definition-face ((t (:background "black" :weight bold))))
 '(ahs-edit-mode-face ((t (:background "black" :foreground "dark orange"))))
 '(ahs-face ((t (:background "black" :weight bold))))
 '(ahs-plugin-defalt-face ((t nil)))
 '(ahs-plugin-whole-buffer-face ((t (:foreground "orange" :underline t))))
 '(anzu-replace-highlight ((t (:background "black" :foreground "green"))))
 '(avy-goto-char-timer-face ((t (:background "black" :foreground "green"))))
 '(avy-lead-face ((t (:background "black" :foreground "red"))))
 '(avy-lead-face-0 ((t (:background "black" :foreground "green"))))
 '(avy-lead-face-1 ((t (:background "black" :foreground "dark orange"))))
 '(avy-lead-face-2 ((t (:background "black" :foreground "white"))))
 '(aw-leading-char-face ((t (:background "black" :foreground "red"))))
 '(cfw:face-day-title ((t (:foreground "gray70" :background "#080808"))))
 '(cfw:face-grid ((t (:foreground "gray80" :background nil))))
 '(cfw:face-header ((t (:foreground "#4ea1e9" :background nil :weight bold))))
 '(cfw:face-holiday ((t (:foreground "#e96c4e" :background "#080808"))))
 '(cfw:face-saturday ((t (:foreground "#4ee979" :background nil :weight bold))))
 '(cfw:face-select ((t (:foreground "white" :background "#4ea1e9"))))
 '(cfw:face-sunday ((t (:foreground "#dbe94e" :background nil :weight bold))))
 '(cfw:face-today-title ((t (:foreground "white" :background "#D9534F"))))
 '(cfw:face-toolbar ((t (:foreground nil :background nil))))
 '(cfw:face-toolbar-button-off ((t (:foreground "gray70"))))
 '(cfw:face-toolbar-button-on ((t (:foreground "white" :weight bold))))
 '(company-template-field ((t (:background "gray14" :foreground "SeaGreen4"))))
 '(cursor ((t (:background "#FF0000"))))
 '(dired-directory ((t (:foreground "deep sky blue" :weight bold))))
 '(dired-filter-group-header ((t (:background "black" :foreground "orange" :box (:line-width 1 :color "orange") :weight bold))))
 '(dired-flagged ((t (:foreground "red" :weight bold))))
 '(dired-header ((t (:height 110 :foreground "chartreuse3" :weight bold))))
 '(dired-marked ((t (:foreground "gold" :inverse-video nil :weight bold))))
 '(eldoc-box-border ((t (:background "#51afef"))))
 '(evil-ex-lazy-highlight ((t (:background "black" :foreground "white"))))
 '(evil-ex-search ((t (:background "black" :foreground "white"))))
 '(evil-ex-substitute-matches ((t (:background "black" :foreground "white"))))
 '(evil-snipe-first-match-face ((t (:background "black" :foreground "green" :weight bold))))
 '(evil-snipe-matches-face ((t (:background "black" :foreground "green" :weight bold))))
 '(evil-visual-mark-face ((t (:background "black" :foreground "firebrick1" :box (:line-width 1 :color "firebrick1") :weight bold))))
 '(eyebrowse-mode-line-active ((t (:foreground "chartreuse" :weight bold))))
 '(flycheck-posframe-error-face ((t (:inherit flycheck-posframe-face :foreground "#ff6c6b" :box (:line-width 1 :color "#ff6c6b")))))
 '(flycheck-posframe-warning-face ((t (:inherit flycheck-posframe-face :foreground "#ECBE7B" :box (:line-width 1 :color "#ECBE7B")))))
 '(flyspell-incorrect ((t (:underline (:color "chocolate" :style wave)))))
 '(font-lock-keyword-face ((t (:foreground "#51afef" :slant italic))))
 '(font-lock-variable-name-face ((t (:foreground "#db5762"))))
 '(helm-buffer-directory ((t (:foreground "deep sky blue" :weight bold))))
 '(helm-ff-directory ((t (:foreground "deep sky blue"))))
 '(helm-selection ((t (:inherit bold :background "#0b0c0e"))))
 '(helm-swoop-target-line-block-face ((t (:background "black" :foreground "chartreuse3"))))
 '(helm-swoop-target-line-face ((t (:background "#AAAAAA" :foreground "gray4" :inverse-video t))))
 '(helm-swoop-target-word-face ((t (:background "black" :foreground "chartreuse3"))))
 '(hi-yellow ((t (:background "nil" :underline "chartreuse" :weight bold))))
 '(highlight-thing ((t (:background "nil" :underline "chartreuse" :weight bold))))
 '(hl-line ((t (:background "#0b0c0e"))))
 '(internal-border ((t (:background "#51afef"))))
 '(isearch ((t (:background "black" :foreground "white"))))
 '(lazy-highlight ((t (:background "black" :foreground "chartreuse3" :underline nil :weight normal))))
 '(mode-line ((t (:background "gray2" :foreground "white"))))
 '(mode-line-inactive ((t (:background "grey11" :foreground "#5B6268" :box nil))))
 '(mu4e-flagged-face ((t (:inherit font-lock-string-face :weight bold))))
 '(neo-dir-link-face ((t (:foreground "#51afef" :weight bold))))
 '(org-agenda-date ((t (:background "#173874" :foreground "white" :box (:line-width 4 :color "#173874") :weight ultra-bold :height 1.0))))
 '(org-agenda-date-today ((t (:background "#276029" :foreground "white" :box (:line-width 4 :color "#276029") :weight ultra-bold :height 1.1))))
 '(org-agenda-date-weekend ((t (:background "#913351" :foreground "white" :box (:line-width 4 :color "#913351") :weight ultra-bold :height 1.0))))
 '(org-block ((t (:background "#131519"))))
 '(org-block-begin-line ((t (:background "#131519" :foreground "#5B6268"))))
 '(org-level-1 ((t (:height 1.2 :foreground "#51afef" :background nil))))
 '(org-level-2 ((t (:foreground "#a9a1e1" :background nil))))
 '(org-level-3 ((t (:foreground "#c49e9e" :weight semi-bold))))
 '(org-todo ((t (:foreground "#ff6655" :weight bold))))
 '(powerline-active1 ((t (:inherit mode-line-emphasis :background "gray4" :foreground "light gray"))))
 '(powerline-active2 ((t (:inherit mode-line :background "grey20" :foreground "white"))))
 '(powerline-evil-normal-face ((t (:background "dark green" :foreground "white"))))
 '(powerline-evil-operator-face ((t (:background "cyan" :foreground "black"))))
 '(powerline-inactive0 ((t (:inherit mode-line-inactive :background "grey11"))))
 '(powerline-inactive2 ((t (:inherit mode-line-inactive :background "grey11"))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "LavenderBlush1"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "deep sky blue"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "lime green"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "dark orange"))))
 '(rainbow-delimiters-unmatched-face ((t (:foreground "red" :underline t))))
 '(region ((t (:background "#32343a"))))
 '(show-paren-match ((t (:background "black" :foreground "red" :weight normal))))
 '(show-paren-mismatch ((t (:background "black" :foreground "red" :underline t :weight normal))))
 '(tabbar-default ((t (:background "#181c24" :foreground "#181c24" :height 1.0))))
 '(tabbar-selected ((t (:inherit tabbar-default :background "#21242b" :foreground "lime green" :weight bold))))
 '(tabbar-selected-modified ((t (:inherit tabbar-selected :foreground "lime green" :underline (:color foreground-color :style wave)))))
 '(tabbar-unselected ((t (:inherit tabbar-default :foreground "#9B9FA6"))))
 '(tooltip ((t (:background "#080c14" :foreground "#bbc2cf"))))
 '(vertical-border ((t (:background "gray13" :foreground "gray13"))))
 '(web-mode-html-tag-face ((t (:foreground "#db5762")))))
(provide 'custom)
;;; custom.el ends here

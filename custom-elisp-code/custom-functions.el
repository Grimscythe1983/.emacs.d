;;; package --- Summary
;;; Commentary:
;; --------------------------------------------------------------------
;;; Code:
;; --------------------------------------------------------------------
;; --------------------------------------------------------------------
;; Cool new line maker  (makes a proper enter and indent)
;; --------------------------------------------------------------------
(defun grim/newline-and-indent-inside-of-bracket ()
  "Add two newlines and put the cursor at the right indentation.
Between them if a newline is attempted when the cursor is between
two curly braces, otherwise do a regular newline and indent"
  (interactive)
  (progn (newline-and-indent)
         (split-line)
         (indent-for-tab-command)))

;; --------------------------------------------------------------------
;; Set tabs mode
;; --------------------------------------------------------------------
(defun grim/tabs-instead-of-spaces ()
  "Set tabs instead of spaces."
  (interactive)
  (setq-default indent-tabs-mode t))

(defun grim/spaces-instead-of-tabs ()
  "Set spaces instead of tabs."
  (interactive)
  (setq-default indent-tabs-mode nil))

;; --------------------------------------------------------------------
;; Beautifier
;; --------------------------------------------------------------------
(defun untabify-buffer ()
  "Remove tabs."
  (interactive)
  (untabify (point-min) (point-max)))

(defun tabify-buffer ()
  "Remove spaces."
  (interactive)
  (tabify (point-min) (point-max)))

(defun indent-buffer ()
  "Fix indentation."
  (interactive)
  (indent-region (point-min) (point-max)))

(defun cleanup-buffer-untabify ()
  "Perform a bunch of operations on the whitespace content of a buffer and untabify buffer."
  (interactive)
  (indent-buffer)
  (untabify-buffer)
  (delete-trailing-whitespace))

(defun cleanup-buffer-tabify ()
  "Perform a bunch of operations on the whitespace content of a buffer and tabify buffer."
  (interactive)
  (indent-buffer)
  (tabify-buffer)
  (delete-trailing-whitespace))

(defun cleanup-region (beg end)
  "Remove tmux artifacts from region BEG END."
  (interactive "r")
  (dolist (re '("\\\\│\·*\n" "\W*│\·*"))
    (replace-regexp re "" nil beg end)))

;; --------------------------------------------------------------------
;; Neo tree helpers
;; --------------------------------------------------------------------
(defun neotree-open-xdg-on-point ()
  "Open a file under point."
  (interactive)
  (call-process "xdg-open" nil 0 nil
                (neo-buffer--get-filename-current-line)))

(defun neotree-enter-and-close-neotree ()
  "Open a file under point and close neotree."
  (interactive)
  (neotree-enter)
  (neotree-hide))

;; --------------------------------------------------------------------
;; Indent/Unindent
;; --------------------------------------------------------------------
(defun custom-indent-region (N)
  "Move a region 4 spaces right (indent) N."
  (interactive "p")
  (if (use-region-p)
      (progn (indent-rigidly (region-beginning) (region-end) (* N 4))
             (setq deactivate-mark nil))
    (self-insert-command N)))

(defun custom-unindent-region (N)
  "Move a region 4 spaces left (unindent) N."
  (interactive "p")
  (if (use-region-p)
      (progn (indent-rigidly (region-beginning) (region-end) (* N -4))
             (setq deactivate-mark nil))
    (self-insert-command N)))

;; --------------------------------------------------------------------
;; Show file name in the minibuffer
;; --------------------------------------------------------------------
(defun show-file-name ()
  "Show the full path file name in the minibuffer."
  (interactive)
  (message (buffer-file-name)))

;; --------------------------------------------------------------------
;; Always paste from zero for evil
;; --------------------------------------------------------------------
(defun always-paste-from-j()
  "Always paste in from the zero register"
  (interactive)
  (evil-paste-after 1 ?j))

;; --------------------------------------------------------------------
;; esc to quit minibuffer and other...
;; --------------------------------------------------------------------
(defun minibuffer-keyboard-quit ()
  "Abort recursive edit.
In Delete Selection mode, if the mark is active, just deactivate it;
then it takes a second \\[keyboard-quit] to abort the minibuffer."
  (interactive)
  (if (and delete-selection-mode transient-mark-mode mark-active)
      (setq deactivate-mark  t)
    (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
    (abort-recursive-edit)))

;; --------------------------------------------------------------------
;; insert org timestamp for the usage of yasnippet
;; --------------------------------------------------------------------
(defun yas/org-get-time-stamp (&rest args)
  "Return the string that `org-insert-time-stamp' would insert.  ARGS."
  (with-temp-buffer
    (apply #'org-insert-time-stamp args)
    (buffer-string)))

;; --------------------------------------------------------------------
;; custom keyboard quit to assits with evil as well
;; --------------------------------------------------------------------
(defun keyboard-quit-and-remove-evil-mc ()
  "Remove evil-mc cursors first and then does a standard keyboard-quit."
  (interactive)
  (when evil-mc-cursor-state
    (evil-mc-make-and-goto-first-cursor))
  (evil-normal-state)
  (keyboard-quit))

;; --------------------------------------------------------------------
;; custom keyboard quit to assist with company abort
;; --------------------------------------------------------------------
(defun company-abort-and-switch-to-normal-state ()
  "Abort company and switch no normal state."
  (interactive)
  (company-abort)
  (evil-normal-state))

;; --------------------------------------------------------------------
;; Auto correct previous word and move forward a word
;; --------------------------------------------------------------------
(defun auto-correct-and-move-forward ()
  "Auto correct previous word and move forward a one word."
  (interactive)
  (backward-word)
  (flyspell-auto-correct-word)
  (forward-word))

;; --------------------------------------------------------------------
;; Org-agenda full screen
;; --------------------------------------------------------------------
(defun org-agenda-list-and-delete-other-windows ()
  "Display org agenda in full window."
  (interactive)
  (org-agenda-list)
  (delete-other-windows))

(defun org-agenda-todo-items ()
  "Org agenda show todo items."
  (interactive)
  (org-agenda nil "t"))

(defun org-agenda-search-items ()
  "Org agenda search for items."
  (interactive)
  (org-agenda nil "s"))

(defun org-agenda-match-tag-items ()
  "Org agenda search for tags."
  (interactive)
  (org-agenda nil "m"))

;; --------------------------------------------------------------------
;; Delete other windows and split right
;; --------------------------------------------------------------------
(defun grim/delete-other-windows-and-split-right ()
  "Delete all other windows and split right."
  (interactive)
  (delete-other-windows)
  (split-window-right)
  (windmove-right))

;; --------------------------------------------------------------------
;; Window splitter helpers
;; --------------------------------------------------------------------
(defun hydra-move-splitter-left (arg)
  "Move window splitter left.  ARG is the number of steps."
  (interactive "p")
  (if (let ((windmove-wrap-around))
        (windmove-find-other-window 'right))
      (shrink-window-horizontally arg)
    (enlarge-window-horizontally arg)))

(defun hydra-move-splitter-right (arg)
  "Move window splitter right.  ARG is the number of steps."
  (interactive "p")
  (if (let ((windmove-wrap-around))
        (windmove-find-other-window 'right))
      (enlarge-window-horizontally arg)
    (shrink-window-horizontally arg)))

(defun hydra-move-splitter-up (arg)
  "Move window splitter up.  ARG is the number of steps."
  (interactive "p")
  (if (let ((windmove-wrap-around))
        (windmove-find-other-window 'up))
      (enlarge-window arg)
    (shrink-window arg)))

(defun hydra-move-splitter-down (arg)
  "Move window splitter down.  ARG is the number of steps."
  (interactive "p")
  (if (let ((windmove-wrap-around))
        (windmove-find-other-window 'up))
      (shrink-window arg)
    (enlarge-window arg)))

(defun window-split-into-3-columns ()
  "Split the window into three columns."
  (interactive)
  (delete-other-windows)
  (split-window-horizontally)
  (split-window-horizontally)
  (balance-windows))

(defun window-split-into-2-columns-and-a-row ()
  "Split the window into two columns and split the second column into two rows."
  (interactive)
  (delete-other-windows)
  (split-window-right)
  (other-window 1)
  (split-window-below)
  (balance-windows))

(defun window-split-into-4 ()
  "Split the window into two columns and split the second column into two rows."
  (interactive)
  (delete-other-windows)
  (split-window-right)
  (split-window-below)
  (other-window 2)
  (split-window-below)
  (balance-windows))

;; --------------------------------------------------------------------
;; Hydra keyboard timeout function
;; --------------------------------------------------------------------
(defun hydra-quit-after (seconds)
  "Hydra keyboard quit after SECONDS."
  (let ((timer (timer-create)))
    (timer-set-time timer (timer-relative-time (current-time) seconds))
    (timer-set-function timer 'hydra-keyboard-quit)
    (timer-activate timer)))

;; --------------------------------------------------------------------
;; Org babel
;; --------------------------------------------------------------------
(defun auto-refresh-inline-images ()
  "Used with GraphViz to autorefresh the inserted image."
  (when org-inline-image-overlays
    (org-redisplay-inline-images)))

;; --------------------------------------------------------------------
;; Only fundamental-mode in big files
;; --------------------------------------------------------------------
;; (defun fundamental-mode-in-big-files ()
;;   "If a file is over a given size, make the buffer read only."
;;   (when (> (buffer-size) (* 1024 50024))
;;     (setq buffer-read-only t)
;;     (buffer-disable-undo)
;;     (fundamental-mode)))

;; (add-hook 'find-file-hook 'fundamental-mode-in-big-files)

;; --------------------------------------------------------------------
;; Sacha's defun insert defun
;; --------------------------------------------------------------------
(defun org-insert-defun-code (function)
  "Insert an Org source block with the definition for FUNCTION."
  (interactive (find-function-read))
  (let* ((buffer-point (condition-case nil (find-definition-noselect function nil) (error nil)))
         (new-buf (car buffer-point))
         (new-point (cdr buffer-point))
         definition)
    (if buffer-point
        (with-current-buffer new-buf ;; Try to get original definition
          (save-excursion
            (goto-char new-point)
            (setq definition (buffer-substring-no-properties (point) (save-excursion (end-of-defun) (point))))))
      ;; Fallback: Print function definition
      (setq definition (concat (prin1-to-string (symbol-function function)) "\n")))
    (insert "#+begin_src emacs-lisp\n" definition "#+end_src\n")))

;; --------------------------------------------------------------------
;; Extract from archive
;; --------------------------------------------------------------------
(defun archive-extract-to-file (archive-name item-name command dir)
  "Extract ITEM-NAME from ARCHIVE-NAME using COMMAND. Save to
DIR."
  (unwind-protect
      ;; remove the leading / from the file name to force
      ;; expand-file-name to interpret its path as relative to dir
      (let* ((file-name (if (string-match "\\`/" item-name)
                            (substring item-name 1)
                          item-name))
             (output-file (expand-file-name file-name dir))
             (output-dir (file-name-directory output-file)))
        ;; create the output directory (and its parents) if it does
        ;; not exist yet
        (unless (file-directory-p output-dir)
          (make-directory output-dir t))
        ;; execute COMMAND, redirecting output to output-file
        (apply #'call-process
               (car command)            ;program
               nil                      ;infile
               `(:file ,output-file)    ;destination
               nil                      ;display
               (append (cdr command) (list archive-name item-name))))
    nil))

(defun archive-extract-marked-to-file (output-dir)
  "Extract marked archive items to OUTPUT-DIR."
  (interactive "sOutput directory: ")
  (let ((command (symbol-value (archive-name "extract")))
        (archive (buffer-file-name))
        (items (archive-get-marked ?* t))) ; get marked items; t means
                                        ; get item under point if
                                        ; nothing is marked
    (mapc
     (lambda (item)
       (archive-extract-to-file archive
                                (aref item 0) ; get the name from the descriptor
                                command output-dir))
     items)))


;; --------------------------------------------------------------------
;; Launch dired from file under point
;; --------------------------------------------------------------------
(defun helm-ff-open-dired-at-point ()
  "Launch dired from file unde point."
  (interactive)
  (helm-select-nth-action 4))

;; --------------------------------------------------------------------
;; Kill all dired buffers
;; --------------------------------------------------------------------
(defun kill-all-dired-buffers ()
  "Kill all dired buffers."
  (interactive)
  (mapc (lambda (buffer)
          (when (eq 'dired-mode (buffer-local-value 'major-mode buffer))
            (kill-buffer buffer)))
        (buffer-list)))

;; (add-hook 'kill-emacs-hook #'kill-dired-buffers)

;; --------------------------------------------------------------------
;; Dired sort by name, size, date...
;; --------------------------------------------------------------------
(defun xah-dired-sort ()
  "Sort dired dir listing in different ways.
Prompt for a choice.
URL `http://ergoemacs.org/emacs/dired_sort.html'
Version 2015-07-30"
  (interactive)
  (let ($sort-by $arg)
    (setq $sort-by (ido-completing-read "Sort by:" '( "date" "size" "name" "dir")))
    (cond
     ((equal $sort-by "name") (setq $arg "-Al --si --time-style long-iso "))
     ((equal $sort-by "date") (setq $arg "-Al --si --time-style long-iso -t"))
     ((equal $sort-by "size") (setq $arg "-Al --si --time-style long-iso -S"))
     ((equal $sort-by "dir") (setq $arg "-Al --si --time-style long-iso --group-directories-first"))
     (t (error "logic error 09535" )))
    (dired-sort-other $arg )))

;; --------------------------------------------------------------------
;; Dired start process async with marked files
;; --------------------------------------------------------------------
(defvar dired-filelist-cmd
  '(("vlc" "-L")))

(defun dired-start-process (cmd &optional file-list)
  (interactive
   (let ((files (dired-get-marked-files t current-prefix-arg)))
     (list
      (dired-read-shell-command "& on %s: " current-prefix-arg files)
      files)))
  (apply
   #'start-process
   (list cmd nil shell-file-name shell-command-switch
         (format "nohup 1>/dev/null 2>/dev/null %s \"%s\""
                 (if (> (length file-list) 1)
                     (format "%s %s"
                             cmd
                             (cadr (assoc cmd dired-filelist-cmd)))
                   cmd)
                 (mapconcat #'expand-file-name file-list "\" \"")))))

;; --------------------------------------------------------------------
;; Calc
;; --------------------------------------------------------------------
(defun calc-eval-string (x)
  "Evaluate a raw string X for calc."
  (interactive)
  (calc-eval x))

(defun calc-eval-region (arg)
  "Evaluate an expression in calc and communicate the result.

If the region is active evaluate that, otherwise search backwards
to the first whitespace character to find the beginning of the
expression.  By default, replace the expression with its value.  If
called with the universal prefix argument, keep the expression
and insert the result into the buffer after it.  If called with a
negative prefix argument, just echo the result in the
minibuffer."
  (interactive "p")
  (let (start end)
    (if (use-region-p)
        (setq start (region-beginning) end (region-end))
      (setq end (point))
      (setq start (search-backward-regexp "\\s-\\|\n" 0 1))
      (setq start (1+ (if start start 0)))
      (goto-char end))
    (let ((value (calc-eval (buffer-substring-no-properties start end))))
      (pcase arg
        (1 (delete-region start end))
        (4 (insert " = ")))
      (pcase arg
        ((or 1 4) (insert value))
        (-1 (message value))))))

;; --------------------------------------------------------------------
;; Frame
;; --------------------------------------------------------------------
(defun grim/new-frame ()
  "Create a new frame with a preset 'default-frame-alist' size."
  (interactive)
  (add-to-list 'default-frame-alist '(height . 60))
  (add-to-list 'default-frame-alist '(width . 160))
  (make-frame))

;; --------------------------------------------------------------------
;; Byte recompile config files
;; --------------------------------------------------------------------
(defun byte-recompile-config-files ()
  "Recompile all Emacs configuration files."
  (interactive)
  (byte-recompile-directory "~/.emacs.d/setup-files")
  (byte-recompile-directory "~/.emacs.d/custom-elisp-code"))

;; --------------------------------------------------------------------
;; Toggle between a vertical and horizontal window split
;; --------------------------------------------------------------------
(defun window-toggle-split-direction ()
  "Switch window split from horizontally to vertically, or vice versa.

i.e. change right window to bottom, or change bottom window to right."
  (interactive)
  (require 'windmove)
  (let ((done))
    (dolist (dirs '((right . down) (down . right)))
      (unless done
        (let* ((win (selected-window))
               (nextdir (car dirs))
               (neighbour-dir (cdr dirs))
               (next-win (windmove-find-other-window nextdir win))
               (neighbour1 (windmove-find-other-window neighbour-dir win))
               (neighbour2 (if next-win (with-selected-window next-win
                                          (windmove-find-other-window neighbour-dir next-win)))))
          ;;(message "win: %s\nnext-win: %s\nneighbour1: %s\nneighbour2:%s" win next-win neighbour1 neighbour2)
          (setq done (and (eq neighbour1 neighbour2)
                          (not (eq (minibuffer-window) next-win))))
          (if done
              (let* ((other-buf (window-buffer next-win)))
                (delete-window next-win)
                (if (eq nextdir 'right)
                    (split-window-vertically)
                  (split-window-horizontally))
                (set-window-buffer (windmove-find-other-window neighbour-dir) other-buf))))))))

;; --------------------------------------------------------------------
;; Toggle between line number modes
;; --------------------------------------------------------------------
(defun grim/toggle-line-number ()
  "Toggle between line number modes."
  (interactive)
  (if display-line-numbers
      (setq display-line-numbers 'nil)
    (setq display-line-numbers 'relative)))

;; --------------------------------------------------------------------
;; Package info in Emacs
;; --------------------------------------------------------------------
(defun std::pacman-pkg-info ()
  (interactive)
  (let* ((completions (->> "pacman -Q"
                           (shell-command-to-string)
                           (s-trim)
                           (s-lines)
                           (--map (car (s-split " " it :no-nulls)))))
         (name (completing-read "Package: " completions)))
    (switch-to-buffer (get-buffer-create "*Package Info*"))
    (erase-buffer)
    (-> (format "pacman -Qi %s" name)
        (shell-command-to-string)
        (s-trim)
        (insert))
    (goto-char 0)
    (conf-mode)))

;; --------------------------------------------------------------------
;; dakra's ipinfo
;; --------------------------------------------------------------------
(defun ipinfo (ip)
  "Return ip info from ipinfo.io for IP."
  (interactive "sEnter IP to query (blank for own IP): ")
  (require 'request)
  (request
   (concat "https://ipinfo.io/" ip)
   :headers '(("User-Agent" . "Emacs ipinfo.io Client")
              ("Accept" . "application/json")
              ("Content-Type" . "application/json;charset=utf-8"))
   :parser 'json-read
   :success (cl-function
             (lambda (&key data &allow-other-keys)
               (message
                (mapconcat
                 (lambda (e)
                   (format "%10s: %s" (capitalize (symbol-name (car e))) (cdr e)))
                 data "\n"))))
   :error (cl-function (lambda (&rest args &key error-thrown &allow-other-keys)
                         (message "Can't receive ipinfo. Error %S " error-thrown)))))

;; --------------------------------------------------------------------
;; insert shell option from man pages
;; --------------------------------------------------------------------
(defun insert-shell-option (cmd)
  (interactive "sCommand: ")
  (let ((options ()))
    (require 'pcmpl-args)
    (require 'helm)
    (dolist (item (pcmpl-args-extract-argspecs-from-manpage cmd))
      (let ((option (plist-get item 'option))
            (help (plist-get item :help)))
        (push (cons (with-temp-buffer
                      (insert help)
                      (let ((fill-column 80))
                        (fill-paragraph))
                      (goto-char (point-min))
                      (insert (format "%s\n" option))
                      (buffer-string))
                    (format "%s" option))
              options)))
    (helm (helm-build-sync-source "Options: "
            :candidates (nreverse options)
            :multiline t
            :action #'insert))))

(provide 'custom-functions)
;;; custom-functions ends here

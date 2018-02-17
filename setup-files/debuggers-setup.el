;;; package -- Summary
;;; Commentary:
;; --------------------------------------------------------------------
;;; Code:
;; --------------------------------------------------------------------

;; --------------------------------------------------------------------
;; GDB
;; --------------------------------------------------------------------
(setq-default gdb-many-windows t)

;; --------------------------------------------------------------------
;; realgud
;; --------------------------------------------------------------------
(use-package realgud
  :defer t
  :config
  (setq realgud:pdb-command-name "python -m pdb"))

;; --------------------------------------------------------------------
;; quickrun
;; --------------------------------------------------------------------
(use-package quickrun)

(provide 'debuggers-setup)
;;; debuggers-setup ends here

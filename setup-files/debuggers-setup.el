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
  :defer 10
  :config
  (setq realgud:pdb-command-name "python -m pdb"))

;; --------------------------------------------------------------------
;; quickrun
;; --------------------------------------------------------------------
(use-package quickrun
  :defer 2
  :config
  (setq quickrun-timeout-seconds 60))

(provide 'debuggers-setup)
;;; debuggers-setup ends here

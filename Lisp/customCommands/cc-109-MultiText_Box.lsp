;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:MultiText_Box ()
  (initcommandversion 1)
  (setq oldCurrent (getvar 'clayer))
  (command "LAYER" "SET" "M-AMC-TEXT" "")
  (initcommandversion 2)
  (setq a (getpoint "\nPick first point: ")
	bX (+ (nth 0 a) 18)
	bY (+ (nth 1 a) 6)
	bZ (nth 2 a)
        b (list bX bY bZ))
  (command "-mtext" a b "" "" "")
  (initcommandversion 1)
  (command "pselect" (entlast) "")
  (command "mtedit")
  (command "LAYER" "SET" oldCurrent "")
  (princ)
(END_ROUTINE));end defun
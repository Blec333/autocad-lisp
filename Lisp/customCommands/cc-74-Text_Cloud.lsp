;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

;;;; Calls up a review cloud Revision_Cloud_On_Text_Layer
(defun c:Text_Cloud ()
  (OUTSIDE_LOOP_VARIABLES nil)
  (vl-load-com)
  (initcommandversion 1)
  (setq oldCurrent (getvar 'clayer))
  (command "LAYER" "SET" "M-AMC-TEXT" "")
  (initcommandversion 2)
  (setq a (getpoint "\nPick first point: ")
        b (getcorner a "\nPick other corner: "))
  (vl-cmdf "._revcloud" "_A" "3" "9" "_R" a b )
  (initcommandversion 1)
  (command "LAYER" "SET" oldCurrent "")
(END_ROUTINE));end defun
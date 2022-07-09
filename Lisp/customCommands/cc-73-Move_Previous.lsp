;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

;;;; Move Previous - Moves last selection set
(defun c:Move_Previous ()
  (OUTSIDE_LOOP_VARIABLES nil)
  (command "pselect" "p" "")
  (prompt "Ready to move last selection set")(princ)
  (command "move")
  (princ)
(END_ROUTINE));end defun
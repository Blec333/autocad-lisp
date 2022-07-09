;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

;;;; TEXT MOVE - MOVES TEXT
(defun c:Rotate_Text ()
  (OUTSIDE_LOOP_VARIABLES nil)
  (COMMAND "ROTTEXT")
  (prompt "Select the text you wish to rotate")(princ)
  (princ)
(END_ROUTINE));end defun
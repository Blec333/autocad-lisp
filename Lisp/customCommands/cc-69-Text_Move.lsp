;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

;;;; TEXT MOVE - MOVES TEXT
(defun c:Text_Move ()
  (OUTSIDE_LOOP_VARIABLES nil)
  (COMMAND "MOVETEXT")
  (prompt "Select the text you wish to move")(princ)
  (princ)
(END_ROUTINE));end defun
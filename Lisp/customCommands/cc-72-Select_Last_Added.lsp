;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

;;;; SELECT LAST - RESELECTS LAST ENTITY ADDED TO THE DRAWING
(defun c:Select_Last_Added ()
  (OUTSIDE_LOOP_VARIABLES nil)
  (command "pselect" (entlast) "")
  (prompt "Last added object has been selected")(princ)
  (princ)
(END_ROUTINE));end defun
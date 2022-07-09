;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

;;;; SELECT FIX - FIXES MAP OBJECT SELECTION SET COORDINATE LOCATIONS
(defun c:Selection_Fix ()
  (OUTSIDE_LOOP_VARIABLES nil)
  (command "move" "all" "" "0,0,0" "0,0,0")
  (prompt "Object locations have been reset.")(princ)
  (princ)
(END_ROUTINE));end defun
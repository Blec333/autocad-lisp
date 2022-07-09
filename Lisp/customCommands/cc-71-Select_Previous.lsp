;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

;| SELECT PREVIOUS - RESELECTS LAST SELECTION SET |;
(defun c:Select_Previous ()
  (OUTSIDE_LOOP_VARIABLES nil)
  (command "pselect" "p" "")
  (prompt "Last selected object has been reselected")(princ)
  (princ)
(END_ROUTINE));end defun
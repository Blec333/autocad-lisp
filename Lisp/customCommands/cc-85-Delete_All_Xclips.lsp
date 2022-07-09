;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Delete_All_Xclips ()
  (OUTSIDE_LOOP_VARIABLES nil)
  (command "_xclip" "all" "" "delete" ^c^c )
  (princ)
(END_ROUTINE));end defun
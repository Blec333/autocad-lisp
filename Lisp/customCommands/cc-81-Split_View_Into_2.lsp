;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Split_View_Into_2 ()
  (OUTSIDE_LOOP_VARIABLES nil)
  (command "-vports" "2" "vertical")
  (command "view" "_SWISO")
  (command "ucs" "view")
  (princ)
(END_ROUTINE));end defun
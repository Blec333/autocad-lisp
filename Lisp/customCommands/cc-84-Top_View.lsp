;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Top_View ()
  (OUTSIDE_LOOP_VARIABLES nil)
  (Command "view" "top")
  (command "ucs" "world")
  (princ)
(END_ROUTINE));end defun
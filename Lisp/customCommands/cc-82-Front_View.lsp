;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Front_View ()
  (OUTSIDE_LOOP_VARIABLES nil)
  (command "-view" "_front")
  (command "ucs" "view")
  (princ)
(END_ROUTINE));end defun
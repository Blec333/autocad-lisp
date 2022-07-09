;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:World_View () 
  ;;;; WV = WORLD VIEW - BACK TO WORLD VIEW (BEFORE SECTION CUT)
  (command "ucs" "world")
  (command "planview")(command)
  (princ)
(END_ROUTINE));end defun
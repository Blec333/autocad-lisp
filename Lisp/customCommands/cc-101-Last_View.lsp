;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Last_View () 
  ;;;; LV = LAST VIEW - ROLL BACK TO LAST VIEW (BEFORE SECTION CUT)
  (command "LASTVIEW")
  (RESET_UCS)
  ;(command "ucs" "p")
  (princ)
(END_ROUTINE));end defun
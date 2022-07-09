;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Last_View_WCS () 
  ;;;; LV = LAST VIEW - ROLL BACK TO LAST VIEW (BEFORE SECTION CUT)
  (command "LASTVIEW")
  (command "ucs" "w")
  (princ)
(END_ROUTINE));end defun
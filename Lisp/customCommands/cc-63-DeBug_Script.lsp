;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:DeBug_Script ()
  ;;;; DB = CALLS UP THE DEBUG TEST FILE
  (OUTSIDE_LOOP_VARIABLES nil)
  (Executescript debugFileLink)
  (princ)
(END_ROUTINE));end defun
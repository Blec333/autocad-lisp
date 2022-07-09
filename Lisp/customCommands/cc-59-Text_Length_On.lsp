;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Text_Length_On (/)
  (settext (ssget '((0 . "MAPS_SOLID"))) 32 "on")
  (print "Length On")
  (princ)
(END_ROUTINE));end defun
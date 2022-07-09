;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Text_Offset_On (/)
  (settext (ssget '((0 . "MAPS_SOLID"))) 16 "on")
  (print "Offset On")
  (princ)
(END_ROUTINE));end defun
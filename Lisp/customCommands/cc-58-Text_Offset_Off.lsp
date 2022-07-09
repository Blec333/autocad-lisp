;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Text_Offset_Off (/)
  (settext (ssget '((0 . "MAPS_SOLID"))) 16 "off")
  (print "Offset Off")
  (princ)
(END_ROUTINE));end defun
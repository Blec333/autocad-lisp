;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Text_Numbers_Off (/)
  (settext (ssget "X" '((0 . "MAPS_SOLID"))) 1 "off")
  (print "Numbers Off")
  (princ)
(END_ROUTINE));end defun
;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Text_Elevation_Off (/)
  (settext (ssget '((0 . "MAPS_SOLID"))) 4 "off")
  (print "Elevation Off")
  (princ)
(END_ROUTINE));end defun
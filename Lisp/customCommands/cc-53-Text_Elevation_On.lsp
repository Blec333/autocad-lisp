;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Text_Elevation_On (/)
  (settext (ssget '((0 . "MAPS_SOLID"))) 4 "on")
  (print "Elevation On")
  (princ)
(END_ROUTINE));end defun
;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Text_Alias_Off (/)
  (settext (ssget '((0 . "MAPS_SOLID"))) 8 "off")
  (print "Alias Off")
  (princ)
(END_ROUTINE));end defun
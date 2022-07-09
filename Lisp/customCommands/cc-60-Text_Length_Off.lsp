;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Text_Length_Off (/)
  (settext (ssget '((0 . "MAPS_SOLID"))) 32 "off")
  (print "Length Off")
  (princ)
(END_ROUTINE));end defun
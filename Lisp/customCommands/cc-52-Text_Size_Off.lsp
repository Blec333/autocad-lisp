;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Text_Size_Off (/)
  (settext (ssget '((0 . "MAPS_SOLID"))) 2 "off")
  (print "Size Off")
  (princ)
(END_ROUTINE));end defun
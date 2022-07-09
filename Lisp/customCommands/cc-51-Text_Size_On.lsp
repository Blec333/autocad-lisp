;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Text_Size_On (/)
  (settext (ssget '((0 . "MAPS_SOLID"))) 2 "on")
  (print "Size On")
  (princ)
(END_ROUTINE));end defun
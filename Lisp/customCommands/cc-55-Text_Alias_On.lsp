;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Text_Alias_On (/)
  (settext (ssget '((0 . "MAPS_SOLID"))) 8 "on")
  (print "Alias On")
  (princ)
(END_ROUTINE));end defun
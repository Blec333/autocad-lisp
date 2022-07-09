;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

;;;; TO - TEXT ON - TEXT TURNED ON!!
(defun c:Text_All_On (/)
  (settext(ssget) 63 "on")
  (print "All Text On")
  (princ)
(END_ROUTINE));end defun
;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

;;;; TF - TEXT OFF - REMOVE TEXT FROM THE CURRENT DRAWING !!CAUTION!! THIS WIPES THE MEMORY OF WHICH ITEMS HAD WHICH TEXT TURNED ON!!
(defun c:Text_All_Off (/)
  (settext(ssget) 63 "off")
  (print "All Text Off")
  (princ)
(END_ROUTINE));end defun
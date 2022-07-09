;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Paste_To_Original_Coordinates () 
  ;;;; PO = PASTE ORIGINAL - PASTE CLIPBOARD TO ORIGINAL COORDINATES
  (command "._pasteorig")
(princ)
(END_ROUTINE));end defun
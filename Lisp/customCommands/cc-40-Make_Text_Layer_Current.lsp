;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

;;;; TEXT LAYER - SWITCHES LAYER TO TEXT
(defun c:Make_Text_Layer_Current ()
  (COMMAND "LAYER" "SET" "M-TEXT" "")
  (prompt "Current Layer is now TEXT")(princ)
  (princ)
(END_ROUTINE));end defun
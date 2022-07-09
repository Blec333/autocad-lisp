;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Execute_Script ()
  (command "executescript")
  (princ)
(END_ROUTINE));end defun 
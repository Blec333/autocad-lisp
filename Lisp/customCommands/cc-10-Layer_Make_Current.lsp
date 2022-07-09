;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Layer_Make_Current ()
  (command "laymcur")
  (princ)
(END_ROUTINE));end defun
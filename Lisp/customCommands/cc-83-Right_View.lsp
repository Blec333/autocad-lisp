;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Right_View ()
  (command "-view" "_right")
  (command "ucs" "view")
  (princ)
(END_ROUTINE));end defun
;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:XRR ()
  (command "_.-xref" "_RELOAD" "*" )
  (princ)
);end defun
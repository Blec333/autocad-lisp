;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:XRU ()
  (command "_.-xref" "_UNLOAD" "*")
  (princ)
);end defun
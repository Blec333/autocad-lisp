;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

;turn off all xref layers
(defun c:XRF ()
  (command "_.-layer" "_off" "*|*" "")
  (princ)
);end defun
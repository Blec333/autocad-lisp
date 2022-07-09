;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:XRUL ()
  (command "_.-layer" "_unlock" "*|*" "")
  (princ)
);end defun
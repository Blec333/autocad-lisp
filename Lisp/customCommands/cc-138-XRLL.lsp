;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:XRLL ()
  (command "_.-layer" "_lock" "*|*" "")
  (princ)
);end defun
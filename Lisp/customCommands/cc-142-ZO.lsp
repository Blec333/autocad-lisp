;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:ZO ()
  ;;;; ZO even from section cut
  (command "LASTVIEW")
  (command "ucs" "w")
  (command "pselect" "p" "")
  (command "zoom" "object")
  (princ)
(END_ROUTINE));end defun
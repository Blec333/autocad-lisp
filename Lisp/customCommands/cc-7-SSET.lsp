;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:SSET ()
  (if(not(= sset nil))
    (command "pselect" sset "")
    (progn(terpri)(princ "No selection set currently defined")(princ))
  );end if
);end defun
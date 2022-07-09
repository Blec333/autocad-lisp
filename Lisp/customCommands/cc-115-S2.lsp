;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:S2 ();Snaps 2 - Endpoint & Perpendicular
  (setvar 'osmode 129)
  (setq snapNumb (getvar 'osmode))
  (prompt "ENDPOINT & PERPENDICULAR snaps active; Current OSMode # is: ")(princ snapNumb)
  (princ)
(END_ROUTINE));end defun
;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:S9 ();Snaps 3 - Center & Perpendicular
  (setvar 'osmode 140)
  (setq snapNumb (getvar 'osmode))
  (prompt "CENTER, NODE & PERPENDICULAR snaps active; Current OSMode # is: ")(princ snapNumb)
  (princ)
(END_ROUTINE));end defun
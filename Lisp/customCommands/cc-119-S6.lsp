;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:S6 ();Snaps 6 - Just Perpendicular
  (setvar 'osmode 128)
  (setq snapNumb (getvar 'osmode))
  (prompt "Only PERPENDICULAR snaps active; Current OSMode # is: ")(princ snapNumb)
  (princ)
(END_ROUTINE));end defun
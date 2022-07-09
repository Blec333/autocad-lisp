;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:S3 ();Snaps 3 - Center & Perpendicular
  (setvar 'osmode 132)
  (setq snapNumb (getvar 'osmode))
  (prompt "CENTER & PERPENDICULAR snaps active; Current OSMode # is: ")(princ snapNumb)
  (princ)
(END_ROUTINE));end defun
;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:S4 ();Snaps 4 - Center & Quadrant
  (setvar 'osmode 20)
  (setq snapNumb (getvar 'osmode))
  (prompt "CENTER & QUARDRANT snaps active; Current OSMode # is: ")(princ snapNumb)
  (princ)
(END_ROUTINE));end defun
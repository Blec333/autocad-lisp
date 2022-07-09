;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:S1 ();Snaps 1 - Center & Node
  (setvar 'osmode 12)
  (setq snapNumb (getvar 'osmode))
  (prompt "CENTER & NODE snaps active; Current OSMode # is: ")(princ snapNumb)
  (princ)
(END_ROUTINE));end defun
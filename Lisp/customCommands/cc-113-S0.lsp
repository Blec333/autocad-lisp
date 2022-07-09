;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:S0 ();Snaps 0 - No Snaps
  (setvar 'osmode 16384)
  (setq snapNumb (getvar 'osmode))
  (prompt "Unchecked all snaps; Current OSMode # is: ")(princ snapNumb)
  (princ)
(END_ROUTINE));end defun
;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:S7 ();Snaps 7 - Just Midpoint
  (setvar 'osmode 2)
  (setq snapNumb (getvar 'osmode))
  (prompt "Only MIDPOINT snaps active; Current OSMode # is: ")(princ snapNumb)
  (princ)
(END_ROUTINE));end defun
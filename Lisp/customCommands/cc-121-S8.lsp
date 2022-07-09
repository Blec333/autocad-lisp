;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:S8 ();Snaps 8 - Just Intersection
  (setvar 'osmode 32)
  (setq snapNumb (getvar 'osmode))
  (prompt "Only INTERSECTION snaps active; Current OSMode # is: ")(princ snapNumb)
  (princ)
(END_ROUTINE));end defun
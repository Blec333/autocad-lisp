;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:S5 ();Snaps 5 - Just Endpoint
  (setvar 'osmode 1)
  (setq snapNumb (getvar 'osmode))
  (prompt "Only ENDPOINT snaps active; Current OSMode # is: ")(princ snapNumb)
  (princ)
(END_ROUTINE));end defun
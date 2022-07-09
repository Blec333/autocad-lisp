;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Toggle_Z_Snaplock ()
  (setq curZ (getvar 'osnapz))
    (if(= curZ 1)
      (progn
	(setvar 'osnapz 0)
	(princ "Z snap lock turned off")
	(princ)
	)
      (if(= curZ 0)
	(progn
	  (setvar 'osnapz 1)
	  (princ "Z snap lock turned on")
	  (princ)
	  )
	)
      );end if
      (princ)
(END_ROUTINE));end defun
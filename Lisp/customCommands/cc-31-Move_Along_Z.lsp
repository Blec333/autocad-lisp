;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Move_Along_Z ()
;;;; Move in the Z axis only
(setq ob (ssget)
      dis '(0.0 0.0 0.0)
      elv (getstring "Type required Z elevation <0>:")
      pt  (strcat "@0,0," elv))
(command "move" ob "" dis pt )
(princ)
(END_ROUTINE));end defun
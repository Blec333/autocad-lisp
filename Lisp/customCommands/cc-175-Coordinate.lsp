;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Coordinate ()
  (setq Coordinate (getpoint)
        orgDIMZIN (getvar "DIMZIN"))
  (setvar "DIMZIN" 12)
  (terpri)
  (princ(strcat "x = " (rtos(car Coordinate)2 24)))
  (terpri)
  (princ(strcat "y = " (rtos(cadr Coordinate)2 24)))
  (terpri)
  (princ(strcat "z = " (rtos(caddr Coordinate)2 24)))
  (terpri)(princ)
  (setvar "DIMZIN" orgDIMZIN)
(END_ROUTINE));end defun
;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Rotate_Reference () 
  ;;;; RR = ROTATE REFERENCE
  (setq i 0
        sset (ssget))
  (OUTSIDE_LOOP_VARIABLES sset)
  (command "UCS" "W")
  (INSIDE_LOOP_VARIABLES sset i)
  (setq pt1 (getpoint "\nPick base point: "));end setq
  (setq pt2 (getpoint pt1 "\nPick reference point: "))
  (command "UCS" "VIEW")
  (command "CAL" "translatedPt1=w2u(pt1)")
  (command "CAL" "translatedPt2=w2u(pt2)")
  (command "_ROTATE" sset "" translatedPt1 "R" translatedPt1 translatedPt2 PAUSE)
  (command "CAL" "ucsC1xyz=w2u(c1xyz)")
  (command "UCS" "M" (strcat(rtos(car ucsC1xyz)2) "," (rtos(cadr ucsC1xyz)2) "," (rtos(caddr ucsC1xyz)2)))
(princ)
(END_ROUTINE));end defun
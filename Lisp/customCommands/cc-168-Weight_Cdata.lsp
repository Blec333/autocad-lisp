;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Weight_Cdata ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq NewWeight (getstring T "n/Enter the new Weight value (no commas): "))
  (if(and(not(= NewWeight nil))(not(= NewWeight "")))
    (while(< i limit)
      (INSIDE_LOOP_VARIABLES sset i)
      (vlax-put-property vla "CustomData" (strcat "Weight" " = " NewWeight ","))
      (setq i (1+ i))
    );end while
  );end if
(END_ROUTINE));end defun
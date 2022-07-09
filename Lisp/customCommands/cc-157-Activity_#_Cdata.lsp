;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Activity_#_Cdata ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq NewActivity_# (getstring T "n/Enter the new Activity_# value (no commas): "))
  (if(and(not(= NewActivity_# nil))(not(= NewActivity_# "")))
    (while(< i limit)
      (INSIDE_LOOP_VARIABLES sset i)
      (vlax-put-property vla "CustomData" (strcat "Activity_#" " = " NewActivity_# ","))
      (setq i (1+ i))
    );end while
  );end if
(END_ROUTINE));end defun
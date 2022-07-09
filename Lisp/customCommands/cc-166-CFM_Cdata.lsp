;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:CFM_Cdata ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq NewCFM (getstring T "n/Enter the new CFM value (no commas): "))
  (if(and(not(= NewCFM nil))(not(= NewCFM "")))
    (while(< i limit)
      (INSIDE_LOOP_VARIABLES sset i)
      (vlax-put-property vla "CustomData" (strcat "CFM/ID#2" " = " NewCFM ","))
      (setq i (1+ i))
    );end while
  );end if
(END_ROUTINE));end defun
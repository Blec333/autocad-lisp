;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:CFM_ID#2_Cdata ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq NewCFM/ID#2 (getstring T "n/Enter the new CFM/ID#2 value (no commas): "))
  (if(and(not(= NewCFM/ID#2 nil))(not(= NewCFM/ID#2 "")))
    (while(< i limit)
      (INSIDE_LOOP_VARIABLES sset i)
      (vlax-put-property vla "CustomData" (strcat "CFM/ID#2" " = " NewCFM/ID#2 ","))
      (setq i (1+ i))
    );end while
  );end if
(END_ROUTINE));end defun
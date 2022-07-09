;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Model_Cdata ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq NewModel (getstring T "n/Enter the new Model value (no commas): "))
  (if(and(not(= NewModel nil))(not(= NewModel "")))
    (while(< i limit)
      (INSIDE_LOOP_VARIABLES sset i)
      (vlax-put-property vla "CustomData" (strcat "Model" " = " NewModel ","))
      (setq i (1+ i))
    );end while
  );end if
(END_ROUTINE));end defun
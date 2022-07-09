;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Size_Cdata ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq NewSize (getstring T "n/Enter the new Size value (no commas): "))
  (if(and(not(= NewSize nil))(not(= NewSize "")))
    (while(< i limit)
      (INSIDE_LOOP_VARIABLES sset i)
      (vlax-put-property vla "CustomData" (strcat "Size/Tonnage" " = " NewSize ","))
      (setq i (1+ i))
    );end while
  );end if
(END_ROUTINE));end defun
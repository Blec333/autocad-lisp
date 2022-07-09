;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Size_Tonnage_Cdata ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq NewSize/Tonnage (getstring T "n/Enter the new Size/Tonnage value (no commas): "))
  (if(and(not(= NewSize/Tonnage nil))(not(= NewSize/Tonnage "")))
    (while(< i limit)
      (INSIDE_LOOP_VARIABLES sset i)
      (vlax-put-property vla "CustomData" (strcat "Size/Tonnage" " = " NewSize/Tonnage ","))
      (setq i (1+ i))
    );end while
  );end if
(END_ROUTINE));end defun
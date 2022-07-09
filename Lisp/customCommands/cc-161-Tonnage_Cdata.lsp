;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Tonnage_Cdata ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq Tonnage (getstring T "n/Enter the new Tonnage value (no commas): "))
  (if(and(not(= Tonnage nil))(not(= Tonnage "")))
    (while(< i limit)
      (INSIDE_LOOP_VARIABLES sset i)
      (vlax-put-property vla "CustomData" (strcat "Size/Tonnage" " = " Tonnage ","))
      (setq i (1+ i))
    );end while
  );end if
(END_ROUTINE));end defun
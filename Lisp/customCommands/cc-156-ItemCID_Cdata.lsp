;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:ItemCID_Cdata ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq NewItemCID (getstring T "n/Enter the new ItemCID value (no commas): "))
  (if(and(not(= NewItemCID nil))(not(= NewItemCID "")))
    (while(< i limit)
      (INSIDE_LOOP_VARIABLES sset i)
      (vlax-put-property vla "CustomData" (strcat "ItemCID" " = " NewItemCID ","))
      (setq i (1+ i))
    );end while
  );end if
(END_ROUTINE));end defun
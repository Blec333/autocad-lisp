;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Tag_ID_Cdata ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq NewTag_ID (getstring T "n/Enter the new Tag_ID value (no commas): "))
  (if(and(not(= NewTag_ID nil))(not(= NewTag_ID "")))
    (while(< i limit)
      (INSIDE_LOOP_VARIABLES sset i)
      (vlax-put-property vla "CustomData" (strcat "Tag_ID" " = " NewTag_ID ","))
      (setq i (1+ i))
    );end while
  );end if
(END_ROUTINE));end defun
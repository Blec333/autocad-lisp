;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Manufacturer_Cdata ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq NewManufacturer (getstring T "n/Enter the new Manufacturer value (no commas): "))
  (if(and(not(= NewManufacturer nil))(not(= NewManufacturer "")))
    (while(< i limit)
      (INSIDE_LOOP_VARIABLES sset i)
      (vlax-put-property vla "CustomData" (strcat "Manufacturer" " = " NewManufacturer ","))
      (setq i (1+ i))
    );end while
  );end if
(END_ROUTINE));end defun
;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Automation2_Cdata ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq NewAutomation2 (getstring T "n/Enter the new Automation2 value (no commas): "))
  (if(and(not(= NewAutomation2 nil))(not(= NewAutomation2 "")))
    (while(< i limit)
      (INSIDE_LOOP_VARIABLES sset i)
      (vlax-put-property vla "CustomData" (strcat "Automation2" " = " NewAutomation2 ","))
      (setq i (1+ i))
    );end while
  );end if
(END_ROUTINE));end defun
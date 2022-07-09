;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Automation1_Cdata ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq NewAutomation1 (getstring T "n/Enter the new Automation1 value (no commas): "))
  (if(and(not(= NewAutomation1 nil))(not(= NewAutomation1 "")))
    (while(< i limit)
      (INSIDE_LOOP_VARIABLES sset i)
      (vlax-put-property vla "CustomData" (strcat "Automation1" " = " NewAutomation1 ","))
      (setq i (1+ i))
    );end while
  );end if
(END_ROUTINE));end defun
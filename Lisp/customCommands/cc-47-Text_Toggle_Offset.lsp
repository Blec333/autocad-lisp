;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Text_Toggle_Offset ()
  (setq sset (ssget '((0 . "MAPS_SOLID")))
	i 0);end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (while (< i Limit)
  (INSIDE_LOOP_VARIABLES sset i)
   (if(= OffsetToggle "On")
     (settext SSentity 16 "off")
     (if(not(= OffsetToggle "On"))
       (settext SSentity 16 "on")
   ) );end if
   (setq i (1+ i))
  );end while
  (command "pselect" sset "")
  (command "regen")
  (princ)
(END_ROUTINE));end defun
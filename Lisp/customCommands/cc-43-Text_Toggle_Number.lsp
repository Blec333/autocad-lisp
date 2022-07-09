;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Text_Toggle_Number ()
  (setq sset (ssget '((0 . "MAPS_SOLID")))
	i 0);end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (while (< i Limit)
  (INSIDE_LOOP_VARIABLES sset i)
   (if(= NumberToggle "On")
     (settext SSentity 1 "off")
     (if(not(= NumberToggle "On"))
       (settext SSentity 1 "on")
   ) );end if
   (setq i (1+ i))
  );end while
  (command "pselect" sset "")
  (command "regen")
  (princ)
(END_ROUTINE));end defun
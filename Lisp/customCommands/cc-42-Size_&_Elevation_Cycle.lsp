;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

;;;; TO TURN ON SIZE & ELEVATION AT THE SAME TIME WITH ONE BUTTON
(defun c:Size_&_Elevation_Cycle ()
  (setq sset (ssget)
	i 0);end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (while (< i Limit)
  (INSIDE_LOOP_VARIABLES sset i)
   (if(or(and(= SizeToggle "On")(= ElevationToggle "Off"))(and(= SizeToggle "Off")(= ElevationToggle "On")))
     (settext SSentity 6 "off")
     (if(and(not(= SizeToggle "On"))(not(= ElevationToggle "On")))
       (settext SSentity 6 "on")
       (if(and(= SizeToggle "On")(= ElevationToggle "On"))
         (settext SSentity 4 "Off")
   ) ) );end if
   (setq i (1+ i))
  );end while
  (command "pselect" sset "")
  (command "regen")
  (princ)
(END_ROUTINE));end defun
;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Rotate_Around_Center ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
    (command "ucs" "world")
  (while(< i limit)
    (INSIDE_LOOP_VARIABLES sset i)
    (TRIG_MY_POINTS PrimaryPoint c1Width c1Depth SecondaryPoint c2Width c2Depth elevationTagWidth elevationTagDepth sizeTagWidth sizeTagDepth)
    (if(not onlyC1)
      (progn
        (initcommandversion 1)
        (command "._rotate" ent "" (strcat(rtos xMidpoint 2) "," (rtos yMidpoint 2) "," (rtos pointZ 2)) "180")
        (initcommandversion 2)
        (setq i (1+ i))
      );end progn
      (command "._rotate" ent "" (strcat(rtos c1x 2) "," (rtos c1y 2) "," (rtos entCAvg 2)) "180")
    );end if
  );end while
  (RESET_UCS)
);end defun
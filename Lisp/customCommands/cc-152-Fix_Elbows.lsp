;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Fix_Elbows ()
  ;(setvar 'filedia 0)
  (setq i 0
        sset (ssget "_X" '((0 . "MAPS_SOLID")
                               (-4 . "<OR")
                                 (300 . "90Deg Welded Elbow")
                                 (300 . "45Deg Welded Elbow")
                               (-4 . "OR>"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (while(< i limit)
    (close writeToVBCode)
    (setq writeToVBCode (open vbCode "w"))
    (INSIDE_LOOP_VARIABLES sset i)
    (setq oldItem ent
          oldItemDescription ItemDescription
          elbowAngle (rtos ItemLengthAngle 2 0)
          oldItemC1xyz (list c2x c2y c2z)
          oldItemC2xyz (list c3x c3y c3z))
    (if(wcmatch (strcase ItemDescription) "*HALF*")
      (progn
        (write-line (strcat "item.dim[\"Inner Radius\"].value = " (rtos dim2 2 0)) writeToVBCode)
        (write-line (strcat "item.dim[\"Angle\"].value = " elbowAngle) writeToVBCode)
        (write-line "item.update()" writeToVBCode)
      );end progn
      (progn
        (write-line (strcat "item.dim[\"Angle\"].value = " elbowAngle) writeToVBCode)
        (write-line "item.update()" writeToVBCode)
      );end progn
    );end if
    (close writeToVBCode)
    (command "attacher" oldItemC2xyz)
    (REDRAW)
    (command (takeoff "Q:/PM Shared/Libraries/Common/STANDARD ITEMS/2.) ROUND/#1 SPIRAL.itm" "" "") "")
    (command "._rotateatend" "180" "")
    (command "attachoff")
    (setq straightItem (entlast)
          ssStraightItem (ssadd straightItem))
    (INSIDE_LOOP_VARIABLES ssStraightItem 0)
    (setq straightC1xyz (list c1x c1y c1z)
          straightC2xyz (list c2x c2y c2z))
    (command "erase" oldItem "")
    (command "attacher" straightC1xyz)
    (REDRAW)
    (command (takeoff "Q:/PM Shared/Libraries/Common/STANDARD ITEMS/2.) ROUND/WELDED ELBOWS/Misc. Welded Elbow.ITM" "" "") "")
    (setq newItem (entlast)
          ssnewItem (ssadd newItem))
    (Executescript vbCode ssnewItem)
    (redraw)
    (command)(command)
    (INSIDE_LOOP_VARIABLES ssnewItem 0)
    (setq newItemC1xyz (list c2x c2y c2z)
          newItemC2xyz (list c3x c3y c3z))
    (command "erase" straightItem "")
    (command ".move" newItem "" newItemC1xyz straightC1xyz)
    (vl-file-delete vbCode)
    (setq i (1+ i))
  );end while
(END_ROUTINE));end defun
;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:FIX_LENGTHS ()
  (setq i 0
        sset (ssget "X" '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (close writeToVBCode)
  (vl-file-delete vbCode)
  (while(< i limit)
    (INSIDE_LOOP_VARIABLES sset i)
    (if(and(/= ItemLengthAngle 0)
       (or(wcmatch ItemSourceFileName "*SPIRAL")
          (wcmatch ItemSourceFileName "Tube")
          (wcmatch ItemSourceFileName "STRAIGHT")
          (wcmatch ItemSourceFileName "Straight")
          (wcmatch ItemSourceFileName "OGEE")
          (wcmatch ItemSourceFileName "TRANSITION")
          (wcmatch ItemSourceFileName "Transition")
          (wcmatch ItemSourceFileName "F 41")
          (wcmatch ItemSourceFileName "SQ-RD")
          (wcmatch ItemSourceFileName "Square to Round")
          (wcmatch ItemSourceFileName "Mitered Offset Fixed")))
      (progn
        (setq roundedItemLengthAngle (ROUND ItemLengthAngle 1))
        (if(and(/= roundedItemLengthAngle 0)(/= roundedItemLengthAngle ItemLengthAngle))
          (progn
            (OUTSIDE_LOOP_VARIABLES sset)
            (write-line (strcat "item.dim[\"Length\"].value = " (rtos roundedItemLengthAngle 2)) writeToVBCode)
            (close writeToVBCode)
            (executescript vbCode SSentity)
            (vl-file-delete vbCode)
          );end progn
        );end if
      );end progn
    );end if
        (setq i (1+ i))
  );end while
  (princ)
(END_ROUTINE));end defun
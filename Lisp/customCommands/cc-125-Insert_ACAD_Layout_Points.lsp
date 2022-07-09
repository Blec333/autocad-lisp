;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Insert_ACAD_Layout_Points (/)
  ; Apply Trimble Points
  (vl-load-com)
  (setq sset (ssget "_X" '((0 . "MAPS_SOLID")));Choose selection set
        i 0);end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (if(not(= sset nil))
    (progn
    (command "_.-insert" seismicBlock (list 0 0 0) "" "" "")
    (command "explode" (entlast))
    (setq refPoint (entlast));end setq
    (command "-purge" "B" "TrimbleSeismic" "N" "")
    (while (< i limit);Start the Loop
      (INSIDE_LOOP_VARIABLES sset i)
      (if(wcmatch ItemNotes "Seismic Flag: Leave Untouched")
        (command "._erase" ent ""));end if
      (if(wcmatch ItemSourceFileName "Seismic Rectangular")
        (progn
          (setq coordinates (list c4x c4y (- c4z 4)));end setq
          (command "copy" refPoint "" "@" coordinates)
          (vlax-put-property(vlax-ename->vla-object (entlast)) 'Notes "Seismic Flag: Leave Untouched")
        );end progn
        (if(wcmatch ItemSourceFileName "Seismic")
          (progn
            (setq coordinates (list c13x c13y c13z));end setq
            (command "copy" refPoint "" "@" coordinates)
            (vlax-put-property(vlax-ename->vla-object (entlast)) 'Notes "Seismic Flag: Leave Untouched")
          );end progn
        );end if
      );end if
          (setq i (1+ i));increment the parent loop
    );endwhile
    );end progn
  );end if
  (close writeToVBCode)
  (vl-file-delete vbCode)
  (princ)
(END_ROUTINE));end defun
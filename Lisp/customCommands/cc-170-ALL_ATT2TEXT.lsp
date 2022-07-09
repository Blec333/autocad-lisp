;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:ALL_ATT2TEXT ()
  (setq i 0
        sset (ssget "X" '((0 . "ATTDEF"))));end setq
  (if(not(= sset nil))
    (progn
      (OUTSIDE_LOOP_VARIABLES sset)
      (while(< i limit)
        (INSIDE_LOOP_VARIABLES sset i)
        (command "pselect" ent "")
        (command "TXT2MTXT")
        (setq i (1+ i))
      );end while
    );progn
  );end if
  (END_ROUTINE)
);end defun
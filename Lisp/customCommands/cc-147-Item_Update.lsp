;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Item_Update ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (if(not(= sset nil))
    (progn
      (OUTSIDE_LOOP_VARIABLES nil)
      (write-line "requires task.selection" writeToVBCode)
      (write-line "dim i = 1" writeToVBCode)
      (write-line "dim qt = ASCII(34)" writeToVBCode)
      (write-line "while i <= task.selection.count" writeToVBCode)
      (write-line "dim item = task.selection[i]" writeToVBCode)
      (write-line "item.update()" writeToVBCode)
      (write-line "i = i + 1" writeToVBCode)
      (write-line "end while" writeToVBCode)
      (close writeToVBCode)
      (Executescript vbCode sset)
      (vl-file-delete vbCode)
    );progn
  );end if
  (princ)
(END_ROUTINE));end defun
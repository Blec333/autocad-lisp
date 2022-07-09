;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Loop_SSET_Entities ()
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq i 0);end setq
  (while(< i limit)
    (setq iReset nil)
    (c:Get_SSET_i)
    (REDRAW)
    (terpri)(princ i)(princ(strcat " of " (rtos limit 2 0)))
    (setq i (1+ i))
  );end while
(END_ROUTINE));end defun
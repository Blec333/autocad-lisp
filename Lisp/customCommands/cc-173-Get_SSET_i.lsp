;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Get_SSET_i ()
  (if(not(= sset nil))
    (progn
      (if(or(= i nil)(>= i limit))(progn(setq i (getint "Enter an \"integer\" as the desired selection set member index number:  "))(terpri)(setq iReset T)))
      (INSIDE_LOOP_VARIABLES sset i)
      (c:SELECT_ENTITY)
      (if(= iReset T)(setq i nil))
    );progn
    (progn
      (terpri)
      (princ "You must first establish your selection set.")
      (terpri)
      (princ)
      (c:Get_SSET)
    );progn
  );end if
(END_ROUTINE));end defun
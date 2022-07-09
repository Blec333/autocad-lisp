;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Move_X_Axis (/ sset a b)
  (OUTSIDE_LOOP_VARIABLES nil)
  (prompt "MOVE on X axis")(terpri)
  (setq sset (ssget))
  (setq a (getpoint "Select Base Point: "))(terpri)
  (setq b (getpoint a "Select Destination: "))(terpri)
  (command ".move" sset "" a ".X" b "@");change @ to pause without the quotes to manually pick direction
  (princ)
  (END_ROUTINE));end defun
;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Move_Z_Axis (/ sset a b)
  (OUTSIDE_LOOP_VARIABLES nil)
  (prompt "MOVE on Z axis")(terpri)
  (setq sset (ssget))
  (setq a (getpoint "Select Base Point: "))(terpri)
  (setq b (getpoint a "Select Destination: "))(terpri)
  (command ".move" sset "" a ".Z" b "@")
  (princ)
(END_ROUTINE));end defun
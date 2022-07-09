;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Copy_Y_Axis (/ sset a b)
  (OUTSIDE_LOOP_VARIABLES nil)
  (prompt "Copy on Y axis")(terpri)
  (setq sset (ssget))
  (setq a (getpoint "Select Base Point: "))(terpri)
  (setq b (getpoint a "Select Destination: "))(terpri)
  (command ".copy" sset "" a ".Y" b "@")
  (princ)
(END_ROUTINE));end defun
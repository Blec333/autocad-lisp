;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Get_SSET ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (INSIDE_LOOP_VARIABLES sset i)
(END_ROUTINE));end defun
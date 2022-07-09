;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

; move and rotate at the same time!
(defun c:Move_Rotate ( / sset pt1 pt2)
  (SETQ oldError *ERROR*)
  (defun *ERROR* (s) 
   (SETVAR "HighLight" oldHighlight)
   (setq *ERROR* oldError)
   (SETQ oldError NIL)
   (princ)
  (END_ROUTINE));end defun err
  (SETQ oldHighlight (GETVAR "Highlight"))
  (PROMPT "\nSelect Entities to Move Rotate:")
  (SETQ sset (SSGET))
  (SETVAR "HighLight" 0)
  (SETQ Pt1 (getpoint "\nEnter Base Point:"))
  (COMMAND "move" sset "" Pt1 PAUSE)
  (PROMPT "\nEnter Rotation angle:")
  (COMMAND "ROTATE" sset "" (GETVAR "LASTPOINT") PAUSE)
  (SETVAR "HighLight" oldHighlight)
  (setq *ERROR* oldError)
  (SETQ oldError NIL)
  (princ)
(END_ROUTINE));end defun
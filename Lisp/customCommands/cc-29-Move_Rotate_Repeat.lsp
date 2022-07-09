;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

;multirotate is a multiple rotating utility used to rotate several items by one rotate factor and many reference points

(defun c:Move_Rotate_Repeat ()
  (Prompt "\n\nMulti-Rotate")
  (PROMPT "\n Multi-Rotate")
  (if (not rotateref) (setq rotateref 0))
  (setq l t)
  (INITGET (+ 1 2))
  (setq temp 
	(getdist (strcat "\nEnter Rotation <" (rtos rotateref 2 2) ">: ") ) )
  (if temp (setq rotateref temp))
  (while l
    (prompt "\nSelect objects: ")
    (setq ss1 (ssget))
    (IF SS1
     (PROGN
      (INITGET (+ 1 2 4))
      (setq p1 (getpoint "\nSelect Base Point: "))
      (command "rotate" ss1 "" p1 rotateref)
     )
    )
  )
(END_ROUTINE));end defun
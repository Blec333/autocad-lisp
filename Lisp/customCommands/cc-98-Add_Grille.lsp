;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Add_Grille ()
  ;;;; AG = ADD GRILLE - ADDS GRILLE TO SELECTED OPENING
  (command "._attacher" pause "")
  (command (takeoff Grille))
  (command "._attachoff")
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if item.CID = 505 then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value - 2" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value - 2" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
  (close writeToVBCode)
  (command "pselect" (entlast) "")
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (command "._attachoff")
(princ)
(END_ROUTINE));end defun
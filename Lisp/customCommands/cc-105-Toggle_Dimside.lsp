;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Toggle_Dimside () 
;;;; TD = TOGGLE DIMSIDE - SWITCH BETWEEN READING DIMS INSIDE/OUTSIDE
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if item.dimside = \"outside\" then" writeToVBCode)
(write-line "item.dimside = \"inside\"" writeToVBCode)
(write-line "elseif item.dimside = \"inside\" then" writeToVBCode)
(write-line "item.dimside = \"outside\"" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
  (close writeToVBCode)
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (princ)
(END_ROUTINE));end defun
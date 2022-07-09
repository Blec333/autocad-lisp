;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Fix_Round_Straight_Connectors (/ sset)
;;;; FRSC = Fix Round Straight Connectors
(setq sset (ssget "_X" '((0 . "MAPS_SOLID"))));Auto choose selection set
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if item.CID = 40 then" writeToVBCode)
(write-line "dim c1Num = 1" writeToVBCode)
(write-line "dim c1Name = \"Raw\"" writeToVBCode)
(write-line "dim c1Grp = \"Round Duct\"" writeToVBCode)
(write-line "function connFind(cnum,cgrp,cnam)" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "while item.connector[cnum].group <> cgrp" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "while item.connector[cnum].value <> cnam" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "item.connector[c1Num].value = c1Name" writeToVBCode)
(write-line "item.connector[c1Num].locked = true" writeToVBCode)
(write-line "if item.connector[c1Num].group <> c1Grp then" writeToVBCode)
(write-line "connFind(c1Num,c1Grp,c1Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "dim c2Num = 2" writeToVBCode)
(write-line "dim c2Name = \"Raw\"" writeToVBCode)
(write-line "dim c2Grp = \"Round Duct\"" writeToVBCode)
(write-line "function connFind(cnum,cgrp,cnam)" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "while item.connector[cnum].group <> cgrp" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "while item.connector[cnum].value <> cnam" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "item.connector[c2Num].value = c1Name" writeToVBCode)
(write-line "item.connector[c2Num].locked = true" writeToVBCode)
(write-line "if item.connector[c2Num].group <> c1Grp then" writeToVBCode)
(write-line "connFind(c2Num,c2Grp,c2Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
  (close writeToVBCode)
  (command "pselect" sset "")
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (prompt "All instantiated round straight connectors have been locked to RAW per standards.")(princ)
  
  (princ)
(END_ROUTINE));end defun
;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Insulation_Cycle ()
;;;; IC = CYCLES INSULATION OPTIONS WHERE APPROPRIATE
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "" writeToVBCode)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "item.ispeclock = false" writeToVBCode)
(write-line "item.insspec = \"None\"" writeToVBCode)
(write-line "item.ispeclock = true" writeToVBCode)
(write-line "if item.CID <> 838 then" writeToVBCode)
(write-line "if (wildcard(item.service,\"*exhaust*\") = 1) then" writeToVBCode)
(write-line "item.insulation.status = \"OFF\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*exhaust*\") = 0) then" writeToVBCode)
(write-line "if item.insulation.status = \"OFF\" then" writeToVBCode)
(write-line "item.insulation.status = \"OUTSIDE\"" writeToVBCode)
(write-line "item.insulation.material = \"HVAC Liner: Duct Wrap\"" writeToVBCode)
(write-line "item.insulation.gauge = 1.5" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.insulation.status = \"OUTSIDE\" then" writeToVBCode)
(write-line "item.insulation.status = \"INSIDE\"" writeToVBCode)
(write-line "item.insulation.material = \"HVAC Liner: 1-1/2 LB\"" writeToVBCode)
(write-line "item.insulation.gauge = 1" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (item.insulation.status = \"INSIDE\") then" writeToVBCode)
(write-line "item.insulation.status = \"OFF\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
  (close writeToVBCode)
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (prompt "Cycled to the next insulation option.")(princ)
  (princ)
(END_ROUTINE));end defun
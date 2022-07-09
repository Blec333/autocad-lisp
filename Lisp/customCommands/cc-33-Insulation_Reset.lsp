;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Insulation_Reset ()
;;;; IR = SETS/RESETS INSULATION PER SERVICE
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "dim supplyGauge = inputbox(\"Enter SUPPLY service insulation thickness:\")" writeToVBCode)
(write-line "dim returnGauge = inputbox(\"Enter RETURN service insulation thickness:\")" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if (wildcard(item.service, \"*SUPPLY*\") = 1) and item.insulation.status <> \"INSIDE\" and (wildcard(item.description, \"*CFSD*\") = 0) and ((wildcard(supplyGauge, \"F*\") = 0) and (wildcard(supplyGauge, \"N/A\") = 0)) then" writeToVBCode)
(write-line "item.ispeclock = false" writeToVBCode)
(write-line "item.insspec = \"None\"" writeToVBCode)
(write-line "item.ispeclock = true" writeToVBCode)
(write-line "item.insulation.status = \"OUTSIDE\"" writeToVBCode)
(write-line "item.insulation.material = \"HVAC Liner: Duct Wrap\"" writeToVBCode)
(write-line "item.insulation.gauge = supplyGauge" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service, \"*RETURN*\") = 1) and item.insulation.status <> \"INSIDE\" and (wildcard(item.description, \"*CFSD*\") = 0) and ((wildcard(returnGauge, \"F*\") = 0) and (wildcard(returnGauge, \"N/A\") = 0)) then" writeToVBCode)
(write-line "item.ispeclock = false" writeToVBCode)
(write-line "item.insspec = \"None\"" writeToVBCode)
(write-line "item.ispeclock = true" writeToVBCode)
(write-line "item.insulation.status = \"OUTSIDE\"" writeToVBCode)
(write-line "item.insulation.material = \"HVAC Liner: Duct Wrap\"" writeToVBCode)
(write-line "item.insulation.gauge = returnGauge" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service, \"*EXHAUST*\") = 1) or (wildcard(item.description, \"*CFSD*\") = 1) or ((wildcard(item.service, \"*OUTSIDE*\") = 1) and item.insulation.status <> \"INSIDE\") then" writeToVBCode)
(write-line "item.ispeclock = false" writeToVBCode)
(write-line "item.insspec = \"None\"" writeToVBCode)
(write-line "item.ispeclock = true" writeToVBCode)
(write-line "item.insulation.status = \"OFF\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
  (close writeToVBCode)
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (prompt "Insulation set/reset to default.")(princ)
  (princ)
(END_ROUTINE));end defun
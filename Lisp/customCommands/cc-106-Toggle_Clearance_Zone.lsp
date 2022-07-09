;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Toggle_Clearance_Zone () 
  ;;;; c:TNF-Toggle_No-Fly_Zone - WRAP DUCT WITH A NO-FLY ZONE
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if item.doublewall = false then" writeToVBCode)
(write-line "dim zoneThickness = inputbox(\"No-Fly Zone Thickness:\")" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "item.ispeclock = false" writeToVBCode)
(write-line "item.insspec = \"None\"" writeToVBCode)
(write-line "item.ispeclock = true" writeToVBCode)
(write-line "item.dwlock = false" writeToVBCode)
(write-line "item.doublewall = true" writeToVBCode)
(write-line "item.dwlock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "item.skinmateriallock = false" writeToVBCode)
(write-line "item.skinmaterial = \"Ductwork No-Fly Zone\"" writeToVBCode)
(write-line "item.skinmateriallock = true" writeToVBCode)
(write-line "item.insulation.status = \"OUTSIDE\"" writeToVBCode)
(write-line "item.insulation.materiallock = false" writeToVBCode)
(write-line "item.insulation.material = \"Ductwork No-Fly Zone: Ductwork No-Fly Zone\"" writeToVBCode)
(write-line "item.insulation.materiallock = true" writeToVBCode)
(write-line "item.insulation.gauge = zoneThickness" writeToVBCode)
(write-line "item.dimsidelock = false" writeToVBCode)
(write-line "item.dimside = \"inside\"" writeToVBCode)
(write-line "item.dimsidelock = true" writeToVBCode)
(write-line "item.skinside = \"outside\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "elseif item.doublewall = true then" writeToVBCode)
(write-line "dim insulationType = inputbox(\"Type:HVAC[Liner]/Duct[Wrap]/[Off]/[Fire]Barrier?:\")" writeToVBCode)
(write-line "if insulationType = \"Off\" or insulationType = \"off\" or insulationType = \"OFF\" then" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "dim insulStatus = \"OFF\"" writeToVBCode)
(write-line "item.dwlock = false" writeToVBCode)
(write-line "item.doublewall = false" writeToVBCode)
(write-line "item.dwlock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "item.insulation.status = insulStatus" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "elseif insulationType = \"Liner\" or insulationType = \"liner\" or insulationType = \"LINER\" or insulationType = \"Wrap\" or insulationType = \"wrap\" or insulationType = \"WRAP\" or insulationType = \"Fire\" or insulationType = \"fire\" or insulationType = \"FIRE\" then" writeToVBCode)
(write-line "dim insulationThickness = inputbox(\"Enter insulation thickness:\")" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if insulationType = \"Liner\" or insulationType = \"liner\" or insulationType = \"LINER\" then" writeToVBCode)
(write-line "dim insulMat = \"HVAC Liner: 1-1/2 LB\"" writeToVBCode)
(write-line "dim insulStatus = \"INSIDE\"" writeToVBCode)
(write-line "item.dwlock = false" writeToVBCode)
(write-line "item.doublewall = false" writeToVBCode)
(write-line "item.dwlock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "item.insulation.materiallock = false" writeToVBCode)
(write-line "item.insulation.material = insulMat" writeToVBCode)
(write-line "item.insulation.materiallock = true" writeToVBCode)
(write-line "item.insulation.gauge = insulationThickness" writeToVBCode)
(write-line "item.insulation.status = insulStatus" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif insulationType = \"Wrap\" or insulationType = \"wrap\" or insulationType = \"WRAP\" then" writeToVBCode)
(write-line "dim insulMat = \"HVAC Liner: Duct Wrap\"" writeToVBCode)
(write-line "dim insulStatus = \"OUTSIDE\"" writeToVBCode)
(write-line "item.dwlock = false" writeToVBCode)
(write-line "item.doublewall = false" writeToVBCode)
(write-line "item.dwlock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "item.insulation.materiallock = false" writeToVBCode)
(write-line "item.insulation.material = insulMat" writeToVBCode)
(write-line "item.insulation.materiallock = true" writeToVBCode)
(write-line "item.insulation.gauge = insulationThickness" writeToVBCode)
(write-line "item.insulation.status = insulStatus" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif insulationType = \"Fire\" or insulationType = \"fire\" or insulationType = \"FIRE\" then" writeToVBCode)
(write-line "dim insulMat = \"Fire Barrier Duct Wrap: Fire Barrier Duct Wrap\"" writeToVBCode)
(write-line "dim insulStatus = \"OUTSIDE\"" writeToVBCode)
(write-line "item.dwlock = false" writeToVBCode)
(write-line "item.doublewall = false" writeToVBCode)
(write-line "item.dwlock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "item.insulation.materiallock = false" writeToVBCode)
(write-line "item.insulation.material = insulMat" writeToVBCode)
(write-line "item.insulation.materiallock = true" writeToVBCode)
(write-line "item.insulation.gauge = insulationThickness" writeToVBCode)
(write-line "item.insulation.status = insulStatus" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end if" writeToVBCode)
  (close writeToVBCode)
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (princ)
(END_ROUTINE));end defun
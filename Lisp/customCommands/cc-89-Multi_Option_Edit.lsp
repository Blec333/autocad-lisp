;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Multi_Option_Edit ()
;;;; D2 = CHOOSE VALUE FOR DIMENSION #2
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "dim limit = item.options" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "dim identity = inputbox(\"Enter option index #:\")" writeToVBCode)
(write-line "dim check = \"false\"" writeToVBCode)
(write-line "dim idFlag = \"invalid\"" writeToVBCode)
(write-line "while count <= limit" writeToVBCode)
(write-line "if identity = count then" writeToVBCode)
(write-line "check = \"true\"" writeToVBCode)
(write-line "idFlag = \"valid\"" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "if check = \"false\" then" writeToVBCode)
(write-line "identity = qt + identity + qt" writeToVBCode)
(write-line "count = 1" writeToVBCode)
(write-line "while count <= limit" writeToVBCode)
(write-line "if (wildcard(item.option[count].name,identity) = 1) then" writeToVBCode)
(write-line "idFlag = \"valid\"" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if idFlag = \"valid\" then" writeToVBCode)
(write-line "if item.option[identity].value >= 0 or item.option[identity].value < 0 then" writeToVBCode)
(write-line "dim self = item.option[identity].value" writeToVBCode)
(write-line "dim value = inputbox(\"Enter [VALUE]\")" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "dim self = item.option[identity].value" writeToVBCode)
(write-line "dim auto = 1000000" writeToVBCode)
(write-line "dim dependent = 1100000" writeToVBCode)
(write-line "dim calc = 1100001" writeToVBCode)
(write-line "dim D1 = item.dim[1].numvalue" writeToVBCode)
(write-line "dim D2 = item.dim[2].numvalue" writeToVBCode)
(write-line "dim D3 = item.dim[3].numvalue" writeToVBCode)
(write-line "dim D4 = item.dim[4].numvalue" writeToVBCode)
(write-line "dim D5 = item.dim[5].numvalue" writeToVBCode)
(write-line "dim D6 = item.dim[6].numvalue" writeToVBCode)
(write-line "dim D7 = item.dim[7].numvalue" writeToVBCode)
(write-line "dim D8 = item.dim[8].numvalue" writeToVBCode)
(write-line "dim D9 = item.dim[9].numvalue" writeToVBCode)
(write-line "dim D10 = item.dim[10].numvalue" writeToVBCode)
(write-line "dim D11 = item.dim[11].numvalue" writeToVBCode)
(write-line "dim D12 = item.dim[12].numvalue" writeToVBCode)
(write-line "dim D13 = item.dim[13].numvalue" writeToVBCode)
(write-line "dim D14 = item.dim[14].numvalue" writeToVBCode)
(write-line "dim D15 = item.dim[15].numvalue" writeToVBCode)
(write-line "dim D16 = item.dim[16].numvalue" writeToVBCode)
(write-line "dim D17 = item.dim[17].numvalue" writeToVBCode)
(write-line "dim D18 = item.dim[18].numvalue" writeToVBCode)
(write-line "dim D19 = item.dim[19].numvalue" writeToVBCode)
(write-line "dim D20 = item.dim[20].numvalue" writeToVBCode)
(write-line "dim D21 = item.dim[21].numvalue" writeToVBCode)
(write-line "dim D22 = item.dim[22].numvalue" writeToVBCode)
(write-line "dim D23 = item.dim[23].numvalue" writeToVBCode)
(write-line "dim D24 = item.dim[24].numvalue" writeToVBCode)
(write-line "dim D25 = item.dim[25].numvalue" writeToVBCode)
(write-line "dim D26 = item.dim[26].numvalue" writeToVBCode)
(write-line "dim D27 = item.dim[27].numvalue" writeToVBCode)
(write-line "dim D28 = item.dim[28].numvalue" writeToVBCode)
(write-line "dim D29 = item.dim[29].numvalue" writeToVBCode)
(write-line "dim D30 = item.dim[30].numvalue" writeToVBCode)
(write-line "dim D31 = item.dim[31].numvalue" writeToVBCode)
(write-line "dim D32 = item.dim[32].numvalue" writeToVBCode)
(write-line "dim D33 = item.dim[33].numvalue" writeToVBCode)
(write-line "dim D34 = item.dim[34].numvalue" writeToVBCode)
(write-line "dim D35 = item.dim[35].numvalue" writeToVBCode)
(write-line "dim D36 = item.dim[36].numvalue" writeToVBCode)
(write-line "dim D37 = item.dim[37].numvalue" writeToVBCode)
(write-line "dim D38 = item.dim[38].numvalue" writeToVBCode)
(write-line "dim D39 = item.dim[39].numvalue" writeToVBCode)
(write-line "dim D40 = item.dim[40].numvalue" writeToVBCode)
(write-line "dim D41 = item.dim[41].numvalue" writeToVBCode)
(write-line "dim D42 = item.dim[42].numvalue" writeToVBCode)
(write-line "dim D43 = item.dim[43].numvalue" writeToVBCode)
(write-line "dim D44 = item.dim[44].numvalue" writeToVBCode)
(write-line "dim D45 = item.dim[45].numvalue" writeToVBCode)
(write-line "dim D46 = item.dim[46].numvalue" writeToVBCode)
(write-line "dim D47 = item.dim[47].numvalue" writeToVBCode)
(write-line "dim D48 = item.dim[48].numvalue" writeToVBCode)
(write-line "dim D49 = item.dim[49].numvalue" writeToVBCode)
(write-line "dim D50 = item.dim[50].numvalue" writeToVBCode)
(write-line "dim D51 = item.dim[51].numvalue" writeToVBCode)
(write-line "dim D52 = item.dim[52].numvalue" writeToVBCode)
(write-line "dim D53 = item.dim[53].numvalue" writeToVBCode)
(write-line "dim D54 = item.dim[54].numvalue" writeToVBCode)
(write-line "dim D55 = item.dim[55].numvalue" writeToVBCode)
(write-line "dim D56 = item.dim[56].numvalue" writeToVBCode)
(write-line "dim D57 = item.dim[57].numvalue" writeToVBCode)
(write-line "dim D58 = item.dim[58].numvalue" writeToVBCode)
(write-line "dim D59 = item.dim[59].numvalue" writeToVBCode)
(write-line "dim D60 = item.dim[60].numvalue" writeToVBCode)
(write-line "dim D61 = item.dim[61].numvalue" writeToVBCode)
(write-line "dim D62 = item.dim[62].numvalue" writeToVBCode)
(write-line "dim D63 = item.dim[63].numvalue" writeToVBCode)
(write-line "dim D64 = item.dim[64].numvalue" writeToVBCode)
(write-line "dim D65 = item.dim[65].numvalue" writeToVBCode)
(write-line "dim D66 = item.dim[66].numvalue" writeToVBCode)
(write-line "dim D67 = item.dim[67].numvalue" writeToVBCode)
(write-line "dim D68 = item.dim[68].numvalue" writeToVBCode)
(write-line "dim D69 = item.dim[69].numvalue" writeToVBCode)
(write-line "dim D70 = item.dim[70].numvalue" writeToVBCode)
(write-line "dim D71 = item.dim[71].numvalue" writeToVBCode)
(write-line "dim D72 = item.dim[72].numvalue" writeToVBCode)
(write-line "dim D73 = item.dim[73].numvalue" writeToVBCode)
(write-line "dim D74 = item.dim[74].numvalue" writeToVBCode)
(write-line "dim D75 = item.dim[75].numvalue" writeToVBCode)
(write-line "dim D76 = item.dim[76].numvalue" writeToVBCode)
(write-line "dim D77 = item.dim[77].numvalue" writeToVBCode)
(write-line "dim D78 = item.dim[78].numvalue" writeToVBCode)
(write-line "dim D79 = item.dim[79].numvalue" writeToVBCode)
(write-line "dim D80 = item.dim[80].numvalue" writeToVBCode)
(write-line "dim D81 = item.dim[81].numvalue" writeToVBCode)
(write-line "dim D82 = item.dim[82].numvalue" writeToVBCode)
(write-line "dim D83 = item.dim[83].numvalue" writeToVBCode)
(write-line "dim D84 = item.dim[84].numvalue" writeToVBCode)
(write-line "dim D85 = item.dim[85].numvalue" writeToVBCode)
(write-line "dim D86 = item.dim[86].numvalue" writeToVBCode)
(write-line "dim D87 = item.dim[87].numvalue" writeToVBCode)
(write-line "dim D88 = item.dim[88].numvalue" writeToVBCode)
(write-line "dim D89 = item.dim[89].numvalue" writeToVBCode)
(write-line "dim D90 = item.dim[90].numvalue" writeToVBCode)
(write-line "dim D91 = item.dim[91].numvalue" writeToVBCode)
(write-line "dim D92 = item.dim[92].numvalue" writeToVBCode)
(write-line "dim D93 = item.dim[93].numvalue" writeToVBCode)
(write-line "dim D94 = item.dim[94].numvalue" writeToVBCode)
(write-line "dim D95 = item.dim[95].numvalue" writeToVBCode)
(write-line "dim D96 = item.dim[96].numvalue" writeToVBCode)
(write-line "dim D97 = item.dim[97].numvalue" writeToVBCode)
(write-line "dim D98 = item.dim[98].numvalue" writeToVBCode)
(write-line "dim D99 = item.dim[99].numvalue" writeToVBCode)
(write-line "dim D100 = item.dim[100].numvalue" writeToVBCode)
(write-line "dim O1 = item.option[1].value" writeToVBCode)
(write-line "dim O2 = item.option[2].value" writeToVBCode)
(write-line "dim O3 = item.option[3].value" writeToVBCode)
(write-line "dim O4 = item.option[4].value" writeToVBCode)
(write-line "dim O5 = item.option[5].value" writeToVBCode)
(write-line "dim O6 = item.option[6].value" writeToVBCode)
(write-line "dim O7 = item.option[7].value" writeToVBCode)
(write-line "dim O8 = item.option[8].value" writeToVBCode)
(write-line "dim O9 = item.option[9].value" writeToVBCode)
(write-line "dim O10 = item.option[10].value" writeToVBCode)
(write-line "dim O11 = item.option[11].value" writeToVBCode)
(write-line "dim O12 = item.option[12].value" writeToVBCode)
(write-line "dim O13 = item.option[13].value" writeToVBCode)
(write-line "dim O14 = item.option[14].value" writeToVBCode)
(write-line "dim O15 = item.option[15].value" writeToVBCode)
(write-line "dim O16 = item.option[16].value" writeToVBCode)
(write-line "dim O17 = item.option[17].value" writeToVBCode)
(write-line "dim O18 = item.option[18].value" writeToVBCode)
(write-line "dim O19 = item.option[19].value" writeToVBCode)
(write-line "dim O20 = item.option[20].value" writeToVBCode)
(write-line "dim O21 = item.option[21].value" writeToVBCode)
(write-line "dim O22 = item.option[22].value" writeToVBCode)
(write-line "dim O23 = item.option[23].value" writeToVBCode)
(write-line "dim O24 = item.option[24].value" writeToVBCode)
(write-line "dim O25 = item.option[25].value" writeToVBCode)
(write-line "dim O26 = item.option[26].value" writeToVBCode)
(write-line "dim O27 = item.option[27].value" writeToVBCode)
(write-line "dim O28 = item.option[28].value" writeToVBCode)
(write-line "dim O29 = item.option[29].value" writeToVBCode)
(write-line "dim O30 = item.option[30].value" writeToVBCode)
(write-line "dim O31 = item.option[31].value" writeToVBCode)
(write-line "dim O32 = item.option[32].value" writeToVBCode)
(write-line "dim O33 = item.option[33].value" writeToVBCode)
(write-line "dim O34 = item.option[34].value" writeToVBCode)
(write-line "dim O35 = item.option[35].value" writeToVBCode)
(write-line "dim O36 = item.option[36].value" writeToVBCode)
(write-line "dim O37 = item.option[37].value" writeToVBCode)
(write-line "dim O38 = item.option[38].value" writeToVBCode)
(write-line "dim O39 = item.option[39].value" writeToVBCode)
(write-line "dim O40 = item.option[40].value" writeToVBCode)
(write-line "dim O41 = item.option[41].value" writeToVBCode)
(write-line "dim O42 = item.option[42].value" writeToVBCode)
(write-line "dim O43 = item.option[43].value" writeToVBCode)
(write-line "dim O44 = item.option[44].value" writeToVBCode)
(write-line "dim O45 = item.option[45].value" writeToVBCode)
(write-line "dim O46 = item.option[46].value" writeToVBCode)
(write-line "dim O47 = item.option[47].value" writeToVBCode)
(write-line "dim O48 = item.option[48].value" writeToVBCode)
(write-line "dim O49 = item.option[49].value" writeToVBCode)
(write-line "dim O50 = item.option[50].value" writeToVBCode)
(write-line "dim O51 = item.option[51].value" writeToVBCode)
(write-line "dim O52 = item.option[52].value" writeToVBCode)
(write-line "dim O53 = item.option[53].value" writeToVBCode)
(write-line "dim O54 = item.option[54].value" writeToVBCode)
(write-line "dim O55 = item.option[55].value" writeToVBCode)
(write-line "dim O56 = item.option[56].value" writeToVBCode)
(write-line "dim O57 = item.option[57].value" writeToVBCode)
(write-line "dim O58 = item.option[58].value" writeToVBCode)
(write-line "dim O59 = item.option[59].value" writeToVBCode)
(write-line "dim O60 = item.option[60].value" writeToVBCode)
(write-line "dim O61 = item.option[61].value" writeToVBCode)
(write-line "dim O62 = item.option[62].value" writeToVBCode)
(write-line "dim O63 = item.option[63].value" writeToVBCode)
(write-line "dim O64 = item.option[64].value" writeToVBCode)
(write-line "dim O65 = item.option[65].value" writeToVBCode)
(write-line "dim O66 = item.option[66].value" writeToVBCode)
(write-line "dim O67 = item.option[67].value" writeToVBCode)
(write-line "dim O68 = item.option[68].value" writeToVBCode)
(write-line "dim O69 = item.option[69].value" writeToVBCode)
(write-line "dim O70 = item.option[70].value" writeToVBCode)
(write-line "dim O71 = item.option[71].value" writeToVBCode)
(write-line "dim O72 = item.option[72].value" writeToVBCode)
(write-line "dim O73 = item.option[73].value" writeToVBCode)
(write-line "dim O74 = item.option[74].value" writeToVBCode)
(write-line "dim O75 = item.option[75].value" writeToVBCode)
(write-line "dim O76 = item.option[76].value" writeToVBCode)
(write-line "dim O77 = item.option[77].value" writeToVBCode)
(write-line "dim O78 = item.option[78].value" writeToVBCode)
(write-line "dim O79 = item.option[79].value" writeToVBCode)
(write-line "dim O80 = item.option[80].value" writeToVBCode)
(write-line "dim O81 = item.option[81].value" writeToVBCode)
(write-line "dim O82 = item.option[82].value" writeToVBCode)
(write-line "dim O83 = item.option[83].value" writeToVBCode)
(write-line "dim O84 = item.option[84].value" writeToVBCode)
(write-line "dim O85 = item.option[85].value" writeToVBCode)
(write-line "dim O86 = item.option[86].value" writeToVBCode)
(write-line "dim O87 = item.option[87].value" writeToVBCode)
(write-line "dim O88 = item.option[88].value" writeToVBCode)
(write-line "dim O89 = item.option[89].value" writeToVBCode)
(write-line "dim O90 = item.option[90].value" writeToVBCode)
(write-line "dim O91 = item.option[91].value" writeToVBCode)
(write-line "dim O92 = item.option[92].value" writeToVBCode)
(write-line "dim O93 = item.option[93].value" writeToVBCode)
(write-line "dim O94 = item.option[94].value" writeToVBCode)
(write-line "dim O95 = item.option[95].value" writeToVBCode)
(write-line "dim O96 = item.option[96].value" writeToVBCode)
(write-line "dim O97 = item.option[97].value" writeToVBCode)
(write-line "dim O98 = item.option[98].value" writeToVBCode)
(write-line "dim O99 = item.option[99].value" writeToVBCode)
(write-line "dim O100 = item.option[100].value" writeToVBCode)
(write-line "item.option[identity].value = value" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "else" writeToVBCode)
(write-line "task.message = \"Your dimension or option identification was invalid for this item.\"" writeToVBCode)
(write-line "end if" writeToVBCode)
  (close writeToVBCode)
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (prompt "Your value has been applied to the item(s).")(princ)
  (princ)
(END_ROUTINE));end defun
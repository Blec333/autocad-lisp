;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Fix_Cut_Type (/ sset)
;;;; FCT = Fix Cut Types
(setq sset (ssget "_X" '((0 . "MAPS_SOLID"))));Auto choose selection set
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "select item.CID" writeToVBCode)
(write-line "case 40" writeToVBCode)
(write-line "item.cuttype = \"Spiral Straight\"" writeToVBCode)
(write-line "case 866" writeToVBCode)
(write-line "if item.dim[\"Length\"].value < 56 or item.dim[\"Width\"].value < 1.5 or item.dim[\"Depth\"].value < 1.5 or item.dim[\"Width\"].value > 124 or item.dim[\"Depth\"].value > 124 then" writeToVBCode)
(write-line "item.cuttype = \"Machine Cut\"" writeToVBCode)
(write-line "else" writeToVBCode)
(write-line "item.cuttype = \"Decoiled Straight\"" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "case 166,514,523,555,873,838,910,521,996,505,530,535,580,504,5231,3" writeToVBCode)
(write-line "item.cuttype = \"Equipment\"" writeToVBCode)
(write-line "case 7,20,8,2,330,54,53,807,812,1,17,30,382,861,19,61,818,51,875,751,16,345,51,818,162,68,60,64,31,388,856,5000,382,12,802" writeToVBCode)
(write-line "item.cuttype = \"Machine Cut\"" writeToVBCode)
(write-line "case 522" writeToVBCode)
(write-line "if item.description = \"#2 RND. CPLG. PIPE\" then" writeToVBCode)
(write-line "item.cuttype = \"Draw Only\"" writeToVBCode)
(write-line "else" writeToVBCode)
(write-line "item.cuttype = \"Equipment\"" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "case 902" writeToVBCode)
(write-line "if item.description = \"Access Zone\" then" writeToVBCode)
(write-line "item.cuttype = \"Draw Only\"" writeToVBCode)
(write-line "else" writeToVBCode)
(write-line "item.cuttype = \"Equipment\"" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end select" writeToVBCode)
  (close writeToVBCode)
  (command "pselect" sset "")
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (prompt "All instantiated library cut types have been corrected per standards.")(princ)
  
  (princ)
(END_ROUTINE));end defun
;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Create_DoubleWall_Patterns (/ doublewsset i limit mysnap ent innerPatterns)
  (setq doublewsset (ssget  '((0 . "MAPS_SOLID")));Choose selection set
        i 0
	a "false"
        dwlimit (sslength doublewsset));Set loop limit
    (while (< i dwlimit);Start the Loop
      (setq dwent (ssname doublewsset i)
            dwentlist (entget(ssname doublewsset i))
            dwItemCID (cdr(nth 9 dwentlist)));end setq
      (if (and(= a "false")(or ;set mini loop / condition designator
        (wcmatch dwItemCID "40")
        (wcmatch dwItemCID "866")
        (wcmatch dwItemCID "330")
        (wcmatch dwItemCID "8")
        (wcmatch dwItemCID "30")
        (wcmatch dwItemCID "2")
        (wcmatch dwItemCID "522")
        (wcmatch dwItemCID "802")
        (wcmatch dwItemCID "382")
        (wcmatch dwItemCID "1")
        (wcmatch dwItemCID "505")
        (wcmatch dwItemCID "519")
        (wcmatch dwItemCID "20")
        (wcmatch dwItemCID "17")))
          (progn(setq roofDuct (ssadd); Create ss of patterns
                      firstOuter dwent);end setq
                (ssadd firstOuter roofDuct)
                (setq a "true")
                (setq i (1+ i)));end progn (then) / Add first pattern to ss
          (if (and(= a "true")(or
            (wcmatch dwItemCID "40")
            (wcmatch dwItemCID "866")
            (wcmatch dwItemCID "330")
            (wcmatch dwItemCID "8")
            (wcmatch dwItemCID "30")
            (wcmatch dwItemCID "2")
            (wcmatch dwItemCID "522")
            (wcmatch dwItemCID "802")
            (wcmatch dwItemCID "382")
            (wcmatch dwItemCID "1")
            (wcmatch dwItemCID "505")
            (wcmatch dwItemCID "519")
            (wcmatch dwItemCID "20")
            (wcmatch dwItemCID "17")))
              (progn(setq addOuter dwent)
              (ssadd addOuter roofDuct);end progn (else) / Add subsequent patterns per loop
              (setq i (1+ i)));increment the parent loop
              (if (not(or
                (wcmatch dwItemCID "40")
                (wcmatch dwItemCID "866")
                (wcmatch dwItemCID "330")
                (wcmatch dwItemCID "8")
                (wcmatch dwItemCID "30")
                (wcmatch dwItemCID "2")
                (wcmatch dwItemCID "522")
                (wcmatch dwItemCID "802")
                (wcmatch dwItemCID "382")
                (wcmatch dwItemCID "1")
                (wcmatch dwItemCID "505")
                (wcmatch dwItemCID "519")
                (wcmatch dwItemCID "20")
                (wcmatch dwItemCID "17")))
                  (setq i (1+ i));increment the parent loop
              );end if
	  );end if
      );end if
   );end while
   (if(not(=(sslength roofDuct) nil));If sset isn't empty...
    (progn
      (setq j 0;set the count
            limit (sslength roofDuct);Set loop limit
            mysnap (getvar "osmode");Save snap settings
            );end setq
      (setvar "osmode" 0)
      (command "ucs" "world")
      (while (< j limit);Start the Loop
        (setq ent (ssname roofDuct j)
              entlist (entget(ssname roofDuct j))
              ItemCID (cdr(nth 9 entlist)));end setq
        (command "_.copybase" '(0 0 0) ent "")
        (command "_.pasteclip" '(0 0 0))
        (if (< j 1)
            (progn(setq innerPatterns (ssadd); Create ss of patterns
                        firstPattern (entlast));end setq
            (ssadd firstPattern innerPatterns));end progn (then) / Add first pattern to ss
              (progn(setq addPattern (entlast))
              (ssadd addPattern innerPatterns));end progn (else) / Add subsequent patterns per loop
        );end if
            (setq j (1+ j));increment loop by 1
      );end while
      (setvar "osmode" mysnap)
      (command "pselect" innerPatterns "")
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "dim insGauge = item.insulation.gauge" writeToVBCode)
(write-line "item.alias = \"InsidePattern\"" writeToVBCode)
(write-line "item.insulation.status = \"OFF\"" writeToVBCode)
(write-line "rem Reduce Size and Adjust Length for Inside Pattern" writeToVBCode)
(write-line "if item.CID = 40 or item.CID = 522 then" writeToVBCode)
(write-line "dim length = item.dim[\"Length\"].numvalue - 0.25" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value - (insGauge * 2)" writeToVBCode)
(write-line "item.connector[1].value = \"None\"" writeToVBCode)
(write-line "item.connector[1].locked = true" writeToVBCode)
(write-line "item.connector[2].value = \"None\"" writeToVBCode)
(write-line "item.connector[2].locked = true" writeToVBCode)
(write-line "item.dim[\"Length\"].value = length" writeToVBCode)
(write-line "item.notes = \"Doublewall Inside Pattern\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 866 or item.CID = 802 or item.CID = 30 or item.CID = 382 or item.CID = 1 or item.CID = 505 or item.CID = 519 then" writeToVBCode)
(write-line "dim length = item.dim[\"Length\"].numvalue - 0.25" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value - (insGauge * 2)" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value - (insGauge * 2)" writeToVBCode)
(write-line "item.connector[1].value = \"None\"" writeToVBCode)
(write-line "item.connector[1].locked = true" writeToVBCode)
(write-line "item.connector[2].value = \"None\"" writeToVBCode)
(write-line "item.connector[2].locked = true" writeToVBCode)
(write-line "item.dim[\"Length\"].value = length" writeToVBCode)
(write-line "item.notes = \"Doublewall Inside Pattern\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 20 then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value - (insGauge * 2)" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value - (insGauge * 2)" writeToVBCode)
(write-line "if (wildcard(item.dim[3].value,\"Equal\") = 1) then" writeToVBCode)
(write-line "item.dim[3].value = item.dim[1].value" writeToVBCode)
(write-line "elseif (wildcard(item.dim[3].value,\"Equal\") = 0) then" writeToVBCode)
(write-line "item.dim[3].value = item.dim[3].value - (insGauge * 2)" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "dim ItemCID20Length1 = item.dim[5].value + (insGauge - 0.125)" writeToVBCode)
(write-line "dim ItemCID20Length2 = item.dim[6].value + (insGauge - 0.125)" writeToVBCode)
(write-line "item.connector[1].value = \"None\"" writeToVBCode)
(write-line "item.connector[1].locked = true" writeToVBCode)
(write-line "item.connector[2].value = \"None\"" writeToVBCode)
(write-line "item.connector[2].locked = true" writeToVBCode)
(write-line "item.dim[5].value = ItemCID20Length1" writeToVBCode)
(write-line "item.dim[6].value = ItemCID20Length2" writeToVBCode)
(write-line "item.notes = \"Doublewall Inside Pattern\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 17 then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value - (insGauge * 2)" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value - (insGauge * 2)" writeToVBCode)
(write-line "if (wildcard(item.dim[3].value,\"Equal\") = 1) then" writeToVBCode)
(write-line "item.dim[3].value = item.dim[1].value" writeToVBCode)
(write-line "elseif (wildcard(item.dim[3].value,\"Equal\") = 0) then" writeToVBCode)
(write-line "item.dim[3].value = item.dim[3].value - (insGauge * 2)" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if (wildcard(item.dim[7].value, \"Width\") = 1) then" writeToVBCode)
(write-line "dim length = item.dim[1].numvalue + ((insGauge * 2) - 0.25)" writeToVBCode)
(write-line "item.connector[1].value = \"None\"" writeToVBCode)
(write-line "item.connector[1].locked = true" writeToVBCode)
(write-line "item.connector[2].value = \"None\"" writeToVBCode)
(write-line "item.connector[2].locked = true" writeToVBCode)
(write-line "item.dim[7].value = length" writeToVBCode)
(write-line "elseif (wildcard(item.dim[7].value, \"Half Width\") = 1) then" writeToVBCode)
(write-line "dim length = (item.dim[1].numvalue / 2) + ((insGauge * 2) - 0.25)" writeToVBCode)
(write-line "item.connector[1].value = \"None\"" writeToVBCode)
(write-line "item.connector[1].locked = true" writeToVBCode)
(write-line "item.connector[2].value = \"None\"" writeToVBCode)
(write-line "item.connector[2].locked = true" writeToVBCode)
(write-line "item.dim[7].value = length" writeToVBCode)
(write-line "else" writeToVBCode)
(write-line "dim length = item.dim[7].numvalue + ((insGauge * 2) - 0.25)" writeToVBCode)
(write-line "item.connector[1].value = \"None\"" writeToVBCode)
(write-line "item.connector[1].locked = true" writeToVBCode)
(write-line "item.connector[2].value = \"None\"" writeToVBCode)
(write-line "item.connector[2].locked = true" writeToVBCode)
(write-line "item.dim[7].value = length" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.notes = \"Doublewall Inside Pattern\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 8 then" writeToVBCode)
(write-line "dim length = item.dim[\"Length\"].numvalue - 0.25" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value - (insGauge * 2)" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value - (insGauge * 2)" writeToVBCode)
(write-line "if (wildcard(item.dim[3].value,\"Equal\") = 1) then" writeToVBCode)
(write-line "item.dim[3].value = item.dim[1].value" writeToVBCode)
(write-line "elseif (wildcard(item.dim[3].value,\"Equal\") = 0) then" writeToVBCode)
(write-line "item.dim[3].value = item.dim[3].value - (insGauge * 2)" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.connector[1].value = \"None\"" writeToVBCode)
(write-line "item.connector[1].locked = true" writeToVBCode)
(write-line "item.connector[2].value = \"None\"" writeToVBCode)
(write-line "item.connector[2].locked = true" writeToVBCode)
(write-line "item.dim[\"Length\"].value = length" writeToVBCode)
(write-line "item.notes = \"Doublewall Inside Pattern\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 330 or item.CID = 2 then" writeToVBCode)
(write-line "dim length = item.dim[\"Length\"].numvalue - 0.25" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value - (insGauge * 2)" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value - (insGauge * 2)" writeToVBCode)
(write-line "item.dim[3].value = item.dim[3].value - (insGauge * 2)" writeToVBCode)
(write-line "if (wildcard(item.dim[3].value,\"Equal\") = 1) then" writeToVBCode)
(write-line "item.dim[4].value = item.dim[2].value" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.dim[3].value,\"Equal\") = 0) then" writeToVBCode)
(write-line "item.dim[4].value = item.dim[4].value - (insGauge * 2)" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.connector[1].value = \"None\"" writeToVBCode)
(write-line "item.connector[1].locked = true" writeToVBCode)
(write-line "item.connector[2].value = \"None\"" writeToVBCode)
(write-line "item.connector[2].locked = true" writeToVBCode)
(write-line "item.dim[\"Length\"].value = length" writeToVBCode)
(write-line "item.notes = \"Doublewall Inside Pattern\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.update()" writeToVBCode)
      (close writeToVBCode)
      (Executescript vbCode)
      (vl-file-delete vbCode)
      (removemaptext innerPatterns 127)
      (settext innerPatterns 8 "on")
      (command "pselect" innerPatterns "")
      (princ)
    );end progn
  );end if
(END_ROUTINE));end defun
;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Label_Layout_Points (/)
  ; label points
  (vl-load-com)
  (setvar "cmdecho" 0)
  (c:World_View)
  (print "Are you anchoring strap to rod inserts on this floor?")(princ)(terpri)
  (initget 0 "Yes No")
  (setq decision (getkword "\nChoose: [Yes/No] <No>?:"))
  (if (= decision nil)
    (setq decision "No"))
  (setq sset (ssget "_X" '((0 . "MAPS_SOLID")));Choose selection set
        i 0
	hanger (ssadd)
        pointlocations (ssadd))
  (OUTSIDE_LOOP_VARIABLES sset)
    (while (< i limit);Start the Loop
      (INSIDE_LOOP_VARIABLES sset i)
      (if allHanger (ssadd ent hanger));end if
          (setq i (1+ i));increment the main loop
    );endwhile
  (write-line "if ((wildcard(item.filename,\"*Clevis*\") = 1) or (wildcard(item.filename,\"*rectangular bearer\") = 1) or (wildcard(item.filename,\"Belly Band\") = 1) or (wildcard(item.filename,\"Double Rectangular Floor Mount\")) or (wildcard(item.filename,\"Single Rectangular Floor Mount\")) or (wildcard(item.filename,\"Round Floor Mount\"))) then" writeToVBCode)
  (write-line "item.customdata[2].value = item.option[\"Drop Rod Diameter\"].value" writeToVBCode)
  (write-line "elseif (wildcard(item.filename,\"Wrap Round\")) then" writeToVBCode)
  (write-line "item.customdata[2].value = item.dim[3].value" writeToVBCode)
  (write-line "elseif (wildcard(item.filename,\"Flat Strap (Rectangle)\")) or (wildcard(item.filename,\"Flat Strap (Round)\")) or (wildcard(item.filename,\"Strap Single\")) then" writeToVBCode)
  (write-line "item.customdata[2].value = item.option[\"Bearer Width\"].value" writeToVBCode)
  (write-line "elseif (wildcard(item.filename,\"Angle Roof Support\")) then" writeToVBCode)
  (write-line "item.customdata[2].value = item.dim[\"Angle Size\"].value" writeToVBCode)
  (write-line "end if" writeToVBCode)
(close writeToVBCode)
(if(not(= hanger nil))
    (progn
    (setq h 0
          hsublimit (sslength hanger)
          scaleFactor ".33");end setq
    (while (< h hsublimit);Start the sub loop
      (INSIDE_LOOP_VARIABLES hanger h)
	(if(wcmatch ItemService "*COMBUSTION*")(setq servicePrefix "C-")
          (if(wcmatch ItemService "*EXHAUST*")(setq servicePrefix "E-")
            (if(wcmatch ItemService "*OUTSIDE*")(setq servicePrefix "O-")
              (if(wcmatch ItemService "*RETURN*")(setq servicePrefix "R-")
                (if(wcmatch ItemService "*SUPPLY*")(setq servicePrefix "S-")
                  (if(wcmatch ItemService "*TRANSFER*")(setq servicePrefix "T-")
                  (if(not(or(wcmatch ItemService "*COMBUSTION*")(wcmatch ItemService "*EXHAUST*")(wcmatch ItemService "*OUTSIDE*")(wcmatch ItemService "*RETURN*")(wcmatch ItemService "*SUPPLY*")(wcmatch ItemService "*TRANSFER*")))(setq servicePrefix "")
        ) ) ) ) ) ) );end ifs
      (command "pselect" ent "")
      (executescript vbCode)
      (if(= Automation2 "")
        (executescript vbCode SSentity));end if
      (if(or(wcmatch Automation2 "*.13")(wcmatch Automation2 "*.125"))
        (setq Automation2 "1/8\"")
        (if(wcmatch Automation2 "*.25")
          (setq Automation2 "1/4\"")
          (if(or(wcmatch Automation2 "*.38")(wcmatch Automation2 "*.375"))
            (setq Automation2 "3/8\"")
            (if(wcmatch Automation2 "*.5")
              (setq Automation2 "1/2\"")
              (if(or(wcmatch Automation2 "*.63")(wcmatch Automation2 "*.625"))
                (setq Automation2 "5/8\"")
                (if(wcmatch Automation2 "*.75")
                  (setq Automation2 "3/4\"")
                  (if(or(wcmatch Automation2 "*.88")(wcmatch Automation2 "*.875"))
                    (setq Automation2 "7/8\"")
                    (if(wcmatch Automation2 "1.00")
                      (setq Automation2 "1\"")
      ) ) ) ) ) ) ) );end ifs
    (if singleGravity
      (setq xA c2x
            yA c2y
            zA c2z)
      (if doubleSupportAll
        (setq xA c2x
              yA c2y
              zA c2z
              xB c3x
              yB c3y
              zB c3z)
        (if(wcmatch ItemSourceFileName "Seismic Rectangular")
          (setq xA c4x
                yA c4y
                zA c4z)
          (if(wcmatch ItemSourceFileName "Seismic")
            (setq xA c13x
                  yA c13y
                  zA c13z)
            (if angleSupport
              (setq xA c12x
                    yA c12y
                    zA c12z
                    xB c14x
                    yB c14y
                    zB c14z)
    ) ) ) ) );end ifs
      (if rodSupport
        (setq pointDescription "Ro: ")
        (if strapSupport
          (setq pointDescription "St: ")
          (if seismic
            (setq pointDescription "Se: ")
      ) ) );end ifs
      (if seismic
        (setq AOI "9")
        (setq AOI "6")
      );end if 
      (setq coordinatesA (list xA yA zA)
            coordinatesA+ (list (- xA 3) (+ yA 1) zA));end setq
      (if doubleSupportAll
        (setq coordinatesB (list xB yB zB)
              coordinatesB+ (list (- xB 3) (+ yB 1) zB));end setq
      );end if
      (if(wcmatch pointDescription "St: ")
        (if(= decision "No")
          (setq Description (strcat servicePrefix pointDescription Automation2));end setq
          (setq Description (strcat servicePrefix pointDescription "3/8\""));end setq
        );end if
        (if(wcmatch pointDescription "Se: ")
          (setq Description (strcat servicePrefix pointDescription "1/2"));end setq
          (setq Description (strcat servicePrefix pointDescription Automation2));end setq
      ) );end ifs
      (COMMAND "LAYER" "SET" "_TEXT" "")
      (if doubleSupportAll
        (progn
          (initcommandversion 2)
          (command "._circle" coordinatesA "D" AOI)
          (setq lastent (entlast))
          (ssadd lastent pointlocations)
          (command "._circle" coordinatesB "D" AOI)
          (setq lastent (entlast))
          (ssadd lastent pointlocations)
          (command "-mtext" coordinatesA+ coordinatesA Description "" "")
          (setq lastent (entlast))
	  (command "scale" lastent "" coordinatesA+ scaleFactor)
          (ssadd lastent pointlocations)
          (command "-mtext" coordinatesB+ coordinatesB Description "" "")
          (setq lastent (entlast))
	  (command "scale" lastent "" coordinatesB+ scaleFactor)
          (ssadd lastent pointlocations)
          (initcommandversion 1)
	  );end progn
        (if singleGravitySeismic
          (progn
          (initcommandversion 2)
          (command "._circle" coordinatesA "D" AOI)
          (setq lastent (entlast))
          (ssadd lastent pointlocations)
          (command "-mtext" coordinatesA+ coordinatesA Description "" "")
          (setq lastent (entlast))
	  (command "scale" lastent "" coordinatesA+ scaleFactor)
          (ssadd lastent pointlocations)
          (initcommandversion 1)
	  );end progn
        ) );end ifs 

            (setq h (1+ h));increment the sub loop
      );end while
    );end progn
  );end if
  (vl-file-delete vbCode)
  (command "copyclip" pointlocations "")
  (command "erase" pointlocations "")
  (princ "Layout point location labels are now copied to your clipboard: paste them in a new drawing using \"PO\" (Paste_to_Original_Coordinates)")(terpri)
  (setvar "cmdecho" 1)
  (princ)
(END_ROUTINE));end defun
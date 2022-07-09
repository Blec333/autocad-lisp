;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Improved_Point_Export (/)
  ; IMPROVED POINT EXPORT
  (if(= nestedPointTest nil)
    (progn
      (print "Do you want explode blocks to find nested layout points?")(princ)(terpri)
      (print "1: Yes - Blocked points will be evaluated.")(princ)(terpri)
      (print "2: No - Blocked points are ignored.")(princ)(terpri)
      (initget 0 "Yes No")
      (setq nestedPointTest (getkword "\nChoose: [Yes/No] <No>?:"))
      (if (= nestedPointTest nil)
        (setq nestedPointTest "No")
      );end if
    );end progn
  );end if
  (vl-load-com)
  (OUTSIDE_LOOP_VARIABLES nil)
  (command "_qsave" "")
  (if(not(= dwgLink nil))
    (progn
      (STRING_SPLIT "/" dwgLink)
      (setq folderString (strcat nth0 "/" nth1 "/07)FABRICATION/03) SHEET METAL/"))
      (if(vl-file-directory-p folderString)
        (progn
          (setq pointFileCSVLoc (strcat folderString dwgName "_Coordinates.csv")
                saveBackup (strcat folderString dwgName "_backup_" (rtos month 2 0) "-" (rtos day 2 0) "-" (rtos year 2 0) "@" (rtos hour 2 0) "hr" (rtos minute 2 0) "m" (rtos second 2 0) "s" (rtos milliSecond 2 0) "ms" ".dwg")
          );end setq
          (command "_.save" saveBackup (if(/=(getvar 'cmdactive)0) "_Y") "")(command)
        );progn
        (progn
          (setq pointFileCSVLoc (strcat dwgDirectory dwgName "_Coordinates.csv")
                saveBackup (strcat dwgDirectory dwgName "_backup_" (rtos month 2 0) "-" (rtos day 2 0) "-" (rtos year 2 0) "@" (rtos hour 2 0) "hr" (rtos minute 2 0) "m" (rtos second 2 0) "s" (rtos milliSecond 2 0) "ms" ".dwg")
          );end setq
          (command "_.save" saveBackup (if(/=(getvar 'cmdactive)0) "_Y") "")(command)
        );progn
      );end if
    );progn
  );end if
  (if(= nestedPointTest "Yes")
    (progn
      (setq sset (ssget "_X" '((0 . "INSERT"))))
      (if(not(= sset nil))
        (progn
          (setvar "qaflags" 1)
          (command "explode" sset "")
          (setvar "qaflags" 0)
        );progn
      );end if
    );progn
  );end if
  (if(FILE_OPEN? pointFileCSVLoc)
    (alert(strcat "File(s) currently in use, please close file(s) and try again.\n\nCheck: \n\n" pointFileCSVLoc)); "\n" pointFileTXTLoc))
    (progn
      (setvar "cmdecho" 0)
      ;(print "Do you wish to export floor support leg Center Points, Anchor Points or Both?")(princ)(terpri)
      ;(initget 0 "CenterPoints AnchorPoints Both")
      ;(setq decision (getkword "\nChoose: [CenterPoints/AnchorPoints/Both] <Centerpoints>?:"))
      ;(if(= decision nil)
      (setq decision "CenterPoints")
      ;)
      ;(if(= decision "CenterPoints")
          ;(progn(print "Only anchor plate center points will be exported for floor support.")(princ)(terpri))
        ;(if(= decision "AnchorPoints")
          ;(progn(print "Anchor plate anchor points will be exported for floor support. Center points will not be included.")(princ)(terpri))
          ;(if(= decision "Both")
            ;(progn(print "Both center points and anchor plate anchor points will be exported for floor support.")(princ)(terpri))
      ;) ) );end ifs
      (c:World_View)
      (setvar "cmdecho" 0)
      (setq sset (ssget "_X" '((0 . "MAPS_SOLID")
                               (-4 . "<OR")
                                 (300 . "Flat Strap (Rectangle)")
                                 (300 . "Flat Strap (Oval)")
                                 (300 . "Rectangular Bearer")
                                 (300 . "Wrap Round")
                                 (300 . "Flat Strap (Round)")
                                 (300 . "Belly Band")
                                 (300 . "Floor Supports Angle")
                                 (300 . "Floor Support Angle")
                                 (300 . "Floor Supports Post")
                                 (300 . "Floor Support Post")
                                 (300 . "Floor Supports Angle Round")
                                 (300 . "Floor Support Angle Round")
                                 (300 . "Floor Supports Post Round")
                                 (300 . "Floor Support Post Round")
                                 (300 . "Floor Supports Angle Double")
                                 (300 . "Floor Support Angle Double")
                                 (300 . "Floor Supports Post Double")
                                 (300 . "Floor Support Post Double")
                                 (300 . "Floor Support Angle Single")
                                 (300 . "Floor Support Post Single")
                                 (300 . "Seismic")
                                 (300 . "Equipment Seismic")
                                 (300 . "Strap Single")
                                 (300 . "Rectangular Duct Seismic")
                                 (300 . "Round Duct or Pipe Seismic")
                                 (300 . "Rectangular Seismic")
                                 (300 . "Round Seismic")
                                 (300 . "Misc Seismic")
                                 (300 . "*Clevis*")
                                 (300 . "*Pipe Roll*")
                                 (300 . "Stiffy Fig. 108")
                                 (300 . "Double Rectangular Bearer")
                                 (300 . "REFERENCE POINT")
                                 (300 . "WORK POINT")
                                 (300 . "ANCHOR POINT")
                                 (300 . "CONTROL LINE")
                                 (300 . "EQUIPMENT PAD")
                                 (300 . "FLOOR BLOCKOUT")
                                 (300 . "WALL BLOCKOUT")
                                 (300 . "BLUE BANGER")
                                 (300 . "QUICK BOLT")
                                 (300 . "Wedge Anchor")
                                 (300 . "Strap Insert")
                                 (300 . "Wire Insert")
                                 (300 . "1.0 Insert")
                                 (300 . ".875 Insert")
                                 (300 . ".75 Insert")
                                 (300 . ".625 Insert")
                                 (300 . ".5 Insert")
                                 (300 . ".375 Insert")
                                 (300 . "Supply Blockout")
                                 (300 . "Return-Transfer Blockout")
                                 (300 . "Exhaust Blockout")
                                 (300 . "Round Blockout")
                                 (300 . "EQUIPMENT PAD")
                                 (300 . "FLOOR BLOCK OUT")
                                 (300 . "WALL BLOCK OUT")
                                 (300 . "Insert")
                                 (300 . "1049")
                                 (300 . "838")
                               (-4 . "OR>")));Choose selection set
            i 0);end setq
      (OUTSIDE_LOOP_VARIABLES sset)
      (write-line "if (wildcard(item.filename,\"*Clevis*\") = 1) or (wildcard(item.filename,\"*Pipe Roll*\") = 1) or (wildcard(item.filename,\"*rectangular bearer\") = 1) or (wildcard(item.filename,\"Belly Band\") = 1) or (wildcard(item.filename,\"Double Rectangular Floor Mount\")) or (wildcard(item.filename,\"Single Rectangular Floor Mount\")) or (wildcard(item.filename,\"Round Floor Mount\")) then" writeToVBCode)
      (write-line "item.customdata[2].value = item.option[\"Drop Rod Diameter\"].value" writeToVBCode)
      (write-line "elseif (wildcard(item.filename,\"Flat Strap (Rectangle)\")) or (wildcard(item.filename,\"Flat Strap (Round)\")) or (wildcard(item.filename,\"Flat Strap (Oval)\")) or (wildcard(item.filename,\"Strap Single\")) then" writeToVBCode)
      (write-line "item.customdata[2].value = item.option[\"Bearer Width\"].value" writeToVBCode)
      (write-line "end if" writeToVBCode)
      (write-line "if item.dim[1].numvalue < 0.01 then" writeToVBCode)
      (write-line "item.dim[1].value = 0.01" writeToVBCode)
      (write-line "end if" writeToVBCode)
      (close writeToVBCode)
      (setq pointFileCSV (open pointFileCSVLoc "w"));end setq
      (write-line "POINT NUMBER, Y, X, Z, DESCRIPTION" pointFileCSV)
      (while (< i limit);Start the Loop
        (INSIDE_LOOP_VARIABLES sset i)
        (if(or allSupport trimblePoint blockout roundBlockout (wcmatch(strcase ItemSourceFileName)(strcase "EQUIPMENT PAD"))(wcmatch(strcase ItemSourceFileName)(strcase "FLOOR BLOCK OUT"))(wcmatch(strcase ItemSourceFileName)(strcase "WALL BLOCK OUT")))
          (progn
            (setq itm#A (strcat Item# "A")
                  itm#B (strcat Item# "B")
                  itm#C (strcat Item# "C")
                  itm#D (strcat Item# "D"));end setq
            (executescript vbCode SSentity)
            (INSIDE_LOOP_VARIABLES sset i)
            (if(and(not(= Automation2 ""))(not(= Automation2 nil)))(setq anchorSize (rtos(ROUND(distof Automation2 2)0.125)5))(setq Automation2 ""))
      (if rodSupport
        (setq pointDescription "Rod")
        (if strapSupport
          (setq pointDescription "Strap")
          (if postSupport
            (setq pointDescription "Post FS")
            (if angleSupport
              (setq pointDescription "Ang FS")
              (if seismic
                (setq pointDescription "Seismic" anchorSize "0")
                (if blockout
                  (setq pointDescription ItemSourceFileName)
                  (if roundBlockout
                    (setq pointDescription (strcat ItemSourceFileName " CtrPnt - " (rtos(+ dim1(* dim4 2))) " Dia"))
                    (if trimblePoint
                      (if(or(wcmatch(strcase ItemSourceFileName) "BLUE BANGER")(wcmatch(strcase ItemSourceFileName) "WEDGE ANCHOR"))
                        (setq anchorSize ItemDescription
                              pointDescription ItemSourceFileName)
                        (setq anchorSize "0"
                              pointDescription ItemSourceFileName)
                      );end if
      ) ) ) ) ) ) ) );end ifs
      (if(= pointDescription nil)(setq pointDescription ""))
      (if(or(wcmatch ItemSectionName "None")(wcmatch (strcase ItemLevel) "LEVEL"))
        (setq ItemLevel ""))
      (if(wcmatch ItemLevel "Lower")
        (setq ItemLevel "LL")
        (if(wcmatch ItemLevel "*#*")
          (setq ItemLevel (strcat "L" ItemLevel "_"))
          (setq ItemLevel "")
      ) );end if
      (if(not(=(distof anchorSize) 0))
        (progn
          (setq orgDIMZIN (getvar "DIMZIN"))
          (setvar "DIMZIN" 12)
          (setq pointDescription (strcat pointDescription ": " (rtos(distof anchorSize)2) "''"))
          (setvar "DIMZIN" orgDIMZIN)
        );progn
      );end if
      (if doubleFloorSupport
        (if(= decision "AnchorPoints")
          (progn
            (write-line (strcat "" itm#A "_1, " (rtos yA1 2 7) ", " (rtos xA1 2 7) ", " (rtos zA1 2 7) ", " pointDescription) pointFileCSV)
            (write-line (strcat "" itm#A "_2, " (rtos yA2 2 7) ", " (rtos xA2 2 7) ", " (rtos zA2 2 7) ", " pointDescription) pointFileCSV)
            (write-line (strcat "" itm#A "_3, " (rtos yA3 2 7) ", " (rtos xA3 2 7) ", " (rtos zA3 2 7) ", " pointDescription) pointFileCSV)
            (write-line (strcat "" itm#A "_4, " (rtos yA4 2 7) ", " (rtos xA4 2 7) ", " (rtos zA4 2 7) ", " pointDescription) pointFileCSV)
            (write-line (strcat "" itm#B "_1, " (rtos yB1 2 7) ", " (rtos xB1 2 7) ", " (rtos zB1 2 7) ", " pointDescription) pointFileCSV)
            (write-line (strcat "" itm#B "_2, " (rtos yB2 2 7) ", " (rtos xB2 2 7) ", " (rtos zB2 2 7) ", " pointDescription) pointFileCSV)
            (write-line (strcat "" itm#B "_3, " (rtos yB3 2 7) ", " (rtos xB3 2 7) ", " (rtos zB3 2 7) ", " pointDescription) pointFileCSV)
            (write-line (strcat "" itm#B "_4, " (rtos yB4 2 7) ", " (rtos xB4 2 7) ", " (rtos zB4 2 7) ", " pointDescription) pointFileCSV)
            ;(command "._circle" (list xA1 yA1 zA1) "1" "")
            ;(command "._circle" (list xA2 yA2 zA2) "1" "")
            ;(command "._circle" (list xA3 yA3 zA3) "1" "")
            ;(command "._circle" (list xA4 yA4 zA4) "1" "")
            ;(command "._circle" (list xB1 yB1 zB1) "1" "")
            ;(command "._circle" (list xB2 yB2 zB2) "1" "")
            ;(command "._circle" (list xB3 yB3 zB3) "1" "")
            ;(command "._circle" (list xB4 yB4 zB4) "1" "")
          );end progn
          (if(= decision "CenterPoints")
            (progn
              (write-line (strcat "" itm#A ", " (rtos yA 2 7) ", " (rtos xA 2 7) ", " (rtos zA 2 7) ", " pointDescription " LegCntr") pointFileCSV)
              (write-line (strcat "" itm#B ", " (rtos yB 2 7) ", " (rtos xB 2 7) ", " (rtos zB 2 7) ", " pointDescription " LegCntr") pointFileCSV)
              ;(command "._circle" (list xA yA zA) "2" "")
              ;(command "._circle" (list xB yB zB) "2" "")
            );end progn
            (if(= decision "Both")
              (progn
                (write-line (strcat "" itm#A ", " (rtos yA 2 7) ", " (rtos xA 2 7) ", " (rtos zA 2 7) ", " pointDescription " LegCntr") pointFileCSV)
                (write-line (strcat "" itm#B ", " (rtos yB 2 7) ", " (rtos xB 2 7) ", " (rtos zB 2 7) ", " pointDescription " LegCntr") pointFileCSV)
                ;(command "._circle" (list xA yA zA) "2" "")
                ;(command "._circle" (list xB yB zB) "2" "")
                (write-line (strcat "" itm#A "_1, " (rtos yA1 2 7) ", " (rtos xA1 2 7) ", " (rtos zA1 2 7) ", " pointDescription) pointFileCSV)
                (write-line (strcat "" itm#A "_2, " (rtos yA2 2 7) ", " (rtos xA2 2 7) ", " (rtos zA2 2 7) ", " pointDescription) pointFileCSV)
                (write-line (strcat "" itm#A "_3, " (rtos yA3 2 7) ", " (rtos xA3 2 7) ", " (rtos zA3 2 7) ", " pointDescription) pointFileCSV)
                (write-line (strcat "" itm#A "_4, " (rtos yA4 2 7) ", " (rtos xA4 2 7) ", " (rtos zA4 2 7) ", " pointDescription) pointFileCSV)
                (write-line (strcat "" itm#B "_1, " (rtos yB1 2 7) ", " (rtos xB1 2 7) ", " (rtos zB1 2 7) ", " pointDescription) pointFileCSV)
                (write-line (strcat "" itm#B "_2, " (rtos yB2 2 7) ", " (rtos xB2 2 7) ", " (rtos zB2 2 7) ", " pointDescription) pointFileCSV)
                (write-line (strcat "" itm#B "_3, " (rtos yB3 2 7) ", " (rtos xB3 2 7) ", " (rtos zB3 2 7) ", " pointDescription) pointFileCSV)
                (write-line (strcat "" itm#B "_4, " (rtos yB4 2 7) ", " (rtos xB4 2 7) ", " (rtos zB4 2 7) ", " pointDescription) pointFileCSV)
                ;(command "._circle" (list xA1 yA1 zA1) "1" "")
                ;(command "._circle" (list xA2 yA2 zA2) "1" "")
                ;(command "._circle" (list xA3 yA3 zA3) "1" "")
                ;(command "._circle" (list xA4 yA4 zA4) "1" "")
                ;(command "._circle" (list xB1 yB1 zB1) "1" "")
                ;(command "._circle" (list xB2 yB2 zB2) "1" "")
                ;(command "._circle" (list xB3 yB3 zB3) "1" "")
                ;(command "._circle" (list xB4 yB4 zB4) "1" "")
              );end progn
        ) ) ) );end ifs
        (if doubleHangerSupport
          (progn
            (write-line (strcat "" itm#A ", " (rtos yA 2 7) ", " (rtos xA 2 7) ", " (rtos zA 2 7) ", " pointDescription) pointFileCSV)
            (write-line (strcat "" itm#B ", " (rtos yB 2 7) ", " (rtos xB 2 7) ", " (rtos zB 2 7) ", " pointDescription) pointFileCSV)
            ;(command "._circle" (list xA yA zA) "2" "")
            ;(command "._circle" (list xB yB zB) "2" "")
          );end progn
          (if(or singleHangerSeismic trimblePoint)
            (progn
              (write-line (strcat "" itm#A ", " (rtos yA 2 7) ", " (rtos xA 2 7) ", " (rtos zA 2 7) ", " pointDescription) pointFileCSV)
              ;(write-line (strcat itm#A ", " (rtos yA 2 7) ", " (rtos xA 2 7) ", " (rtos zA 2 7) ", " pointDescription) pointFileTXT)
              ;(command "._circle" (list xA yA zA) "2" "")
            );progn
            (if singleFloorSupport
              (if(= decision "AnchorPoints")
                (progn
                  (write-line (strcat "" itm#A "_1, " (rtos yA1 2 7) ", " (rtos xA1 2 7) ", " (rtos zA1 2 7) ", " pointDescription) pointFileCSV)
                  (write-line (strcat "" itm#A "_2, " (rtos yA2 2 7) ", " (rtos xA2 2 7) ", " (rtos zA2 2 7) ", " pointDescription) pointFileCSV)
                  (write-line (strcat "" itm#A "_3, " (rtos yA3 2 7) ", " (rtos xA3 2 7) ", " (rtos zA3 2 7) ", " pointDescription) pointFileCSV)
                  (write-line (strcat "" itm#A "_4, " (rtos yA4 2 7) ", " (rtos xA4 2 7) ", " (rtos zA4 2 7) ", " pointDescription) pointFileCSV)
                  ;(write-line (strcat itm#A "_1, " (rtos yA1 2 7) ", " (rtos xA1 2 7) ", " (rtos zA1 2 7) ", " pointDescription) pointFileTXT)
                  ;(write-line (strcat itm#A "_2, " (rtos yA2 2 7) ", " (rtos xA2 2 7) ", " (rtos zA2 2 7) ", " pointDescription) pointFileTXT)
                  ;(write-line (strcat itm#A "_3, " (rtos yA3 2 7) ", " (rtos xA3 2 7) ", " (rtos zA3 2 7) ", " pointDescription) pointFileTXT)
                  ;(write-line (strcat itm#A "_4, " (rtos yA4 2 7) ", " (rtos xA4 2 7) ", " (rtos zA4 2 7) ", " pointDescription) pointFileTXT)
                  ;(command "._circle" (list xA1 yA1 zA1) "1" "")
                  ;(command "._circle" (list xA2 yA2 zA2) "1" "")
                  ;(command "._circle" (list xA3 yA3 zA3) "1" "")
                  ;(command "._circle" (list xA4 yA4 zA4) "1" "")
                );end progn
                (if(= decision "CenterPoints")
                  (progn
                    (write-line (strcat "" itm#A ", " (rtos yA 2 7) ", " (rtos xA 2 7) ", " (rtos zA 2 7) ", " pointDescription " LegCntr") pointFileCSV)
                  );end progn
                  (if(= decision "Both")
                    (progn
                      (write-line (strcat "" itm#A ", " (rtos yA 2 7) ", " (rtos xA 2 7) ", " (rtos zA 2 7) ", " pointDescription " LegCntr") pointFileCSV)
                      ;(command "._circle" (list xA yA zA) "2" "")
                      (write-line (strcat "" itm#A "_1, " (rtos yA1 2 7) ", " (rtos xA1 2 7) ", " (rtos zA1 2 7) ", " pointDescription) pointFileCSV)
                      (write-line (strcat "" itm#A "_2, " (rtos yA2 2 7) ", " (rtos xA2 2 7) ", " (rtos zA2 2 7) ", " pointDescription) pointFileCSV)
                      (write-line (strcat "" itm#A "_3, " (rtos yA3 2 7) ", " (rtos xA3 2 7) ", " (rtos zA3 2 7) ", " pointDescription) pointFileCSV)
                      (write-line (strcat "" itm#A "_4, " (rtos yA4 2 7) ", " (rtos xA4 2 7) ", " (rtos zA4 2 7) ", " pointDescription) pointFileCSV)
                    );end progn
              ) ) );end ifs
      ) ) );end ifs
      (if blockout
        (progn
          (write-line (strcat "" itm#A ", " (rtos yA 2 7) ", " (rtos xA 2 7) ", " (rtos zA 2 7) ", " pointDescription) pointFileCSV)
          (write-line (strcat "" itm#B ", " (rtos yB 2 7) ", " (rtos xB 2 7) ", " (rtos zB 2 7) ", " pointDescription) pointFileCSV)
          (write-line (strcat "" itm#C ", " (rtos yC 2 7) ", " (rtos xC 2 7) ", " (rtos zC 2 7) ", " pointDescription) pointFileCSV)
          (write-line (strcat "" itm#D ", " (rtos yD 2 7) ", " (rtos xD 2 7) ", " (rtos zD 2 7) ", " pointDescription) pointFileCSV)
        );progn
          (if roundBlockout
            (progn
              (write-line (strcat "" itm#A ", " (rtos yA 2 7) ", " (rtos xA 2 7) ", " (rtos zA 2 7) ", " pointDescription) pointFileCSV)
              ;(write-line (strcat itm#A ", " (rtos yA 2 7) ", " (rtos xA 2 7) ", " (rtos zA 2 7) ", " pointDescription) pointFileTXT)
              ;(command "._circle" (list xA yA zA) "2" "")
            );progn
      ) );end ifs
      (setq xA nil
            yA nil
            zA nil
            xB nil
            yB nil
            zB nil
            xA1 nil
            yA1 nil
            zA1 nil
            xB1 nil
            yB1 nil
            zB1 nil
            xA2 nil
            yA2 nil
            zA2 nil
            xB2 nil
            yB2 nil
            zB2 nil
            xA3 nil
            yA3 nil
            zA3 nil
            xB3 nil
            yB3 nil
            zB3 nil
            xA4 nil
            yA4 nil
            zA4 nil
            xB4 nil
            yB4 nil
            zB4 nil);end setq
        );end progn
      );end if
            (setq i (1+ i))
    );end while
    (close pointFileCSV)
    ;(close pointFileTXT)
  (terpri)
  (princ (strcat "Check: " pointFileCSVLoc))(princ)(terpri)
  (princ (strcat "Check: " saveBackup))(princ)(terpri)
    );progn
  );end if
  (vl-file-delete vbCode)
  (setvar 'filedia 1)
  (setq nestedPointTest nil)
(END_ROUTINE));end defun
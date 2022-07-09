;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Auto_Text (/)
  (setvar "cmdecho" 0)  
  (print "SELECT - Select your own items.")(princ)(terpri)
  (print "ALL - Auto-selects all items in the current drawing.")(princ)(terpri)
  (initget 0 "Select All")
  (setq decision (getkword "\nChoose: [Select/All] <All>?:"))
  (if(= decision nil)
    (setq decision "All"))
  (if(= decision "Select")
    (progn
      (terpri)(princ "Select items.")(princ)
      (setq i 0
            sset (ssget '((0 . "MAPS_SOLID"))
             ));end setq
    );end progn
    (if(= decision "All")
      (progn
        (setq i 0
              sset (ssget "_X" '((0 . "MAPS_SOLID"))
             ));end setq
        (if(not(= sset nil))
          (progn(terpri)(princ "All drawing items selected; Please choose:")(princ))
        );end if
      );end progn
    );end if
  );end ifs
  (if(= sset nil)
    (progn(terpri)(princ "No items were selected.")(princ))
    (progn
      (terpri)(princ "All - Wipe the slate clean and reset all text.")(princ)
      (terpri)(princ "Reset - Reorganize existing text while adding new text.")(princ)
      (terpri)(princ "New - Leave existing text untouched while adding only new text.")(princ)
      (initget 0 "All Reset New")
      (setq choice (getkword "\nChoose: [All/Reset/New] <New>"))
      (if(= choice nil)
        (setq choice "New"))
    (OUTSIDE_LOOP_VARIABLES sset)
    (if(= choice "All")(removemaptext sset 127));end if
      (while (< i limit);Start the Loop
        (INSIDE_LOOP_VARIABLES sset i)
        (setq coordinateList (list c1x c1y c1z c2x c2y c2z c3x c3y c3z)
              position 1)
        (foreach el coordinateList
          (if(= position 1)(setq varName "c1x")
            (if(= position 2)(setq varName "c1y")
              (if(= position 3)(setq varName "c1z")
                (if(= position 4)(setq varName "c2x")
                  (if(= position 5)(setq varName "c2y")
                    (if(= position 6)(setq varName "c2z")
                      (if(= position 7)(setq varName "c3x")
                        (if(= position 8)(setq varName "c3y")
                          (if(= position 9)(setq varName "c3z")
          ) ) ) ) ) ) ) ) );end ifs
          (if(= el nil)
            (set(read varName)1)
          );end if
          (setq position (1+ position))
	  (princ)
        );foreach
      (if(= c1Width nil)(setq c1Width 1));end if
      (if(= c2Width nil)(setq c2Width 1));end if
      (if(or
        (and(wcmatch ItemSourceFileName "*Rnd*")(wcmatch ItemSourceFileName "*CFSD*"))
        (and(wcmatch ItemSourceFileName "*Round*")(wcmatch ItemSourceFileName "*CFSD*"))
        (and(wcmatch ItemSourceFileName "*Round*")(wcmatch ItemSourceFileName "*Fire Damper*")))
        (setq c1Width (+ c1Width 2)
              c2Width (+ c2Width 2))
      );end if
      (TRIG_MY_POINTS PrimaryPoint c1Width c1Depth SecondaryPoint c2Width c2Depth elevationTagWidth elevationTagDepth sizeTagWidth sizeTagDepth)
    (if(and(or(= choice "All")(= choice "Reset")(and(= choice "New") newItem))(and(or textAdjustmentWarranted) notVerticalPiece (not(= c2x nil))))
      (progn
        (if 2PntSupport
          (setq c1x c3x
                c1y c3y));end setq/if
        (if 1PntSupport
            (setq xDist 0
                  yDist 0));end if
        (if tinyOrShort
          (setq xyzNumb CentralPosDown
                xyzSize side1Pos1
                xyzElev side1Pos3
                xyzAlia corner4Inset
                xyzOffs side1Pos2
                xyzLeng corner1Inset
          );end setq
          (if smallSized
            (setq xyzNumb side2Pos1
                  xyzSize lineCenterPoint
                  xyzElev side1Pos2
                  xyzAlia corner4Inset
                  xyzOffs side1Pos1
                  xyzLeng corner1Inset
            );end setq
            (if mediumSized
              (setq xyzNumb side1Pos1
                    xyzSize CentralPosRight
                    xyzElev CentralPosLeft
                    xyzAlia corner4Inset
                    xyzOffs CentralPosUp
                    xyzLeng corner1Inset
              );end setq
              (if largeSized
                (setq xyzNumb side1Pos1
                      xyzSize CentralPosDown
                      xyzElev CentralPosUp
                      xyzAlia corner4Inset
                      xyzOffs CentralPosUp
                      xyzLeng corner1Inset
                );end setq
        ) ) ) );end ifs
      (if textAdjustmentWarranted
        (progn
          (removemaptext SSentity 127)
          (addtextatpoint 1 ent xyzNumb)
          (addtextatpoint 2 ent xyzSize)
          (addtextatpoint 3 ent xyzElev)
          (addtextatpoint 4 ent xyzAlia)
          (addtextatpoint 5 ent xyzOffs)
          (addtextatpoint 6 ent xyzLeng)
          (settext SSentity 63 "off")
        );end progn
      );end if
    );end progn
  );end if
    (if(or(= choice "All")(and(= choice "New") newItem)(and(= choice "Reset") newItem))
      (progn
      (if(wcmatch (strcase ItemSourceFileName) "FLEX")
        (progn
          (addtextatpoint 2 ent (list (1+ (car SecondaryPoint)) (1+ (cadr SecondaryPoint)) (caddr SecondaryPoint)));Size
          (settext SSentity 2 "on");Size
        );progn
      );end if
      (if addSE
        ;(progn
          (settext SSentity 6 "on")
          ;(command "._circle" xyzElev "1" "")
        ;);progn
	);Size & Elevation Text
        
      (if addLength
        (settext SSentity 32 "on"));Length Text
      (if addOffset
        (settext SSentity 16 "on"));Length & Offset Text
      (if addAlias
        (settext SSentity 8 "on"));Alias Text
      );end progn
    );end if
      (if(and(= choice "Reset")(not newItem))
        (progn
        (if (= NumberToggle "On")
          (settext SSentity 1 "On")
          (settext SSentity 1 "Off"));end if
        (if (= SizeToggle "On")
          (settext SSentity 2 "On")
          (settext SSentity 2 "Off"));end if
        (if (= ElevationToggle "On")
          (settext SSentity 4 "On")
          (settext SSentity 4 "Off"));end if
        (if (= AliasToggle "On")
          (settext SSentity 8 "On")
          (settext SSentity 8 "Off"));end if
        (if (= OffsetToggle "On")
          (settext SSentity 16 "On")
          (settext SSentity 16 "Off"));end if
        (if (= LengthToggle "On")
          (settext SSentity 32 "On")
          (settext SSentity 32 "Off"));end if
        );end progn
      );end if
      ;(command "-mtext" xyzElev (list (car xyzElev)(cadr xyzElev)(caddr xyzElev)) (itoa i) "" "")
      (setq i (1+ i)
            SSentity nil);increment loop by 1
    );end while
  );end progn
);end if
    (if (= choice "All")
      (progn(princ "Applied default text positions to all items in drawing.")(princ)(terpri))
      (if (= choice "Reset")
        (progn(princ "Reset existing text & added text to new items.")(princ)(terpri))
        (if (= choice "New")
          (progn(princ "Ignored existing text & added text to new items.")(princ)(terpri))
  ) ) );end if
  (princ)
(END_ROUTINE));end defun
;|***********************************************************************************************************************************************************************************************************************
FUTURE ADDITIONS:***********************************************************************************************************************************************************************************************************
Square throat lengths
Radius throat size
Elbow angle -- Show if up/down
Explanation of the Trigonometry:
                                                                                                                                                                                            :
                                                            /\                                                                                                                              :
                                                          / 2  \                                                                                                                            :
                                                        /        \                                                                                                                          :
                                                      /            \                            A)Theta                                                                                     :
                                                    /                \                           -Found using arctangent of parent triangle                                                 :
                                                  /                    \                         -With careful use of the laws of Sine, Cosine & Tangent we can exploit the fact that the   :
                                                /                        \                        angle Theta repeats itself in multiple locations on our evaluated item as it's potential  :
                                              /    Offset Distance----> /` \(xyz)                 orientation changes.                                                                      :
                                            /                         /`    |\                  B)Theta complimentary angle - be careful not to associate trig functions with this angle.   :
                                          /                     (4),/`     /|  \                1)xDist** - X value of parent triangle.                                                     :
                                        /                          \,    /  |    \              2)yDist** - Y value of parent triangle.                                                     :
                                      /                              \,  (B)|      \            3)itemLength - Hypontenuse of parent triangle & item length.                               :
                                    /                                /[\    |        \          4)endOffset - Length text offset from right end.                                            :
                                  /                                (B)[  \  |          \        5)lengthTransOffset - Baby triangle hypontenuse; found via a formula based off of width.              :
                                /                                /    [(A) \|            \       -We exploit our knowledge that the width object value will always be                       :
                              /        Baby Triangle----------------> [     |\ (5)         \      perpendicular to the length (or parent hypotenuse).                                       :
                            /                                /     (7)[_    |  \          1/    6)xDistBabyTri - X value of baby triangle (finds actual length drop location).              :
                          /                                           [_|___|____\       /      7)yDistBabyTri - Y value of baby triangle (finds actual length drop location).              :
                        /                                /            *  (6)|    (xy)  /        8)xDistMidTri - X value of the middle triangle (finds origin of the baby triangle).         :
                      /                                               *     |        /          9)yDistMidTri - Y value of the middle triangle (finds origin of the baby triangle).         :
                    /                                /                *     |      /                                                                                                        :
                  /                           (3)                     *     |    /                                                                                                          :
                /                                /                    *     |  /                                                                                                            :
              /                                                    (8)*     |/                                                                                                              :
            /                                /                        *    /|                                                                                                               :
          /                                                           *  /  |(2)                                                                                                            :
        /                                /                            */    |                                                                                                               :
      /                                                              /*     |                                                                                                               :
    /                                /                             /  *     |                                                                                                               :
  /                                                              /    *     |                        Now that we have our foundational variables set, we apply them to the absolute         :
/                                /                             /      *     |                   coordinate system.  Adding and subtracting these values from the absolute c1 & c2           :
\3                                                           /        *     |                   coordinates values provided by the map gives us our desired drop point locations.  With     :
  \                          /                             /          *     |                   these fundamental mathematical principles implemented we can consistently establish a       :
    \                                                    /            *     |                   destination coordinate value that is relative to any item location, position & orientation. :
      \                  /                             /              *     |                                                                                                               :
        \                                            /    Mid Triangle*     |                                                                                                               :
          \          /                             /                  *  ___|Parent Triangle                                                                                                :
            \                                    /                    * |   |                                                                                                               :
              \  / (A)             (9)         /                      * |   |                                                                                                               :
           (xyz)\-*-*-*-*-*-*-*-*-*-*-*-*-*-*/*-*-*-*-*-*-*-*-*-*-*-*-*------                                                                                                               :
                  \                        /   (1)                                                                                                                                          :
                    \                    /                                                                                                                                                  :
                      \                /                                                                                                                                                    :
                        \            /                                                                                                                                                      :
                          \        /                                                                                                                                                        :
                            \ 4  /                                                                                                                                                          :
                              \/                                                                                                                             :
|;
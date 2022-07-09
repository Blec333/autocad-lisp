;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Mark_Support_Point_Locations (/)
  ; label points
  (vl-load-com)
  (setvar "cmdecho" 0)
  (c:World_View)
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
                               (-4 . "OR>")));Choose selection set
        i 0)
  (OUTSIDE_LOOP_VARIABLES sset)
    (while (< i limit);Start the Loop
      (INSIDE_LOOP_VARIABLES sset i)
        (setq AOI "6"
              coordinatesA (list xA yA zA)
              coordinatesB (list xB yB zB)
              pointlocations (ssadd));end setq
      (command "layer" "make" "M-AMC-SUPT-POIN-TLOC-ATIO-NS" "")
      (if doubleSupportAll
        (progn
          (initcommandversion 2)
          (command "._circle" coordinatesA "D" AOI)
          (ssadd (entlast) pointlocations)
          (command "._circle" coordinatesB "D" AOI)
          (ssadd (entlast) pointlocations)
          (initcommandversion 1)
	);end progn
        (if singleGravitySeismic
          (progn
            (initcommandversion 2)
            (command "._circle" coordinatesA "D" AOI)
            (ssadd (entlast) pointlocations)
            (initcommandversion 1)
          );end progn
      ) );end ifs 
            (setq i (1+ i));increment the sub loop
      );end while
  (command "copyclip" pointlocations "")
  (command "pselect" pointlocations "")
  (princ "Layout point location labels are now copied to your clipboard: paste them in a new drawing using \"PO\" (Paste_to_Original_Coordinates) if needed.")(terpri)
  (princ)
(END_ROUTINE))
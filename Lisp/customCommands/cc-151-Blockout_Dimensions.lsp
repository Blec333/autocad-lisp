;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Blockout_Dimensions ()
  ;(setq curUCSORG (getvar 'ucsorg))
  ;(setvar 'ucsorg "0.0 0.0 0.0")
  (if(not(or(= ucsName "WCS")(wcmatch ucsName "_@origin")))
    (progn
      (setq ucsOrg (getvar 'ucsorg)
            ucsXAxis (getvar 'ucsxdir)
            ucsYAxis (getvar 'ucsydir)
            ucsName (getvar 'ucsname)
            ucsAngle (getvar 'ucsaxisang)
      );end setq
      (command "_.UCS" "World" "")
      (command "_.UCS" (list 0 0 0);UCS origin point
                       (list (car ucsXAxis)(cadr ucsXAxis)(caddr ucsXAxis));UCS X axis point
                       (list (car ucsYAxis)(cadr ucsYAxis)(caddr ucsYAxis)) "" "");UCS Y axis point
      (if(not(or(= ucsName nil)(= ucsName "WCS")(= ucsName "")(wcmatch ucsName "_@origin")))
        (command "_.UCS" "Named" "Save" (strcat ucsName "_@origin") "")
      );end if
    );end progn
  );end if
  (setq i 0
        sset (ssget "_X" '((0 . "MAPS_SOLID")(-4 . "<OR")(300 . "Sleeve Rectangular")(300 . "Supply Blockout")(300 . "Return-Transfer Blockout")(300 . "Exhaust Blockout")(-4 . "OR>"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setvar "cmdecho" 0)
  (while(< i limit)
    (INSIDE_LOOP_VARIABLES sset i)
    (if(or(=(strcase ItemSourceFileName)(strcase "Sleeve Rectangular"))
          (=(strcase ItemSourceFileName)(strcase "Supply Blockout"))
          (=(strcase ItemSourceFileName)(strcase "Return-Transfer Blockout"))
          (=(strcase ItemSourceFileName)(strcase "Exhaust Blockout")))
      (progn
	;(setq xPts (list c4x c5x c6x c7x)
        ;      yPts (list c4y c5y c6y c7y)
        ;      leftestX (car xPts)
        ;      upestY (cadr yPts)
        ;);end setq
        ;(foreach elm xPts
        ;  (if(< elm leftestX)
        ;    (setq leftesetX elm)
        ;  );end if
        ;);foreach
        (setq pt1 (list c4x c4y c4z)
              pt2 (list c5x c5y c5z)
              pt3 (list c6x c6y c6z)
        );end setq
        (command "CAL" "translatedPt1=w2u(pt1)")
        (command "CAL" "translatedPt2=w2u(pt2)")
        (command "CAL" "translatedPt3=w2u(pt3)")
        (setvar 'osnapz 1)
        (initcommandversion 1)
        (setq oldCurrentLayer (getvar 'clayer))
        (command "LAYER" "SET" "M-AMC-GDIM-USER" "")
        (initcommandversion 2)
        (TRIG_MY_POINTS translatedPt1 nil nil translatedPt2 nil nil nil nil nil nil)
        (command "._dimlinear" translatedPt1 translatedPt2 side1Pos3)
        (TRIG_MY_POINTS translatedPt2 nil nil translatedPt3 nil nil nil nil nil nil)
        (command "._dimlinear" translatedPt2 translatedPt3 side1Pos3)
        (initcommandversion 1)
        (command "LAYER" "SET" oldCurrentLayer "")
        (setvar 'osnapz 0)
      );progn
    );end if
    (setq i (1+ i))
  );end while
  ;(setvar 'ucsorg curUCSORG)
  (if(not(or(= UCSname nil)(= UCSname "WCS")(= UCSname "")(= UCSname "Unnamed")))
    (command "_.UCS" "Named" "Restore" UCSname "")
    (if(not(= UCSname "_@origin"))
      (command "_.UCS" "Previous" "")
    );end if
  );end if
  (princ)
(END_ROUTINE)
);end defun
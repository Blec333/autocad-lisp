;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Auto_Hatch_FSD ()
  (setq sset (ssget "X" '((0 . "HATCH"))));end setq
  (if (not(= sset nil))
    (command "erase" sset "")
  );end if
  (setq i 0
        sset (ssget "_X" '((0 . "MAPS_SOLID")
                               (-4 . "<OR")
                                 (300 . "Greenheck FSD-212 CFSD (21in Sleeve)")
                                 (300 . "Greenheck FSD-212 CFSD Rnd (21in Product List)")
                                 (300 . "Greenheck FSD-212 CFSD (ADJ Sleeve)")
                                 (300 . "Greenheck FSD-212 CFSD Rnd (ADJ Sleeve)")
                                 (300 . "Fire Damper (Rectangular)")
                                 (300 . "Fire Damper (Round)")
                               (-4 . "OR>"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
        (setq oldOSMode (getvar 'osmode))
        (setvar 'osmode 0)
  (while (< i limit);Start the Loop
    (INSIDE_LOOP_VARIABLES sset i)
      (command "CAL" "translatedC1=w2u(c1xyz)")
      (command "CAL" "translatedC2=w2u(c2xyz)")
      (if(or(wcmatch itemSourceFileName "*Rnd*")(wcmatch itemSourceFileName "*Round*"))
        (setq c1Width (+ c1Width 2)
              c2Width (+ c2Width 2))
      );end if
      (TRIG_MY_POINTS translatedC1 c1Width c1Depth translatedC2 c2Width c2Depth nil nil nil nil)
      (command "pline" corner1 corner2 corner3 corner4 "Close")
      (setq hatchPLine (entlast))
      (command "-hatch" "P" "ANSI37" "18" ThetaDegrees "CO" "4" "." "S" hatchPLine "" "")
      (command "erase" hatchPLine "")
      (setq i (1+ i))
  );end while
      (setq hatchPLine nil)
      (setvar 'osmode oldOSMode)
(END_ROUTINE));end defun
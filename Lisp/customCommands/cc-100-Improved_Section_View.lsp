;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Improved_Section_View ( / a b) 
  ;;;; SV = SECTION VIEW - PICK YOUR SECTION CUT
  (*push-error-using-command*)
  (defun tempError ( msg )
    (if(and(not(= Pt1 nil))(not(= Pt2 nil)))
      (progn
        (command-s "sectional" Pt1 Pt2)
        (setq sset (ssget "X" '((0 . "MAPS_SOLID"))));end setq
        (command-s "._zoom" "object" sset "")
        (command-s "ucs" "view")
        (princ "Standard sectional command utilized after error")
      );end progn
    );end ifs
    (setvar 'osmode oldOSMode)
    (setvar 'autosnap oldAutoSnap)
    (setvar 'orthomode oldOrthoMode)
    (setq *ERROR* oldError
          oldError nil)
    (command-s)(command-s)
    (princ) 
  );end defun
  (OUTSIDE_LOOP_VARIABLES nil)
  (if(= UCSName "Unnamed")(progn(terpri)(princ "Warning: You are in an unnamed USC, double check your viewcube to confirm UCS orientation")(terpri)))
  (setq oldError *ERROR*
        *ERROR* tempError
        oldOSMode (getvar "osmode")
        oldAutoSnap (getvar "autosnap")
        oldOrthoMode (getvar "orthomode"));end setq
  (setvar 'orthomode 0)
  (setvar 'osmode 16384)
  (setvar 'autosnap 47)
  (setvar 'osnapz 0)
  (setq Pt1 nil
        Pt2 nil
        Pt1 (getpoint "\nPick first point: ")
        Pt2 (getpoint Pt1 "\nPick second point: "))
  (setq sset (ssget "_C" Pt1 Pt2 '((0 . "MAPS_SOLID"))))
  (if(not(= sset nil))
    (progn
      (setq i (if(>=(-(sslength sset)1)0)(-(sslength sset)1)(sslength sset)));end setq / if
      (INSIDE_LOOP_VARIABLES sset i)
      (command "SECTIONAL" Pt1 Pt2)
      (command "UCS" "W")
      (command "UCS" "VIEW")
      (command "CAL" "ucsC1xyz=w2u(c1xyz)")
      (command "UCS" "M" (strcat(rtos(car ucsC1xyz)2) "," (rtos(cadr ucsC1xyz)2) "," (rtos(caddr ucsC1xyz)2)))
      (command "CAL" "ucsC1xyz=w2u(c1xyz)")
      (command "._zoom" "object" sset "")
      (princ)
    );end progn
    (progn
      (command "sectional" Pt1 Pt2)
      (setq sset (ssget "X" '((0 . "MAPS_SOLID"))));end setq
      (command "._zoom" "object" sset "")
      (command "ucs" "view")
      (princ "Standard sectional command utilized")
      (princ)
    );end progn
  );end if
  (setvar 'osmode oldOSMode)
  (setvar 'autosnap oldAutoSnap)
  (setvar 'orthomode oldOrthoMode)
  (setq *ERROR* oldError)
  (princ)
(END_ROUTINE));end defun
;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Dimension_at_Elevation ()
  (setvar "cmdecho" 0)
  (command)(command)
  (OUTSIDE_LOOP_VARIABLES nil)
  ;(if(= topSection nil)
  ;  (GET_TOP_SECTION)
  ;);end if
  ;(setq zAdjustment (rtos(+ topSection 1200)2 0)
  ;      zAdjustedUCS (list (list(car(getvar "UCSORG"))(cadr(getvar "UCSORG")) (atoi zAdjustment))(trans (list 1 0 0)1 0)(trans(list 0 1 0)1 0)))
  ;((if command-s command-s vl-cmdf) "_.UCS" "_origin" "_none" (trans(car zAdjustedUCS)0 1) "_none" (trans(cadr zAdjustedUCS)0 1) "_none" (trans(caddr zAdjustedUCS)0 1))
  (setq curOSnap (getvar 'osnapz))
  (setvar 'osnapz 0)
  (setq pt1 nil
        pt2 nil
        dimElev nil
        dimPt1 nil
        dimPt2 nil
        pt1 (getpoint "\nPick first point: "))(terpri)
  (setq orginalOSMode (getvar 'osmode))
  (setq pt2 (getpoint pt1 "\nPick second point: "))(terpri)
  (if(>(caddr pt1)(caddr pt2))
    (setq dimElev (ROUNDUP(caddr pt1)12000))
    (setq dimElev (ROUNDUP(caddr pt2)12000))
  );end if
  (if(= dimElev nil)
    (setq dimElev 12000)
  );end if
  (setq dimPt1 (list (car pt1)(cadr pt1)0)
        dimPt2 (list (car pt2)(cadr pt2)0))
  (initcommandversion 1)
  (setq oldCurrentLayer (getvar 'clayer))
  (command "LAYER" "SET" "M-AMC-GDIM-USER" "")
  (initcommandversion 2)
  (setvar 'osmode (logior (getvar 'osmode) 16384))
  (command "._dimlinear" dimPt1 dimPt2 pause)
  (initcommandversion 1)
  (setvar 'osmode (logior (getvar 'osmode) 16384))
  (command "move" (entlast) "" '(0.0 0.0 0.0) (strcat "@0,0," (rtos dimElev)))
  (setvar 'osmode orginalOSMode)
  (command "LAYER" "SET" oldCurrentLayer "")
  (setvar 'osnapz curOSnap)
  ;(if(not(or(wcmatch UCSname "WCS")(wcmatch UCSname "Unnamed")))
  ;  (command "_.UCS" "Named" "Restore" UCSname "")
  ;  (resetUCS)
  ;);end if
  (princ)
  (END_ROUTINE)
  (command "pselect" (entlast) "")
  );end defun
;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Store_Sections ()
  (setq oldCurrentLayer (getvar "CLAYER"))
  (tblnext "layer" T)
  (while(setq evalLayer (cdr(assoc 2 (tblnext "layer"))))
    (if(wcmatch evalLayer "*FLOR-SECT-HGHT*")
      (setq existingSectionLayerList (append existingSectionLayerList (list evalLayer)))
    );end if
  );end while
  (setq i 0
        sset (ssget "_X" '((0 . "MAPS_SOLID")(-4 . "<OR")(300 . "STRAIGHT")(300 . "*SPIRAL")(-4 . "OR>"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (while(< i limit)
    (INSIDE_LOOP_VARIABLES sset i)
    (setq makeThisLayer T)
    (if(not(= hitlist nil))
      (foreach elmt hitlist
        (if(wcmatch elmt ItemSectionName)
          (setq makeThisLayer nil)
        );end if
      );end foreach
    );end if
    (if(not(= existingSectionLayerList nil))
      (foreach elmt existingSectionLayerList
        (if(wcmatch elmt (strcat "*" (vl-string-subst "-" ": " ItemSectionName) "*"))
          (setq makeThisLayer nil)
        );end if
      );end foreach
    );end if
    (if(and makeThisLayer (not slopedItem)(not(wcmatch ItemSectionName "None")))
      (progn
        (command ".copy" ent "" (list c1x c1y c1z) (list c1x c1y 0))
        (setq itemCopy (ssadd (entlast))
              hitlist (append hitlist (list ItemSectionName)))
        (settext itemCopy 4 "on")
        (command "explode" itemCopy)
        (setq debris (ssget "_P")
              floorSection (+ (/ c1depth 2)(FORCE_POSITIVE (distof(cdr(assoc 1 (entget(entnext(ssname(ssget "P" '((2 . "ELEV")))0)))))))))
        (command "erase" debris "")
        (setq ItemSectionLayerName (strcat "M-AMC-FLOR-SECT-HGHT-(" (vl-string-subst "-" ": " ItemSectionName) ")-[" (rtos floorSection 2 0) "]"))
        (command "_.layer" "_make" ItemSectionLayerName "lock" ItemSectionLayerName "")
      );end progn
    );end if
    (setq i (1+ i))
  );end while
  (setvar "CLAYER" oldCurrentLayer)
  (setq evalLayer nil
        existingSectionLayerList nil
        i nil
        sset nil
        makeThisLayer nil
        hitlist nil
        itemCopy nil
        debris nil
        floorSection nil
        ItemSectionLayerName nil)
  (princ)
);end defun
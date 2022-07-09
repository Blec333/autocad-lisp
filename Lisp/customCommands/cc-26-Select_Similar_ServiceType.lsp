;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Select_Similar_ServiceType ()
  (prompt "\nSelect source item:")
  (setq i 0
        sset (ssget ":S"))
  (OUTSIDE_LOOP_VARIABLES nil)
  (if(not(= sset nil))
    (progn
      (INSIDE_LOOP_VARIABLES sset i)
      (if(wcmatch entGraphicID "INSERT")
        (setq sset (ssget "_X" '((0 . "INSERT"))))
        (if(wcmatch entGraphicID "MAPS_SOLID")
	  (progn
            (setq ServiceTypeComparison ItemServiceType
                  newset (ssadd)
                  sset (ssget "_X" '((0 . "MAPS_SOLID"))))
            (OUTSIDE_LOOP_VARIABLES sset)
            (while(< i limit)
              (INSIDE_LOOP_VARIABLES sset i)
              (if(and(not(= ItemServiceType nil))(wcmatch ItemServiceType ServiceTypeComparison))
                (ssadd ent newset)
              );end if
              (setq i (1+ i))
            );end while
          );progn
        );end if
      );end if
      (command "pselect" newset "")
      (princ)
    );progn
  );end if
);end defun
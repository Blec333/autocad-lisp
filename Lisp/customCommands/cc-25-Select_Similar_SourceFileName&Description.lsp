;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Select_Similar_SourceFileName&Description ()
  (prompt "\nSelect source item:")
  (setq i 0
        sset (ssget ":S"))
  (OUTSIDE_LOOP_VARIABLES nil)
  (INSIDE_LOOP_VARIABLES sset i)
  (if(wcmatch entGraphicID "INSERT")
    (setq sset (ssget "_X" '((0 . "INSERT"))))
    (if(wcmatch entGraphicID "MAPS_SOLID")
      (setq sset (ssget "X" (list (cons -4 "<AND")(cons 300 ItemSourceFileName)(cons 300 ItemDescription)(cons -4 "AND>"))))
    );end if
  );end if
  (command "pselect" sset "")
  (princ)
);end defun
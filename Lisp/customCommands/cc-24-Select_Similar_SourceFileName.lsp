;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Select_Similar_SourceFileName ()
  (prompt "\nSelect source item:")
  (setq i 0
        sset (ssget ":S"))
  (OUTSIDE_LOOP_VARIABLES nil)
  (INSIDE_LOOP_VARIABLES sset i)
  (if(and(wcmatch entGraphicID "INSERT")(wcmatch(cdr(nth 10 entlist))"*TAGS*"))
    (setq sset (ssget "_X" '((0 . "INSERT")
                            (-4 . "<OR")
                              (8 . "M-TAGS-RTRN")
                              (8 . "M-TAGS-BLCK")
                              (8 . "M-TAGS-CBST")
                              (8 . "M-TAGS-EQPM")
                              (8 . "M-TAGS-EWLD")
                              (8 . "M-TAGS-EXHA")
                              (8 . "M-TAGS-OUTA")
                              (8 . "M-TAGS-SPLY")
                              (8 . "M-TAGS-XFER")
                            (-4 . "OR>"))))
    (if(and(wcmatch entGraphicID "INSERT")(not(wcmatch(nth 10 entlist)"*TAGS*")))
      (setq sset (ssget "_X" '((0 . "INSERT"))))
      (if(wcmatch entGraphicID "MAPS_SOLID")
        (setq sset (ssget "X" (list (cons 300 ItemSourceFileName))))
      );end if
    );end if
  );end if
  (if(not(= sset nil))(command "pselect" sset "")(progn(terpri)(princ "No matches found")))
  (princ)
);end defun
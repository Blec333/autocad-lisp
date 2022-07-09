;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Add_Tags ()
  (c:World_View)
  (Sleep_OSnap)
  (setq oldCurLay (getvar 'clayer)
        i 0
        sset (ssget "_X" '((0 . "MAPS_SOLID")
                            (-4 . "<OR")
                              (300 . "Diffusers")
                              (300 . "Rectangular Diffusers")
                              (300 . "Grille&Louver")
                              (300 . "Linear Diffusers")
                              (300 . "Fan Coil Unit")
                              (300 . "Inline Exhaust Fan")
                              (300 . "Upblast Exhaust Fan")
                              (300 . "Downblast Exhaust Fan")
                              (300 . "Ductless Fan Coil")
                              (300 . "Air Filtration System")
                            (-4 . "OR>")
                          )
             );end ssget
  );end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (while(< i limit)
    (INSIDE_LOOP_VARIABLES sset i)
    (setq tagIDtext Tag_ID
          tagIDINFOtext CFM/ID#2
          tagTOPNOTEStext ""
          tagBOTNOTEStext "")
    (initcommandversion 1)
    (setq anAirDevice (or
                      (wcmatch ItemSourceFileName "Diffusers")
                      (wcmatch ItemSourceFileName "Rectangular Diffusers")
                      (wcmatch ItemSourceFileName "Linear Diffusers")
                      (wcmatch ItemSourceFileName "Grille&Louver"))
          isEquipment (or
                      (wcmatch (strcase ItemSourceFileName) "FAN COIL UNIT")
                      (wcmatch (strcase ItemSourceFileName) "INLINE EXHAUST FAN")
                      (wcmatch (strcase ItemSourceFileName) "UPBLAST EXHAUST FAN")
                      (wcmatch (strcase ItemSourceFileName) "DUCTLESS FAN COIL")
                      (wcmatch (strcase ItemSourceFileName) "AIR FILTRATION SYSTEM"))
    );end setq
    (if(and(wcmatch (strcase ItemService) "*RETURN*")(not(wcmatch (strcase ItemService) "*WELD*")) anAirDevice)
      (progn
        (command "LAYER" "SET" "M-AMC-TAGS-RTRN" "")
        (setq tagLOOKUP1text "Return Air Tag"
              tagServicetext "R/A")
      );end progn
      (if(and(wcmatch (strcase ItemService) "*SUPPLY*")(not(wcmatch (strcase ItemService) "*WELD*")) anAirDevice)
        (progn
          (command "LAYER" "SET" "M-AMC-TAGS-SPLY" "")
          (setq tagLOOKUP1text "Supply Air Tag"
                tagServicetext "S/A")
        );end progn
        (if(and(wcmatch (strcase ItemService) "*EXHAUST*")(not(wcmatch (strcase ItemService) "*WELD*")) anAirDevice)
          (progn
            (command "LAYER" "SET" "M-AMC-TAGS-EXHA" "")
            (setq tagLOOKUP1text "Exhaust Air Tag"
                  tagServicetext "E/A")
          );end progn
          (if(and(wcmatch (strcase ItemService) "*OUTSIDE*")(not(wcmatch (strcase ItemService) "*WELD*")) anAirDevice)
            (progn
              (command "LAYER" "SET" "M-AMC-TAGS-OUTA" "")
              (setq tagLOOKUP1text "Outside Air Tag"
                    tagServicetext "O/A")
            );end progn
            (if(and(wcmatch (strcase ItemService) "*COMBUSTION*")(not(wcmatch (strcase ItemService) "*WELD*")) anAirDevice)
              (progn
                (command "LAYER" "SET" "M-AMC-TAGS-CBST" "")
                (setq tagLOOKUP1text "Combustion Air Tag"
                      tagServicetext "C/A")
              );end progn
              (if(and(wcmatch (strcase ItemService) "*TRANSFER*")(not(wcmatch (strcase ItemService) "*WELD*")) anAirDevice)
                (progn
                  (command "LAYER" "SET" "M-AMC-TAGS-XFER" "")
                  (setq tagLOOKUP1text "Transfer Air Tag"
                        tagServicetext "T/A")
                );end progn
                (if(and(wcmatch (strcase ItemService) "*EXHAUST*")(wcmatch (strcase ItemService) "*WELD*") anAirDevice)
                  (progn
                    (command "LAYER" "SET" "M-AMC-TAGS-EWLD" "")
                    (setq tagLOOKUP1text "Exhaust Air Tag"
                          tagServicetext "E/A")
                  );end progn
                  (if isEquipment
                    (progn
                      (command "LAYER" "SET" "M-AMC-TAGS-EQPM" "")
                      (setq tagLOOKUP1text "Equipment Tag"
                            tagServicetext "")
                    );end progn
    ) ) ) ) ) ) ) );end ifs
    (if anAirDevice
      (progn
        (if(and(wcmatch ItemDescription "*Rct Nck")(wcmatch (strcase ItemSourceFileName) "DIFFUSERS"))
          (setq tagSIZE1text (strcat (rtos(ROUND c1Width 1) 2 0) " x " (rtos(ROUND c1Depth 1) 2 0))
                tagSIZE2text (strcat (rtos(ROUND c2Width 1) 2 0) " x " (rtos(ROUND c2Depth 1) 2 0)))
          (if(and(wcmatch ItemDescription "*Rd Nck")(wcmatch (strcase ItemSourceFileName) "DIFFUSERS"))
            (setq tagSIZE1text (strcat (rtos(ROUND c5Width 1) 2 0) "~")
                  tagSIZE2text (strcat (rtos(ROUND c2Width 1) 2 0) " x " (rtos(ROUND c2Depth 1) 2 0)))
            (if(and(wcmatch ItemDescription "*Rct Nck")(wcmatch (strcase ItemSourceFileName) "RECTANGULAR DIFFUSERS"))
              (setq tagSIZE1text (strcat (rtos(ROUND dim2 1) 2 0) " x " (rtos(ROUND dim3 1) 2 0))
                    tagSIZE2text (strcat (rtos(ROUND dim7 1) 2 0) " x " (rtos(ROUND dim8 1) 2 0)))
              (if(and(wcmatch ItemDescription "*Rd Nck")(wcmatch (strcase ItemSourceFileName) "RECTANGULAR DIFFUSERS"))
                (setq tagSIZE1text (strcat (rtos(ROUND dim2 1) 2 0) "~")
                      tagSIZE2text (strcat (rtos(ROUND dim7 1) 2 0) " x " (rtos(ROUND dim8 1) 2 0)))
                (if(wcmatch ItemSourceFileName "Linear Diffusers")
                  (setq tagSIZE1text (strcat (rtos(ROUND c1Width 1) 2 0) "~")
                        tagSIZE2text (strcat (rtos(ROUND c2Width 1) 2 0) " x " (rtos(ROUND c2Depth 1) 2 0)))
                  (if(wcmatch ItemDescription "Round*")
                    (setq tagSIZE1text (strcat (rtos(ROUND c12Width 1) 2 0) "~")
                          tagSIZE2text "")
                    (if(wcmatch (strcase ItemSourceFileName) "GRILLE&LOUVER")
                      (setq tagSIZE1text (strcat (rtos(ROUND c1Width 1) 2 0) " x " (rtos(ROUND c1Depth 1) 2 0))
                            tagSIZE2text "")
                    );end if
                  );end if
                );end if
              );end if
            );end if
          );end if
        );end if
      );progn
      (if(or(wcmatch (strcase ItemSourceFileName) "FAN COIL UNIT")(wcmatch (strcase ItemSourceFileName) "INLINE EXHAUST FAN")(wcmatch (strcase ItemSourceFileName) "AIR FILTRATION SYSTEM"))
        (setq tagSIZE1text (strcat (rtos(ROUND c5Width 1) 2 0) " x " (rtos(ROUND c5Depth 1) 2 0))
              tagSIZE2text (strcat (rtos(ROUND c6Width 1) 2 0) " x " (rtos(ROUND c6Depth 1) 2 0)))
        (if(or(wcmatch (strcase ItemSourceFileName) "UPBLAST EXHAUST FAN")(wcmatch (strcase ItemSourceFileName) "DOWNBLAST EXHAUST FAN"))
          (setq tagSIZE1text (strcat (rtos(ROUND c1Width 1) 2 0) " x " (rtos(ROUND c1Depth 1) 2 0))
                tagSIZE2text "")
          (if(wcmatch (strcase ItemSourceFileName) "DUCTLESS FAN COIL")
            (setq tagSIZE1text ""
                  tagSIZE2text "")
    ) ) ) );end ifs
      (initcommandversion 2)
      (setvar 'attdia 0)
      (setvar 'attreq 0)
      (command "_.-insert" block_TagLink (list (+ (if(not(= c2x nil))c2x c1x) (+ 23 (if(not(= c2Depth nil))(/ c2Depth 2)1))) (- (if(not(= c2y nil))c2y c1y) (+ 8 (if(not(= c2Width nil))(/ c2Width 2)1))) (ROUNDUP (if(not(= c2z nil))c2z c1z) 12000)) "" "")
      (setvar 'attdia 1)
      (setvar 'attreq 1)
      (if(= tagIDtext nil)
        (setq tagIDtext "")
      );end if
      (if(= tagIDINFOtext nil)
        (setq tagIDINFOtext "")
      );end if
      (if(= tagTOPNOTEStext nil)
        (setq tagTOPNOTEStext "")
      );end if
      (if(= tagSIZE1text nil)
        (setq tagSIZE1text "")
      );end if
      (if(= tagSIZE2text nil)
        (setq tagSIZE2text "")
      );end if
      (if(= tagBOTNOTEStext nil)
        (setq tagBOTNOTEStext "")
      );end if
      (if(= tagLOOKUP1text nil)
        (setq tagLOOKUP1text "")
      );end if
      (CHANGE_ENTLAST_ATTRIBUTE "ID" tagIDtext)
      (CHANGE_ENTLAST_ATTRIBUTE "IDINFO" tagIDINFOtext)
      (CHANGE_ENTLAST_ATTRIBUTE "TOPNOTES" "")
      (CHANGE_ENTLAST_ATTRIBUTE "SIZE1" tagSIZE1text)
      (CHANGE_ENTLAST_ATTRIBUTE "SIZE2" tagSIZE2text)
      (CHANGE_ENTLAST_ATTRIBUTE "BOTNOTES" "")
      (CHANGE_ENTLAST_ATTRIBUTE "$/A" tagServicetext)
      ;(SET_ENTLAST_PROPERTY "Lookup1" tagLOOKUP1text)
    (setq i (1+ i))
  );end while
  (initcommandversion 1)
  (command "LAYER" "SET" oldCurrent "")
  (Wake_OSnap)
  (princ)
);end defun
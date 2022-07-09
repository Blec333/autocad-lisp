;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Import_Xref_on_Custom_Layer ( / )
  (OUTSIDE_LOOP_VARIABLES nil)
  (setq chosenFileLink (getfiled "Please select an external reference file" jobDirectory "dwg" 0))
  (if(not(= chosenFileLink nil))
    (progn
      (setq oldCurLayer (getvar "CLAYER"))
      (command "ucs" "world")
      (command "_xattach" chosenFileLink)
      (setq xrefName (strcase(cdr(assoc 2(entget(entlast))))))
      (STRING_SPLIT "\\" chosenFileLink)
      (setq folderList lst
            importLayer nil)
      (foreach el lst
        (if(wcmatch(strcase el)"*SHEET METAL*")
          (setq importLayer "3-XREF-SHMT")
          (if(wcmatch(strcase el)"*PLUMBING*")
            (setq importLayer "1-XREF-PLMB")
            (if(wcmatch(strcase el)"*MECH PIPING*")
              (setq importLayer "2-XREF-PIPE")
              (if(wcmatch(strcase el)"*XREFS*")
                (foreach elm lst
                  (if(wcmatch(strcase el)"*ARCH*")
                    (if(wcmatch xrefName "*GRID*")
                      (setq importLayer "9-XREF-GRID")
                      (setq importLayer "4-XREF-ARCH")
                    );end if
                  (if(wcmatch(strcase el)"*STRC*")
                    (setq importLayer "5-XREF-STRU")
                  (if(wcmatch(strcase el)"*ELEC*")
                    (setq importLayer "6-XREF-ELEC")
                  (if(wcmatch(strcase el)"*FIRE*")
                    (setq importLayer "7-XREF-FIRE")
                  (if(wcmatch(strcase el)"*WALL*")
                    (setq importLayer "4-XREF-ARCH")
                  (if(wcmatch(strcase el)"*CIVIL*")
                    (setq importLayer "4-XREF-ARCH")
                  (if(wcmatch(strcase el)"*PTUBE*")
                    (setq importLayer "8-XREF-USER")
                  (if(wcmatch(strcase el)"*LAB*")
                    (setq importLayer "8-XREF-USER")
                  ) ) ) ) ) ) ) );end ifs
                );foreach
        ) ) ) )
      );foreach
      (if(= importLayer nil)
        (if(or(wcmatch xrefName "*ARCH*")(wcmatch xrefName "*FLOOR*")(and(wcmatch xrefName "*ROOF*")(wcmatch xrefName "*PLAN*"))(wcmatch xrefName "*RCP*")(wcmatch xrefName "*CEILING*"))
          (progn
            (setq importLayer "4-XREF-ARCH")
            (command "-layer" "set" importLayer "lock" importLayer "")
          );progn
          (if(wcmatch xrefName "*GRID*")
            (progn
              (setq importLayer "9-XREF-GRID")
              (command "-layer" "set" importLayer "lock" importLayer "")
            );progn
            (progn
              (setq importLayer (strcat "-XREF-" xrefName))
              (command "-layer" "make" importLayer "lock" importLayer "")
            );progn
          );end if
        );end if
      );end if
      (setq update_current_layer (getvar "Clayer"))
      (setq updateXrefLayer (subst(cons 8 importLayer)(assoc 8(entget(entlast)))(entget(entlast))))
      (entmod updateXrefLayer)
      (setvar "CLAYER" oldCurLayer)
      (RESET_UCS)
    );progn
  );end if
(END_ROUTINE));end defun
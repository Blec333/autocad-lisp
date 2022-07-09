;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Create_2D (/)
  ; CREATE A 2D OF THE DRAWING
  (vl-load-com)
  (OUTSIDE_LOOP_VARIABLES sset)
  (setvar "cmdecho" 0)
  (if(= scaleTest ni
	l)
    (progn
      (print "Do you want your 2D drawing scaled down?")(princ)(terpri)
      (print "1: Yes - Drawing will be scaled.")(princ)(terpri)
      (print "2: No - Drawing will not be scaled.")(princ)(terpri)
      (initget 0 "Yes No")
      (setq scaleTest (getkword "\nChoose: [Yes/No] <No>?:"))
      (if(= scaleTest nil)
        (setq scaleTest "No")
      );end if
    );end progn
  );end if
  (command "_qsave" "")
  (if(not(= dwgLink nil))
    (progn
      (STRING_SPLIT "/" dwgLink)
      (setq folderString (strcat nth0 "/" nth1 "/07)FABRICATION/03) SHEET METAL/"))
      (if(vl-file-directory-p folderString)
        (progn
          (setq 2DFileName (vl-string-translate "/" "\\" (strcat folderString dwgName "_2D.dwg"))
                saveBackup (vl-string-translate "/" "\\" (strcat folderString dwgName "_C2D;Backup_" (rtos month 2 0) "-" (rtos day 2 0) "-" (rtos year 2 0) "@" (rtos hour 2 0) ";" (rtos minute 2 0) ";" (rtos second 2 0) ";" (rtos milliSecond 2 0) ".dwg"))
          );end setq
          (command "_.save" saveBackup (if(/=(getvar 'cmdactive)0) "_Y") "")(command)
        );progn
        (progn
          (setq 2DFileName (vl-string-translate "/" "\\" (strcat dwgDirectory dwgName "_2D.dwg"))
                saveBackup (vl-string-translate "/" "\\" (strcat dwgDirectory dwgName "_C2D;Backup_" (rtos month 2 0) "-" (rtos day 2 0) "-" (rtos year 2 0) "@" (rtos hour 2 0) ";" (rtos minute 2 0) ";" (rtos second 2 0) ";" (rtos milliSecond 2 0) ".dwg"))
          );end setq
          (command "_.save" saveBackup (if(/=(getvar 'cmdactive)0) "_Y") "")(command)
        );progn
      );end if
    );progn
  );end if
  (setvar 'filedia 0)
  (vla-saveas(vla-get-ActiveDocument(vlax-get-Acad-Object))2DFileName)
  (c:World_View)
  (command "-purge" "R" "*" "N")
  (command "-purge" "Z" "")
  (setq purgeCount 0
        purgeLimit 10);end setq
  (while (< purgeCount purgeLimit)
    (command "-purge" "a" "*" "n")
    (setq purgeCount (1+ purgeCount));end setq
  );end while
  (command "_layer" "_unlock" "*" "")(command)
      (setq xrefBlock (tblnext "BLOCK" T))
      (while xrefBlock
        (setq xrefBlockName (cdr(assoc 2 xrefBlock)))
        (if
          (and
            (=(logand(cdr(assoc 70 xrefBlock))32)32)
            (=(logand(cdr(assoc 70 xrefBlock))4)4)
          );and
          (progn
            (vl-cmdf "bindtype" "1")
            (vl-cmdf "_.xref" "_unload" xrefBlockName)
            (vl-cmdf "_.xref" "_reload" xrefBlockName)
            (vl-cmdf "_.xref" "_bind" xrefBlockName)
          );progn
          (vl-cmdf "_.xref" "_detach" xrefBlockName)
        );end if
        (setq xrefBlock (tblnext "BLOCK"))
      ); end while
      (vlax-for block
        (vla-get-Blocks
          (vla-get-ActiveDocument (vlax-get-acad-object))
        );vla-get-blocks
        (or
          (wcmatch (vla-get-Name block) "`**_Space*")
          (vla-put-explodable block :vlax-true)
        );or
      );vlax-for
      (setq sset (ssget "_X" '((0 . "INSERT"))))
      (if(not(= sset nil))
        (progn
          (setvar "qaflags" 1)
          (command "explode" sset "")
          (setvar "qaflags" 0)
        );progn
      );end if
      (setq sset (ssget "_X" '((0 . "MAPS_SOLID")))
            i 0);end setq
  (if(not(= sset nil))
    (progn
      (removemaptext sset 127)
      (while (< i limit);Start the Loop
        (INSIDE_LOOP_VARIABLES sset i)
        (if(or allHanger (not(or(wcmatch (strcase ItemService) "*COMBUSTION*")
                                (wcmatch (strcase ItemService) "*EXHAUST*")
                                (wcmatch (strcase ItemService) "*OUTSIDE*")
                                (wcmatch (strcase ItemService) "*RETURN*")
                                (wcmatch (strcase ItemService) "*SUPPLY*")
                                (wcmatch (strcase ItemService) "*TRANSFER*"))))
          (command "erase" SSEntity "")
        );end if
        (setq i (1+ i))
      );end while
      (command "create2d" sset "")
      (command "erase" sset "")
    );progn
    (princ "No 3D item found in the drawing")
  );end if
  (setq sset (ssget "X"))
  (if(not(= sset nil))
    (progn
      (command "pselect" sset "")
      (SUPERFLATTEN)
      (command "-purge" "R" "*" "N")
      (command "-purge" "Z" "")
      (setq purgeCount 0
            purgeLimit 10);end setq
      (while (< purgeCount purgeLimit)
        (command "-purge" "a" "*" "n")
        (setq purgeCount (1+ purgeCount));end setq
      );end while
      (setq sset (ssget "_X"))
      (command "-overkill" "")
      (command "-overkill" "")
      (if(wcmatch scaleTest "Yes")
        (command "scale" sset "" "0,0,0" "0.083333")
        (setq scaleTest nil)
      );end if
      (command "planview")
      (setvar 'filedia 1)
      (setvar "cmdecho" 1)
      (command "_qsave" "")
      (terpri)(princ (strcat "Check: " 2DFileName))(princ)
      (terpri)(princ (strcat "Check: " saveBackup))(princ)(terpri)
    );progn
    (princ "This is an empty drawing...")
  );end if
  (setq scaleTest nil)
  (princ)
(END_ROUTINE));end defun
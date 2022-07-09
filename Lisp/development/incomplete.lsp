;REMEMBER TO ADD CADmep20_1x64.arx;**************************************************************************************************************************************************
;Invalid layer control characters: < > / \ " '' : ; ? * | , = '
;|




(ssget)

(ssget '((0 . "MAPS_SOLID")))

(ssget "X" '((0 . "MAPS_SOLID")))

(ssget "X")

(ssget "X" '((0 . "INSERT")))

(ssget "X" (list '(0 . "INSERT") (cons 8 "*LEVE*")))

(ssget "X" '((0 . "POINT")))

(progn
(setq i 0
      sset (ssget "X" '((0 . "MAPS_SOLID"))));end setq
(OUTSIDE_LOOP_VARIABLES sset)
(INSIDE_LOOP_VARIABLES sset i)
(TRIG_MY_POINTS PrimaryPoint c1Width c1Depth SecondaryPoint c2Width c2Depth elevationTagWidth elevationTagDepth sizeTagWidth sizeTagDepth)
)

(progn
(setq i 0
      sset (ssget));end setq
(OUTSIDE_LOOP_VARIABLES sset)
(INSIDE_LOOP_VARIABLES sset i)
(TRIG_MY_POINTS PrimaryPoint c1Width c1Depth SecondaryPoint c2Width c2Depth elevationTagWidth elevationTagDepth sizeTagWidth sizeTagDepth)
)

(defun c:asdf ()
  (setq i 0
        sset (ssget "X" '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (while(< i limit)
    (INSIDE_LOOP_VARIABLES sset i)
    (TRIG_MY_POINTS PrimaryPoint c1Width c1Depth SecondaryPoint c2Width c2Depth elevationTagWidth elevationTagDepth sizeTagWidth sizeTagDepth)
    
    (setq i (1+ i))
  );end while
(END_ROUTINE));end defun

(setq i 0
      sset (ssget "X" '((0 . "MAPS_SOLID"))));end setq
(setq snapReset T)
(OUTSIDE_LOOP_VARIABLES sset)
(while(< i limit)
  (INSIDE_LOOP_VARIABLES sset i)
  (TRIG_MY_POINTS PrimaryPoint c1Width c1Depth SecondaryPoint c2Width c2Depth elevationTagWidth elevationTagDepth sizeTagWidth sizeTagDepth)
  (command "._circle" lineCenterPoint "1.25" "")
  (command "._circle" CentralPosUp "1" "")
  (command "._circle" CentralPosDown "1" "")
  (command "._circle" CentralPosLeft "1" "")
  (command "._circle" CentralPosRight "1" "")
  (command "._circle" side1 "0.25" "")
  (command "._circle" side2 "0.5" "")
  (command "._circle" side1Pos1 "0.25" "")
  (command "._circle" side1Pos2 "0.5" "")
  (command "._circle" side1Pos3 "0.75" "")
  (command "._circle" side2Pos1 "0.25" "")
  (command "._circle" side2Pos2 "0.5" "")
  (command "._circle" side2Pos3 "0.75" "")
  (command "._circle" corner1 "0.25" "")
  (command "._circle" corner2 "0.5" "")
  (command "._circle" corner3 "0.75" "")
  (command "._circle" corner4 "1" "")
  (command "._circle" corner1Inset "0.125" "")
  (command "._circle" corner2Inset "0.125" "")
  (command "._circle" corner3Inset "0.125" "")
  (command "._circle" corner4Inset "0.125" "")
  (setq i (1+ i))
);end while


  (command "._circle" xyLL "1" "")
  (command "._circle" xyUR "1" "")
    (getvar 'hpname)
    (getvar 'hpscale)
    (getvar 'hpang)
(command (takeoff "Q:/PM Shared/Libraries/Common/RECT/RECT SERVICE/STRAIGHT.ITM" "" "") (list 0 0 0) "")

 (if (/= (getvar "wscurrent") "My Workspace")
  (progn
    (command "wscurrent" "My Workspace")
    (princ "\n\"My Workspace\" set as the current Workspace. ")
   )
)


(getenv "LogOnServer")
(getvar "loginname")
(getenv "USERNAME")
(getenv "COMPUTERNAME")






      (setq PMShared "B:/PM Shared/")
      (acet-ini-set mapINILoc "PROGRAM PATHS" "Backup" (strcat PMShared "Backup"))
      (acet-ini-set mapINILoc "PROGRAM PATHS" "Database" (strcat PMShared "Database"))
      (acet-ini-set mapINILoc "PROGRAM PATHS" "Project" (strcat PMShared "Project"))
      (acet-ini-set mapINILoc "PROGRAM PATHS" "Reports" (strcat PMShared "Reports"))
      (acet-ini-set mapINILoc "PROGRAM PATHS" "Images" (strcat PMShared "Images"))
      (acet-ini-set mapINILoc "PROGRAM PATHS" "Items" (strcat PMShared "Libraries"))
      (acet-ini-set mapINILoc "PROGRAM PATHS" "Scripts" (strcat PMShared "Scripts"))
      (acet-ini-set mapINILoc "PROGRAM PATHS" "Profiles" (strcat PMShared "Profiles"))
      (acet-ini-set mapINILoc "PROGRAM PATHS" "Download" (strcat PMShared "DOWNLOAD"))
      (acet-ini-set mapINILoc "PROGRAM PATHS" "Common" "./COMMON")
      (acet-ini-set mapINILoc "PROGRAM PATHS" "Textures" "./TEXTURES")
      (acet-ini-set mapINILoc "PROGRAM PATHS" "Main" PMShared)





(vlax-ldata-put "sections" "section1" "section testing1212")



|;



















;|

  (setq orgDIMZIN (getvar "DIMZIN"))
  (setvar "DIMZIN" 12)
  
  (setvar "DIMZIN" orgDIMZIN)



(getvar 'worlducs)
(getvar 'ucsaxisang)



(vl-load-com)
(setq aco (vlax-get-acad-object));acad object
(setq doc (vla-get-activedocument aco));active document
(setq aucs (vla-get-activeucs));active ucs
(setq origin (vla-get-origin aucs));variant value of origin point
(setq xvector (vla-get-xvector aucs));variant value of x vector
;;ucs world xvector is variant-3d-point equivalent of (1.0 0.0 0.0)
(setq yvector (vla-get-yvector aucs));variant value of y vector
;;ucs world yvector is variant-3d-point equivalent of (0.0 1.0 0.0)


(setq origin (vla-get-origin (vla-get-activeucs)))
(setq xvector (vla-get-xvector (vla-get-activeucs)))
(setq yvector (vla-get-yvector (vla-get-activeucs)))


(vla-get-UserCoordinateSystems (vla-get-activedocument (vlax-get-acad-object)))
(setq wcs (vla-item (vla-get-UserCoordinateSystems (vla-get-activedocument (vlax-get-acad-object))) 0))
(vla-item (vla-get-UserCoordinateSystems (vla-get-activedocument (vlax-get-acad-object))) 0)
  
(vl-bt)
(vla-put-activeucs (vla-item (vla-get-UserCoordinateSystems (vla-get-activedocument (vlax-get-acad-object))) 0))

(vla-getucsmatrix
(vla-item (vla-get-usercoordinatesystems
(vla-get-activedocument
(vlax-get-acad-object)))"<*WORLD*>"))
(vla-getucsmatrix
(vla-get-activeucs(vla-get-activedocument...))

(defun WCS2UCSMatrix ()
(vlax-tmatrix
(append
(mapcar
'(lambda (vector origin)
(append (trans vector 0 1 t) (list origin))
)
(list '(1 0 0) '(0 1 0) '(0 0 1))
(trans '(0 0 0) 1 0)
)
(list '(0 0 0 1))
)
)
)
(vlax-SafeArray->List (vlax-Variant-Value (WCS2UCSMatrix)));View the matrix:

(defun C:BATCH(/ dwgs LSP_NAME DATA_NAME)
  (setq dwgs '("C:/A.DWG" "C:/B.DWG" "C:/C.DWG" "C:/D.DWG")
        LSP_NAME "c:/tmp.lsp"
        DATA_NAME "c:/dwgs.tmp"
  );end setq
  (CREATE_DRAWING_LIST DATA_NAME dwgs)
  (PROCESS_NEXT_DRAWING DATA_NAME LSP_NAME "(CREATE_CIRCLE)" T T)
  (princ)
);end defun


(defun CREATE_CIRCLE()
  (command "_.CIRCLE" "10,10,0" "5")
);end defun


(defun CREATE_DRAWING_LIST(data dwgs / writeToVBCode dwg)
  (setq writeToVBCode (open DATA_NAME "w"))
  (foreach dwg dwgs
    (write_line dwg writeToVBCode));foreach
  (close writeToVBCode)
);end defun


(defun GET_NEXT_DRAWING(data / dwg dwgs writeToVBCode)
  (setq writeToVBCode (open data "r")
        dwgs '());setq
  (while (setq dwg (read_line writeToVBCode))
    (setq dwgs (cons dwg dwgs))
  );end while
  (close writeToVBCode)
  (if (> (length dwgs) 0)
    (progn
      (setq dwgs (reverse dwgs)
            dwg (car dwgs)
            dwgs (cdr dwgs));setq
      (setq writeToVBCode (open data "w"))
      (foreach dwg dwgs
        (write_line dwg writeToVBCode)
      );foreach
      (close writeToVBCode)
    );progn
  );end if
  dwg
);end defun


(defun PROCESS_NEXT_DRAWING(data lsp func save first / scr)
  (setq scr "c:/tmp.scr")
  (if (not first)
    (progn
      (eval (read func))
      (if save
        (command "_.QSAVE")
      );end if
    );progn
  );end if
  (setq dwg (GET_NEXT_DRAWING data))
  (if dwg
    (progn
      (CREATE_SCRIPT scr data dwg lsp save first)
      (command "_.SCRIPT" scr)
    );progn
    (progn
      (VL_FILE_DELETE data)
      (VL_FILE_DELETE scr)
      (command "_.CLOSE")
    );progn
  );end if
);end defun


(defun CREATE_SCRIPT(scr data dwg lsp save first / writeToVBCode)
  (setq writeToVBCode (open scr "w"))
  (if (not first)
  (write_line "_.CLOSE" writeToVBCode))
  (write_line (strcat "_.OPEN \"" dwg "\"") writeToVBCode)
  (write_line (strcat "(load \"" lsp "\")") writeToVBCode)
  (write_line (strcat "(PROCESS_NEXT_DRAWING \"" data "\" \"" lsp "\" \"" func "\" " (if save "T" "nil") " nil)")f)
  (close writeToVBCode)
  (princ)
);end defun


  ;Create data file containing the DWG names
;Get the first drawing from the list, removing it
  ;Read in the whole list of DWGs
  ;Reverse the list, take the head and write
  ;back the remainder to the file
;Process the current drawing and use a script to open
;the next one in the list
  ;We only want to run the function if not the first
  ;time called... the same for save
  ;Get the next DWG name from the file
  ;If there is one, create a script to open it, reload
  ;the application and process our function
    ;For the last drawing we simply close it and
    ;delete the now_empty data file
;Create a script to close the current drawing and
;open the next, calling back to our process function
;(after having loaded the file that defines it)









; xreftree.lsp prints xref treeview to file
(princ"\nLoading Command Line XrefTree...")
(defun c:XrefTree ( / GetXrefNesting PrintNestedList outputfile fopen)

  (defun *error*(msg)(if fopen (close fopen)))

    (defun GetXrefNesting (/ GetXrefInfo tempData tempEnt XrefList NonNestedXrefList NestedXrefList )
        
        (defun GetXrefInfo ( ent / NestList )
            (foreach i (member '(102 . "{BLKREFS") (entget ent))
                (if (equal (car i) 332)
                    (progn
                        (setq NestedList (cons (cdr i) NestedList))
                        (setq NestList
                            (cons
                                (cons
                                    (cdr i)
                                    (GetXrefInfo (cdr i))
                                )
                                NestList
                            )
                        )
                    )
                )
            )
            NestList
        )
        ;-------------------------------------
        
        (while (setq tempData (tblnext "block" (not tempData)))
            (if (equal (logand (cdr (assoc 70 tempData)) 4) 4)
                (progn
                    (setq tempEnt (tblobjname "block" (cdr (assoc 2 tempData))))
                    (setq tempEnt (cdr (assoc 330 (entget tempEnt))))
                    (setq XrefList
                        (cons
                            (cons
                                tempEnt
                                (GetXrefInfo tempEnt)
                            )
                            XrefList
                        )
                    )
                )
            )
        )
        (foreach i XrefList
            (if (not (member (car i) NestedList))
                (setq NonNestedXrefList (cons i NonNestedXrefList))
            )
        )
        NonNestedXrefList
    )
    ;------------------------------------------------
    (defun PrintNestedList ( lst spc )
        (foreach i
            (vl-sort lst (function (lambda ( a b ) (< (strcase (cdr (assoc 2 (entget (car a))))) (strcase (cdr (assoc 2 (entget (car b)))))))))
            (write-line (strcat spc " Nested xref: " (cdr (assoc 2 (entget (car i)))) " --> " (cdr(assoc 1 (tblsearch"BLOCK"(cdr (assoc 2 (entget (car i)))))))) fopen)
;            (prompt (strcat "\n" spc " Nested xref: " (cdr (assoc 2 (entget (car i))))))
            (PrintNestedList (cdr i) (strcat "  |" spc))
        )
    )
    ;-----------------------------------------------------
    (setq outputfile
     (strcat
      (getvar 'dwgprefix)
      (vl-filename-base (getvar 'dwgname))
      ".txt"
     )
    )
    (setq fopen (open outputfile "w"))
    (write-line (strcat "Drawing Name --> " (getvar 'dwgprefix) (vl-filename-base (getvar 'dwgname)) ".dwg") fopen)
    (write-line "  |" fopen)
    (foreach i
	(vl-sort (GetXrefNesting) (function (lambda ( a b ) (< (strcase (cdr (assoc 2 (entget (car a))))) (strcase (cdr (assoc 2 (entget (car b)))))))))
        (write-line (strcat " Main xref: " (cdr(assoc 2 (entget (car i)))) " --> " (cdr(assoc 1 (tblsearch"BLOCK"(cdr(assoc 2 (entget (car i)))))))) fopen)
;        (prompt (strcat "\n Main xref: " (cdr (assoc 2 (entget (car i))))))
        (PrintNestedList (cdr i) "  |  |-")
    )
    (close fopen)
    (startapp "notepad.exe" outputfile)
    (princ)
); defun
(princ"\n...Loaded.  To Start Command type:  XrefTree.")(princ)



(setq XR (vla-Item (vla-get-name CurObj)))
(if (= (vla-get-isxref blk) :vlax-true)
(if (= T (wcmatch XR "*PWR*"))
(vla-put-Name CurObj "DEMO")
);end if
);end if
(ssdel CurEnt CurSet)
);end while
);end if






(defun c:asdf ()
  (setq i 0
        sset (ssget "X" '((0 . "INSERT"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (command "_.-layer" "_unlock" "*" "")
  (while(< i limit)
    (INSIDE_LOOP_VARIABLES sset i)
    
    (setq xrefName (vla-get-name vla))
    (if(wcmatch (strcase xrefname) "*ARCH*")


    
(if (= (vla-get-isxref blk) :vlax-true)
(if (= T (wcmatch XR "*PWR*"))
(vla-put-Name CurObj "DEMO")
);end if
);end if
(ssdel CurEnt CurSet)
);end while
);end if
    (setq i (1+ i))
  );end while
(END_ROUTINE));end defun







(defun c:ReloadLoadedXrefs (/ EntData)

(vlax-for i (vla-get-Blocks (vla-get-ActiveDocument (vlax-get-Acad-Object)))
(if
(and
(= (vla-get-IsXref i) :vlax-true)
(setq EntData (entget (tblobjname "block" (vla-get-Name i))))
(= (logand 32 (cdr (assoc 70 EntData))) 32)
)
(vla-Reload i)
)
)
(princ)
)








  (setq sset (ssget "_X" '((-4 . "<AND")(0 . "MAPS_SOLID")(300 . "0")(-4 . "<NOT")(300 . "MAPS_SOLID")(-4 . "NOT>")(-4 . "AND>"))));end setq
  (if(not(= sset nil))
    (progn
      (initget 0 "Yes No")
      (setq conversionAnswer (getkword "\nRevit(Cadduct) Items located in drawing; use of command \"COVERT3DMODEL\" recommended. Apply conversion to relevant items?: [Yes/No] <No>:"))
      (if(= conversionAnswer nil)
        (setq conversionAnswer "No")
      );end if
    );progn
  );end if
  (if(not(= conversionAnswer "No"))
    (progn
      (if(>(sslength sset)1)
        (progn
          (terpri)(princ "Dialogue: Answer YES to converting each object individually and YES to deleting the original models.")(terpri)
          (command "CONVERT3DMODEL" sset "")
        );progn
        (progn
          (terpri)(princ "Dialogue: Answer YES to deleting the original model.")(terpri)
          (command "CONVERT3DMODEL" sset "")
        );progn
      );end if
    );progn
  );end if
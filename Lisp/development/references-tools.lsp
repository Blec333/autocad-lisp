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







(defun c:asdf ()
  (setq i 0
        sset (ssget "X" '((0 . "INSERT"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (command "_.-layer" "_unlock" "*" "")
  (while(< i limit)
    (INSIDE_LOOP_VARIABLES sset i)
    
    (setq xrefName (vla-get-name vla))
    (if(wcmatch (strcase xrefname) "*ARCH*")


    
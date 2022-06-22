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
(defun c:DWG_Batch_Process ()
  (vl-load-com)
  (vl-doc-set 'acadObj (vlax-get-acad-object))
  (vl-doc-set 'acadDocs (vla-get-documents(vlax-get-acad-object)))
  (vl-doc-set 'activeDoc (vla-get-ActiveDocument acadObj))
  (vl-doc-set 'searchFolder (ACET-UI-PICKDIR "Select dwg location to update" "f:"))
  (vl-doc-set 'dwgs (RETRIEVE_FILEPATHS "*.dwg" searchFolder))
  (vl-doc-set 'startDWG (vla-item(vla-get-documents(vlax-get-acad-object))0))
  (vl-doc-set 'startDWGName (vla-get-name(vla-item(vla-get-documents(vlax-get-acad-object))0)))
  ;(vl-doc-set 'dwg (nth 0 dwgs))
  (vl-propagate 'acadObj)
  (vl-propagate 'acadDocs)
  (vl-propagate 'activeDoc)
  (vl-propagate 'searchFolder)
  (vl-propagate 'dwgs)
  (vl-propagate 'startDWG)
  (vl-load-all LocationLCC)
  (OUTSIDE_LOOP_VARIABLES nil)
  (vl-propagate 'scriptProcess)
  (setq writeToScript (open scriptProcess "w"));end setq
  (write-line "(END_ROUTINE)" writeToScript)
  (close writeToScript)
  (foreach dwg dwgs
    (vl-doc-set 'currentdwg dwg)
    (vl-propagate 'currentdwg)
    (if(FILE_OPEN? dwg)
      (princ (strcat dwg " - was skipped because it was open."))
      (progn
        (vla-activate (vla-open acadDocs dwg :vlax-false))
        (setq evalDWG (vla-item acadDocs (strcat(vl-filename-base currentdwg)(vl-filename-extension currentdwg))))
        (command "._script" scriptProcess)
        (vla-activate startDWG)
        (vla-close evalDWG :vlax-true)
      );progn
    );end if
  );foreach
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun FILE_OPEN? (file / fileTest)
  (cond((setq fileTest (open file "a"))
        (close fileTest)))
        (not fileTest)
);end defun
;**************************************************************************************************************************************************
(defun Setup_LCC ( / aliasList aListLength i j lspLine commandList commandListLength commandsWithoutAliases commandsWithAliases commandTest matchFound aliasTest cmdwAliasesLength cmdwoAliasesLength cmdAlias cmd file pgpLine aliasTestPositive aliasLinetxt writeAliasLine addedLine addedLineCount)
  (setq writeToACADDoc (open (vl-string-translate "\\" "/" ACADDocLink) "w"))
  (if(not(= writeToACADDoc nil))
    (progn
      (if(= LocationLCC nil)(setq LocationLCC " "))
(write-line "(vl-load-com)" writeToACADDoc)
(write-line "(setvar 'cmdecho 0)" writeToACADDoc)
(write-line (strcat "(vl-load-all \""  (if(not(wcmatch LocationLCC masterLSPLink))(vl-string-translate "\\" "/" LocationLCC)(vl-string-translate "\\" "/" masterLSPLink)) "\")") writeToACADDoc)
(write-line "(GIVE_ME_STARTUP_CODE)" writeToACADDoc)
(write-line "(Delete_TextDummy_Layer&Items)" writeToACADDoc)
(write-line "(c:Fix_Variables)" writeToACADDoc)
(write-line "(terpri)" writeToACADDoc)
(write-line "(princ \"ACADDoc Loaded\")(terpri)" writeToACADDoc)
(write-line "(princ)" writeToACADDoc)
(close writeToACADDoc)
    );progn
  );end if
(setq supportPaths (getenv "ACAD")
      plotStylePaths (getenv "PrinterStyleSheetDir")
      templateFolderPath (vlax-get (setq fileOptions (vlax-get (vlax-get (vlax-get-acad-object)"Preferences") "Files")) "templatedwgpath")
      saveAsType (vla-get-saveastype (vla-get-opensave (vla-get-preferences (vlax-get-acad-object)))))
(if(not(wcmatch supportPaths (strcat "*" customProgramsDirectory "*")))
  (progn
    (setenv "ACAD" (strcat supportPaths ";" customProgramsDirectory "\\..."))
    (setq supportPaths (getenv "ACAD"))
  );end progn
);end if
(if(not(wcmatch supportPaths (strcat "*" customFontsDirectory "*")))
  (progn
    (setenv "ACAD" (strcat supportPaths ";" customFontsDirectory "\\..."))
    (setq supportPaths (getenv "ACAD"))
  );end progn
);end if
(if(not(wcmatch supportPaths (strcat "*" publicDirectory "*")))
  (progn
    (setenv "ACAD" (strcat supportPaths ";" publicDirectory "\\..."))
    (setq supportPaths (getenv "ACAD"))
  );end progn
);end if
(if(not(wcmatch supportPaths (strcat "*" ACADDocDirectory "*")))
  (progn
    (setenv "ACAD" (strcat supportPaths ";" ACADDocDirectory "\\..."))
    (setq supportPaths (getenv "ACAD"))
  );end progn
);end if
(if(not(wcmatch supportPaths (strcat "*" customBlocksDirectory "*")))
  (progn
    (setenv "ACAD" (strcat supportPaths ";" customBlocksDirectory "\\..."))
    (setq supportPaths (getenv "ACAD"))
  );end progn
);end if
(if(not(wcmatch templateFolderPath (strcat "*" customACADTemplateDirectory "*")))
  (vlax-put fileOptions "templatedwgpath" customACADTemplateDirectory)
);end if
(if(not(= saveAsType 60))
  (vla-put-saveastype (vla-get-opensave (vla-get-preferences (vlax-get-acad-object))) 60)
);end if
(setenv "QnewTemplate" customACADTemplateLink)
(setenv "CmdHistLines" "2048")
(command "trustedpaths" (strcat ACADDocDirectory "\\...;" customProgramsDirectory "\\...;" publicDirectory "\\...") "")
(setvar 're-init 16)
(setq CDDetailPath (FIND_FILE "CDDetail.MAP" curFabPath)
      CADINFOPath (FIND_FILE "CADINFO.MAP" curFabPath)
      FOLDERSINIPath (FIND_FILE "FOLDERS.INI" curFabPath)
      FOLDERSMAPPath (FIND_FILE "FOLDERS.MAP" curFabPath)
);end setq
(if(not(= CDDetailPath nil))
  (progn
    (if(or(and(not(=(FIND_FILE "CDDetail_Backup.MAP" curFabPath)nil))(not(=(FIND_FILE "CDDetail_Original.MAP" curFabPath)nil))(not(= CDDetailPath nil)))
          (and(=(FIND_FILE "CDDetail_Backup.MAP" curFabPath)nil)(not(=(FIND_FILE "CDDetail_Original.MAP" curFabPath)nil))(not(= CDDetailPath nil))))
      (progn
        (vl-file-delete (strcat curFabPath "CDDetail_Backup.MAP"))
        (vl-file-rename CDDetailPath (strcat curFabPath "CDDetail_Backup.MAP"))
        (vl-file-copy (vl-string-translate "\\" "/" (strcat databaseFilesDirectory "\\CDDetail.MAP")) CDDetailPath)
      );progn
        (if(and(=(FIND_FILE "CDDetail_Original.MAP" curFabPath)nil)(not(= CDDetailPath nil)))
          (progn
            (vl-file-rename CDDetailPath (strcat curFabPath "CDDetail_Original.MAP"))
            (vl-file-copy (strcat curFabPath "CDDetail_Original.MAP") (strcat curFabPath "CDDetail_Backup.MAP"))
            (vl-file-copy (vl-string-translate "\\" "/" (strcat databaseFilesDirectory "\\CDDetail.MAP")) CDDetailPath)
          );progn
  ) ) )
  (vl-file-copy(vl-string-translate "\\" "/" (strcat databaseFilesDirectory "\\CDDetail.MAP"))(strcat curFabPath "CDDetail.MAP"))
);end ifs
(if(not(= CADINFOPath nil))
  (progn
    (if(or(and(not(=(FIND_FILE "CADINFO_Backup.MAP" curFabPath) nil))(not(=(FIND_FILE "CADINFO_Original.MAP" curFabPath) nil))(not(= CADINFOPath nil)))
          (and(=(FIND_FILE "CADINFO_Backup.MAP" curFabPath) nil)(not(=(FIND_FILE "CADINFO_Original.MAP" curFabPath) nil))(not(= CADINFOPath nil))))
      (progn
        (vl-file-delete (strcat curFabPath "CADINFO_Backup.MAP"))
        (vl-file-rename CADINFOPath (strcat curFabPath "CADINFO_Backup.MAP"))
        (vl-file-copy (vl-string-translate "\\" "/" (strcat databaseFilesDirectory "\\CADINFO.MAP")) CADINFOPath)
      );progn
        (if(and(=(FIND_FILE "CADINFO_Original.MAP" curFabPath) nil)(not(= CADINFOPath nil)))
          (progn
            (vl-file-rename CADINFOPath (strcat curFabPath "CADINFO_Original.MAP"))
            (vl-file-copy (strcat curFabPath "CADINFO_Original.MAP") (strcat curFabPath "CADINFO_Backup.MAP"))
            (vl-file-copy (vl-string-translate "\\" "/" (strcat databaseFilesDirectory "\\CADINFO.MAP")) CADINFOPath)
          );progn
  ) ) )
  (vl-file-copy(vl-string-translate "\\" "/" (strcat databaseFilesDirectory "\\CADINFO.MAP"))(strcat curFabPath "CADINFO.MAP"))
);end if
(if(not(= FOLDERSINIPath nil))
  (progn
    (if(or(and(not(=(FIND_FILE "FOLDERS_Backup.INI" curFabPath) nil))(not(=(FIND_FILE "FOLDERS_Original.INI" curFabPath) nil))(not(= FOLDERSINIPath nil)))
          (and(=(FIND_FILE "FOLDERS_Backup.INI" curFabPath) nil)(not(=(FIND_FILE "FOLDERS_Original.INI" curFabPath) nil))(not(= FOLDERSINIPath nil))))
      (progn
        (vl-file-delete (strcat curFabPath "FOLDERS_Backup.INI"))
        (vl-file-rename FOLDERSINIPath (strcat curFabPath "FOLDERS_Backup.INI"))
        (vl-file-copy (vl-string-translate "\\" "/" (strcat databaseFilesDirectory "\\FOLDERS.INI")) FOLDERSINIPath)
      );progn
        (if(and(=(FIND_FILE "FOLDERS_Original.INI" curFabPath) nil)(not(= FOLDERSINIPath nil)))
          (progn
            (vl-file-rename FOLDERSINIPath (strcat curFabPath "FOLDERS_Original.INI"))
            (vl-file-copy (strcat curFabPath "FOLDERS_Original.INI") (strcat curFabPath "FOLDERS_Backup.INI"))
            (vl-file-copy (vl-string-translate "\\" "/" (strcat databaseFilesDirectory "\\FOLDERS.INI")) FOLDERSINIPath)
          );progn
  ) ) )
  (vl-file-copy (vl-string-translate "\\" "/" (strcat databaseFilesDirectory "\\FOLDERS.INI")) (strcat curFabPath "FOLDERS.INI"))
);end if
(if(not(= FOLDERSMAPPath nil))
  (progn
    (if(or(and(not(=(FIND_FILE "FOLDERS_Backup.MAP" curFabPath) nil))(not(=(FIND_FILE "FOLDERS_Original.MAP" curFabPath) nil))(not(= FOLDERSMAPPath nil)))
          (and(=(FIND_FILE "FOLDERS_Backup.MAP" curFabPath) nil)(not(=(FIND_FILE "FOLDERS_Original.MAP" curFabPath) nil))(not(= FOLDERSMAPPath nil))))
      (progn
        (vl-file-delete (strcat curFabPath "FOLDERS_Backup.MAP"))
        (vl-file-rename FOLDERSMAPPath (strcat curFabPath "FOLDERS_Backup.MAP"))
        (vl-file-copy (vl-string-translate "\\" "/" (strcat databaseFilesDirectory "\\FOLDERS.MAP")) FOLDERSMAPPath)
      );progn
        (if(and(=(FIND_FILE "FOLDERS_Original.MAP" curFabPath)nil)(not(= FOLDERSMAPPath nil)))
          (progn
            (vl-file-rename FOLDERSMAPPath (strcat curFabPath "FOLDERS_Original.MAP"))
            (vl-file-copy (strcat curFabPath "FOLDERS_Original.MAP") (strcat curFabPath "FOLDERS_Backup.MAP"))
            (vl-file-copy (vl-string-translate "\\" "/" (strcat databaseFilesDirectory "\\FOLDERS.MAP")) FOLDERSMAPPath)
          );progn
  ) ) )
  (vl-file-copy (vl-string-translate "\\" "/" (strcat databaseFilesDirectory "\\FOLDERS.MAP"))(strcat curFabPath "FOLDERS.MAP"))
);end if
(if(not(wcmatch plotStylePaths (strcat "*" customPlotstylesDirectory "*")))
  (setenv "PrinterStyleSheetDir" (strcat plotStylePaths "; " customPlotstylesDirectory))
);end if

  ;|
(if(not(=(getenv "FIRSTSETUPCOMPLETED")"TRUE"))
  (progn
    (setq originalPGP (strcat aliasDirectory "/" aliasName "_Backup.pgp")
          setupDate (rtos(getvar "CDATE") 2 8)
          setupYear (atoi(substr setupDate 1 4))
          setupMonth (atoi(substr setupDate 5 2))
          setupDay (atoi(substr setupDate 7 2))
          setupHour (atoi(substr setupDate 10 2))
          setupMinute (atoi(substr setupDate 12 2))
          setupSecond (atoi(substr setupDate 14 2))
          setupMilliSecond (atoi(substr setupDate 16 2)));end setq
    (vl-file-copy aliasLink originalPGP T)
    (setenv "FIRSTSETUPCOMPLETED" "TRUE")
    (setenv "SETUPMONTH" (rtos setupMonth 2 0))
    (setenv "SETUPDAY" (rtos setupDay 2 0))
    (setenv "SETUPYEAR" (rtos setupYear 2 0))
  );end progn
);end if
  |;
  
(setq aliasList (list "2V, *Split_View_Into_2"
                      "38ROD, *Switch_KS7L_to_38Rod_Damper"
                      "AA, *Attacher_On"
                      "AD, *Adjust_Dampers"
                      "AF, *Attacher_Off"
                      "AG, *Add_Grille"
                      "AH, *Auto_Hatch_FSD"
                      "AT, *Auto_Text"
                      "C2D, *Create_2D"
                      "CC, *Connection_Cycle"
                      "CF, *Connection_Fix"
                      "CR, *Copy_Rotate"
                      "CX, *Copy_X_Axis"
                      "CY, *Copy_Y_Axis"
                      "CZ, *Copy_Z_Axis"
                      "DE, *Dimension_at_Elevation"
                      "DB, *Debug_Script"
                      "DC, *Damper_Cycle"
                      "DSF, *Dimside_Off"
                      "DSO, *Dimside_On"
                      "DUMP, *Item_Information_Dump"
                      "DW, *Create_DoubleWall_Patterns"
                      "EntS, *Select_Entity"
                      "ES, *Execute_Script"
                      "FC, *Fix_Colors"
                      "FD, *Fix_Download"
                      "FF, *FLEX_FILL"
                      "FL, *Flip"
                      "FSD90, *Rotate_FSD_Motor"
                      "FV, *Front_View"
                      "FXV, *Fix_Variables"
                      "GEL, *Get_Entity_List"
                      "GKAC, *Get_Keyboard_ASCII_Character"
                      "HC, *HangerCommand"
                      "HS, *Hanger_Stretch_to_Section"
                      "IC, *Insulation_Cycle"
                      "IG, *Insulation_Gauge_Cycle"
                      "ILP, *Insert_ACAD_Layout_Points"
                      "IPE, *Improved_Point_Export"
                      "IR, *Insulation_Reset"
                      "IRN, *Improved_ReNumber"
                      "ISC, *Insulation_Specification_Cycle"
                      "ISR, *Item_Specification_Repair"
                      "IU, *Item_Update"
                      "KS7L, *Switch_38Rod_to_KS7L_Damper"
                      "LAF, *List_All_Functions"
                      "LC, *Layer_Make_Current"
                      "LF, *Layer_Off"
                      "LI, *Layer_Isolate"
                      "LLP, *Label_Layout_Points"
                      "LM, *Layer_Match"
                      "LN, *Layer_On"
                      "LP, *Layout_Prep"
                      "LU, *Layer_Unlock"
                      "LV, *Last_View"
                      "LVW, *Last_View_WCS"
                      "MDE, *Multi_Dimension_Edit"
                      "MOE, *Multi_Option_Edit"
                      "MVE, *Multi_Variable_Edit"
                      "MP, *Move_Previous"
                      "MR, *Move_Rotate"
                      "MRR, *Move_Rotate_Repeat"
                      "MT, *MultiText_Box"
                      "MZ, *Move_Along_Z"
                      "OAF, *Open_Alias_File"
                      "PO, *Paste_To_Original_Coordinates"
                      "R3, *Rotate_3D"
                      "RA, *Rotate_Around_Attacher"
                      "RAC, *Rotate_Around_Center"
                      "RR, *Rotate_Reference"
                      "RT, *Rotate_Text"
                      "RV, *Right_View"
                      "SD, *Size_Down_Item"
                      "SDW, *Select_DoubleWall_Patterns"
                      "SE, *Size_&_Elevation_Cycle"
                      "SF, *Selection_Fix"
                      "SL, *Select_Last_Added"
                      "SP, *Select_Previous"
                      "SSPEC, *Search_Specification"
                      "SS_SFN, *Select_Similar_SourceFileName"
                      "SS_SD, *Select_Similar_SourceFileName&Description"
                      "SS_ST, *Select_Similar_ServiceType"
                      "SU, *Size_Up_Item"
                      "SV, *Improved_Section_View"
                      "T, *Make_Text_Layer_Current"
                      "TAF, *Text_Alias_Off"
                      "TAO, *Text_Alias_On"
                      "TC, *Text_Cloud"
                      "TD, *Toggle_Dimside"
                      "TEF, *Text_Elevation_Off"
                      "TEO, *Text_Elevation_On"
                      "TF, *Text_All_Off"
                      "TG, *Toggle_Grille"
                      "TLF, *Text_Length_Off"
                      "TLO, *Text_Length_On"
                      "TM, *Text_Move"
                      "TNF, *Text_Numbers_Off"
                      "TCZ, *Toggle_Clearance_Zone"
                      "TNO, *Text_Numbers_On"
                      "TO, *Text_All_On"
                      "TOF, *Text_Offset_Off"
                      "TOO, *Text_Offset_On"
                      "TSF, *Text_Size_Off"
                      "TSO, *Text_Size_On"
                      "TTA, *Text_Toggle_Alias"
                      "TTE, *Text_Toggle_Elevation"
                      "TTL, *Text_Toggle_Length"
                      "TTN, *Text_Toggle_Numbers"
                      "TTO, *Text_Toggle_Offset"
                      "TTS, *Text_Toggle_Size"
                      "TV, *Top_View"
                      "TZ, *Toggle_Z_Snaplock"
                      "UD, *Update_Drawing"
                      "UED, *Update_Existing_Dampers"
                      "WV, *World_View"
                      "XCD, *Delete_All_Xclips"
                      "XRL, *Import_Xref_on_Custom_Layer"
                      "XX, *Move_X_Axis"
                      "YY, *Move_Y_Axis"
                      "ZZ, *Move_Z_Axis")
      aListLength (length aliasList)
      i 0
      j 0
      lspFile (open LocationLCC "r")
      lspLine (read-line lspFile)
      commandList '());end setq
  (while (not(= lspLine nil))
    (if (wcmatch lspLine "(defun c:*")
      (progn
        (STRING_SPLIT " " lspLine)
        (STRING_SPLIT ":" nth1)
        (setq commandList (append commandList (list nth1)));end setq
      );end progn
    );end if
    (setq lspLine (read-line lspFile));end setq
  );end while
  (setq commandListLength (length commandList)
	commandsWithoutAliases '()
	commandsWithAliases '());end setq
  (while (< i commandListLength)
    (setq commandTest (nth i commandList)
          matchFound nil
          j 0);end setq
    (while (< j aListLength)
      (setq aliasTest (nth j aliasList));end setq
      (if (wcmatch aliasTest (strcat "*" commandTest))
        (setq matchFound T);end setq
      );end if
      (if (and(= j (- aListLength 1))(not(= matchFound T)))
        (setq commandsWithoutAliases (append commandsWithoutAliases (list commandTest)));end setq
	(if (and(= j (- aListLength 1))(= matchFound T))
        (setq commandsWithAliases (append commandsWithAliases (list commandTest)));end setq
        );end if
      );end if
      (setq j (1+ j));end setq
    );end while
    (setq i (1+ i));end setq
  );end while
  (setq i 0
        j 0
        cmdwAliasesLength (length commandsWithAliases)
        cmdwoAliasesLength (length commandsWithoutAliases)
	commandList nil);end setq
  (princ "------------------------ ")(terpri)
  (princ "------------------------ ")(terpri)
  (princ "------------------------ ")(terpri)
  (princ (strcat (rtos cmdwoAliasesLength 2 0) " COMMANDS WITHOUT ALIASES:"))(terpri)
  (princ "------------------------ ")(terpri)
  (princ)
  (while (< i cmdwoAliasesLength)
    (princ (strcat "#" (rtos i 2 0) ": "(nth i commandsWithoutAliases)))(terpri)
    (princ)
    (setq i (1+ i))
  );end while
  (princ "------------------------ ")(terpri)
  (princ "------------------------ ")(terpri)
  (princ "------------------------ ")(terpri)
  (princ (strcat (rtos aListLength 2 0) " COMMANDS WITH ALIASES:"))(terpri)
  (princ "------------------------ ")(terpri)
  (princ)
  (while (< j aListLength)
    (STRING_SPLIT "," (nth j aliasList))
    (setq cmdAlias nth0)
    (STRING_SPLIT "*" nth1)
    (setq cmd nth0)
    (princ (strcat "#" (rtos j 2 0) ": Alias: " cmdAlias " - Command: " cmd))(terpri)
    (princ)
    (setq j (1+ j))
  );end while
  (princ "------------------------ ")(terpri)
  (princ "------------------------ ")(terpri)
  (princ "------------------------ ")(terpri)
  (princ "COMMAND ALIASES ADDED THIS TIME:")(terpri)
  (princ "------------------------ ")(terpri)
  (princ)
  (setq i 0
        j 0);end setq
  (while (< i aListLength)
    (setq aliasTest (nth i aliasList)
          file (open aliasLink "r")
          pgpLine (read-line file));end setq
    (while (not(= pgpLine nil))
      (if (= aliasTest pgpLine)
        (setq aliasTestPositive T);end setq
      );end if
      (setq pgpLine (read-line file));end setq
    );end while
    (if (not aliasTestPositive)
      (progn
        (setq aliasLinetxt (strcat (getvar "Logfilepath") "aliasLine.txt")
              writeAliasLine (open aliasLinetxt "w")
              j (1+ j));end setq
        (write-line aliasTest writeAliasLine)
        (close writeAliasLine)
        (vl-file-copy aliasLinetxt aliasLink T)
        (vl-file-delete aliasLinetxt)
        (setq addedLine (strcat "#" (rtos j 2 0) ": added " aliasTest));end setq
        (princ addedLine)(terpri)
      );end progn
    );end if
        (setq i (1+ i)
              aliasTestPositive nil);end setq
  );end while
  (setq addedLineCount (strcat (rtos j 2 0) " command aliases added")
        commandsWithAliases nil
        commandsWithoutAliases nil
        1stSetupDone T);end setq
  (princ addedLineCount)(terpri)
  (c:Fix_Variables)

  ;|
  (if(not(wcmatch Main (strcat "*" dbDrive "*")))
    (progn
    (initget 0 (strcat "D Q _Default_Install,D "  dbDrive PMShared ",Q"))
    (setq choice (getkword (strcat "\nChoose your desired server configuration: [Default install path/" (strcat dbDrive PMSharedDisplayV2) "] <Esc>")))
      (if(= choice nil)
        (setq desiredServer PMShared)
        (if(wcmatch choice "Default*")
          (setq desiredServer defaultConfig)
          (if(wcmatch choice (strcat dbDrive "*"))
            (setq desiredServer (strcat dbDrive PMShared))
          );end if
        );end if
      );end if
      (if(/= desiredServer nil)
        (progn
          (acet-ini-set mapINILoc "PROGRAM PATHS" "Backup" (strcat desiredServer "Backup"))
          (acet-ini-set mapINILoc "PROGRAM PATHS" "Database" (strcat desiredServer "Database"))
          (acet-ini-set mapINILoc "PROGRAM PATHS" "Project" (strcat desiredServer "Project"))
          (acet-ini-set mapINILoc "PROGRAM PATHS" "Reports" (strcat desiredServer "Reports"))
          (acet-ini-set mapINILoc "PROGRAM PATHS" "Images" (strcat desiredServer "Images"))
          (acet-ini-set mapINILoc "PROGRAM PATHS" "Items" (strcat desiredServer "Libraries"))
          (acet-ini-set mapINILoc "PROGRAM PATHS" "Scripts" (strcat desiredServer "Scripts"))
          (acet-ini-set mapINILoc "PROGRAM PATHS" "Profiles" (strcat desiredServer "Profiles"))
          (acet-ini-set mapINILoc "PROGRAM PATHS" "Download" (strcat desiredServer "DOWNLOAD"))
          (acet-ini-set mapINILoc "PROGRAM PATHS" "Common" (strcat defaultConfig "COMMON"))
          (acet-ini-set mapINILoc "PROGRAM PATHS" "Textures" (strcat defaultConfig "TEXTURES"))
          (acet-ini-set mapINILoc "PROGRAM PATHS" "Main" desiredServer)
        );progn
        (progn(princ "Selection not recognized")(terpri))
      );end if
    );progn
  );end if
|;
  
  (princ)
  (setvar 're-init 16)
  (textscr)
  (princ)
);end defun
;**************************************************************************************************************************************************
(defun c:LCC_Help()
(OUTSIDE_LOOP_VARIABLES nil)(terpri)
(princ "The current drawing location is: ")(terpri)
(princ dwgDirectory)(terpri)
(princ "The current drawing name is: ")(terpri)
(princ dwgName)(terpri)
(princ "Your default excel launch path is: ")(terpri)
(princ excel)(terpri)
(princ "Your active seismic block reference location is: ")(terpri)
(princ SeismicBlock)(terpri)
(princ "Your active grille reference location is: ")(terpri)
(princ Grille)(terpri)
(princ " ")(terpri)
(princ "USER SETUP INFORMATION")(terpri)
(princ "In order to parse information correctly, the list setup file (CDDetail.MAP: provided with package) must be organized as such: ")(terpri)
(princ "ItemCID")(terpri)
(princ "C1 X coordinate")(terpri)
(princ "C1 Y coordinate")(terpri)
(princ "C1 Z coordinate")(terpri)
(princ "     - Repeat this pattern through connector # 25")(terpri)
(princ "Dimension number value 1")(terpri)
(princ "Dimension number value 2")(terpri)
(princ "Dimension number value 3")(terpri)
(princ "     - Repeat this pattern through dimension # 200")(terpri)
(princ (strcat "CDDetail.MAP should be copied to this location: " curFabPath))(terpri)
(princ " ")(terpri)
(princ "Command Help Format:------------------------------------------------------------------------------------")(terpri)
(princ "Tier - Shortcut - Command Name:                    Description")(terpri)
(princ " ")(terpri)
(princ "TIER 1 --------------------------------------------------------------------------------------------------------------")(terpri)
(princ "T1   - 2V       - Split_View_Into_2:               Spilt the current view with a vertical seperation into 2 views ")(terpri)
(princ "T1   - AA       - Attacher_On:                     Turns of the attacher arrow; Asks for selection")(terpri)
(princ "T1   - AD       - Adjust_Dampers:                  Choose from provided damper options to be applied to any number of items.")(terpri)
(princ "T1   - AF       - Attacher_Off:                    Turns off the attacher arrow")(terpri)
(princ "T1   - AG       - Add_Grille:                      Adds grille to connector and reduces dimensions by 2")(terpri)
(princ "T1   - CR       - Copy_Rotate:                     Choose basepoint, move the copy, rotate to desired angle")(terpri)
(princ "T1   - CX       - Copy_X_Axis:                     Pick points to define move; Axis is defined by the current UCS;")(terpri)
(princ "T1   - CY       - Copy_Y_Axis:                     Pick points to define move; Axis is defined by the current UCS;")(terpri)
(princ "T1   - CZ       - Copy_Z_Axis:                     Pick points to define move; Axis is defined by the current UCS;")(terpri)
(princ "T1   - DB       - Debug_Script:                    Execute the debug script file (predetermined location)")(terpri)
(princ "T1   - DSF      - Dimside_Off:                     Turns dimside off (Default position - does not factor in insulation for")(terpri)
(princ "                                                        dimension display)")(terpri)
(princ "T1   - DSO      - Dimside_On:                      Turns dimside on (Displays measurements with consideration for insulation)")(terpri)
(princ "T1   - DUMP     - Item_Information_Dump:           Dumps various information formats for selected item")(terpri)
(princ "T1   - EntS     - Select_Entity:                   Used within programs; Selects the current entity in a loop")(terpri)
(princ "T1   - ES       - Execute_Script:                  Opens default script location for selection & execution")(terpri)
(princ "T1   - FD       - Fix_Download:                    Fixes past issues; ie: unexplained changes on downloads")(terpri)
(princ "T1   - FF       - Flex_Fill:                       Flexfill command shortcut")(terpri)
(princ "T1   - FL       - Flip:                            Flips the object 180 degrees")(terpri)
(princ "T1   - FSD90    - Rotate_FSD_Motor:                Rotates only the motor orientation around the selected FSD")(terpri)
(princ "T1   - FV       - Front_View:                      Move camera perspective to front view")(terpri)
(princ "T1   - FXV      - Fix_Variables:                   Sets specific variables (various applications)")(terpri)
(princ "T1   - GEL      - Get_Entity_List:                 Displays CADmep properties associated with the selected item")(terpri)
(princ "T1   - GKAC     - Get_Keyboard_ASCII_Character:    Enter command and push a key; Get the ASCII character association")(terpri)
(princ "T1   - HC       - HangerCommand:                   At the moment, applied hangers honor the current service, not the duct service;")(terpri)
(princ "                                                        Do each service separately and be sure the active service is set to the")(terpri)
(princ "                                                        applicable service.")(terpri)
(princ "T1   - IU       - Item_Update:                     Updates selected items to current database standards")(terpri)
(princ "T1   - LAF      - List_All_Functions:              Lists available functions")(terpri)
(princ "T1   - LC       - Layer_Make_Current:              Make selected item's layer current")(terpri)
(princ "T1   - LF       - Layer_Off:                       Turn off selected item's layer")(terpri)
(princ "T1   - LI       - Layer_Isolate:                   Isolates layer of selected items")(terpri)
(princ "T1   - LI       - Layer_Isolate:                   Isolates layer of selected items")(terpri)
(princ "T1   - LM       - Layer_Match:                     Match source item's layer to destination item")(terpri)
(princ "T1   - LN       - Layers_On:                       Turn on all non-frozen layers")(terpri)
(princ "T1   - LU       - Layer_Unlock:                    Unlock selected item's layer")(terpri)
(princ "T1   - LV       - Last_View:                       Changes view to the previous view and previous UCS")(terpri)
(princ "T1   - LVW      - Last_View_WCS:                   Changes view to the previous view and world UCS")(terpri)
(princ "T1   - MP       - Move_Previous:                   Moves the previously active selection set")(terpri)
(princ "T1   - MR       - Move_Rotate:                     Move and rotate a single item")(terpri)
(princ "T1   - MRR      - Move_Rotate_Repeat:              Move and rotate multiple items")(terpri)
(princ "T1   - MT       - MultiText_Box:                   Inserts a Multi-text Box with a single click")(terpri)
(princ "T1   - MZ       - Move_Along_Z:                    Move only along the Z axis; positive or negative distance")(terpri)
(princ "T1   - NO       - Numbers_Off:                     Turns off all numbers")(terpri)
(princ "T1   - NO       - Numbers_On:                      Turn on numbers for appropriate items")(terpri)
(princ "T1   - OAF      - Open_Alias_File:                 Opens the alias file - acad.pgp")(terpri)
(princ "T1   - PO       - Paste_To_Original_Coordinates:   Pastes clipboard information to original coordinates")(terpri)
(princ "T1   - R3       - Rotate_3D:                       Rotate around a defined axis; Usually snap to a center point to rotate around")(terpri)
(princ "                                                        - dragging the line is like dragging a rope; the line is anchored")(terpri)
(princ "                                                        to the first selected point while you can imagine yourself at the")(terpri)
(princ "                                                        second selected point staring back at the object; with that in mind")(terpri)
(princ "                                                        know that positive angles count counterclockwise from point of view.")(terpri)
(princ "T1   - RA       - Rotate_Around_Attacher:          Rotate around the designated connector by a designated amount")(terpri)
(princ "T1   - RAC      - Rotate_Around_Center:            Rotate around the center point 180 degrees")(terpri)
(princ "T1   - RR       - Rotate_Reference:                Select rotational basepoint, select circumfrential basepoint, select target")(terpri)
(princ "                                                        basepoint")(terpri)
(princ "T1   - RT       - Rotate_Text:                     Rotates CADmep item text; single selection")(terpri)
(princ "T1   - RV       - Right_View:                      Move camera perspective to right view")(terpri)
(princ "T1   - SE       - Size_&_Elevation_Cycle:          Cycles through size & elevation text visibility options")(terpri)
(princ "T1   - SF       - Selection_Fix:                   Fixes those annoying moments where you can't select the object")(terpri)
(princ "T1   - SL       - Select_Last_Added:               Selects the most recent object addition to the drawing database")(terpri)
(princ "T1   - SP       - Select_Previous:                 Reselects the previously active selection set")(terpri)
(princ "T1   - T        - Make_Text_Layer_Current:         Makes the \"_Text\" layer current")(terpri)
(princ "T1   - TAF      - Text_Alias_Off                   Turns off alias text for selected items")(terpri)
(princ "T1   - TAO      - Text_Alias_On                    Turns on alias text for selected items")(terpri)
(princ "T1   - TC       - Text_Cloud:                      Apply a review cloud on the \"_Text\" layer")(terpri)
(princ "T1   - TD       - Toggle_Dimside:                  Toggles whether the dimensions are read and displayed based on the inside or")(terpri)
(princ "                                                        outside of the item with consideration for insulation")(terpri)
(princ "T1   - TEF      - Text_Elevation_Off               Turns off elevation text for selected items")(terpri)
(princ "T1   - TEO      - Text_Elevation_On                Turns on elevation text for selected items")(terpri)
(princ "T1   - TF       - Text_All_Off                     Turns off all text for selected items")(terpri)
(princ "T1   - TG       - Toggle_Grille:                   Use with HETO tap; Manipulates tap by adjusting sizes to shop standard minimums")(terpri)
(princ "                                                        and adding damper in preparation to add a grille (turns connector to 1 Flg In)")(terpri)
(princ "T1   - TLF      - Text_Length_Off                  Turns off length text for selected items")(terpri)
(princ "T1   - TLO      - Text_Length_On                   Turns on length text for selected items")(terpri)
(princ "T1   - TM       - Text_Move:                       Moves CADmep item text; single selection")(terpri)
(princ "T1   - TNF      - Text_Numbers_Off                 Turns off number text for all items")(terpri)
(princ "T1   - TNF      - Toggle_No-Fly_Zone:              Toggles an insulation entitled \"No-Fly Zone\" for clashing purposes")(terpri)
(princ "T1   - TNO      - Text_Numbers_On:                 Turns on number text for appropriate items")(terpri)
(princ "T1   - TO       - Text_All_On                      Turns on all text for selected items")(terpri)
(princ "T1   - TOF      - Text_Offset_Off                  Turns off offset text for selected items")(terpri)
(princ "T1   - TOO      - Text_Offset_On                   Turns on offset text for selected items")(terpri)
(princ "T1   - TSF      - Text_Size_Off                    Turns off size text for selected items")(terpri)
(princ "T1   - TSO      - Text_Size_On                     Turns on size text for selected items")(terpri)
(princ "T1   - TTA      - Text_Toggle_Alias                Toggles alias text for selected items")(terpri)
(princ "T1   - TTE      - Text_Toggle_Elevation            Toggles elevation text for selected items")(terpri)
(princ "T1   - TTL      - Text_Toggle_Length               Toggles length text for selected items")(terpri)
(princ "T1   - TTN      - Text_Toggle_Numbers              Toggles number text for selected items")(terpri)
(princ "T1   - TTO      - Text_Toggle_Offset               Toggles offset text for selected items")(terpri)
(princ "T1   - TTS      - Text_Toggle_Size                 Toggles size text for selected items")(terpri)
(princ "T1   - TV       - Top_View:                        Move camera perspective to top view")(terpri)
(princ "T1   - TZ       - Toggle_Z_Snaplock:               Toggles the Z-axis lock for snaps")(terpri)
(princ "T1   - WV       - World_View:                      Changes view to plan view and world UCS")(terpri)
(princ "T1   - XCD      - Delete_All_Xclips:               Delete Xref clipping planes")(terpri)
(princ "T1   - XRL      - Import_Xref_on_Custom_Layer:     Auto assign xref to its own layer and lock the layer")(terpri)
(princ "T1   - XX       - Move_X_Axis:                     Pick points to define move; Axis is defined by the current UCS;")(terpri)
(princ "T1   - YY       - Move_Y_Axis:                     Pick points to define move; Axis is defined by the current UCS;")(terpri)
(princ "T1   - ZZ       - Move_Z_Axis:                     Pick points to define move; Axis is defined by the current UCS;")(terpri)
(princ " ")(terpri)
(princ "TIER 2 --------------------------------------------------------------------------------------------------------------")(terpri)
(princ "T2   - 38ROD    - Switch_KS7L_to_38Rod_Damper:     Converts KS7L dampers to 3/8 Rod dampers; Ignores non KS7L dampers")(terpri)
(princ "T2   - C1       - C1:                              Cycles connection 1 around the most common connections (change multiple items at once)")(terpri)
(princ "T2   - C2       - C2:                              Cycles connection 2 around the most common connections (change multiple items at once)")(terpri)
(princ "T2   - CC       - Connection_Cycle:                If connections are at default or SMACNA standard, this cycles connection step downs")(terpri)
(princ "T2   - CF       - Connection_Fix:                  This corrects selected items to SMACNA standards for given size and pressure class")(terpri)
(princ "T2   - DE       - Dimension_at_Elevation:          Dimension on dimension layer at elevation")(terpri)
(princ "T2   - DC       - Damper_Cycle:                    Cycles dampers on/off")(terpri)
(princ "T2   - DW       - Create_DoubleWall_Patterns:      Creates doublewall inside patterns within selected items")(terpri)
(princ "T2   - HS       - Hanger_Stretch_to_Section:       Stretches all hangers to assigned section heights respectively")(terpri)
(princ "T2   - IC       - Insulation_Cycle:                Cycles insulation type")(terpri)
(princ "T2   - IG       - Insulation_Gauge_Cycle:          Cycles insulation thickness within type")(terpri)
(princ "T2   - IR       - Insulation_Reset:                Set or reset insulation across the selection; enter thickness per return/supply")(terpri)
(princ "T2   - ISC      - Insulation_Specification_Cycle:  Cycles insulation specification setting")(terpri)
(princ "T2   - ISR      - Item_Specification_Repair:       Repairs item specification to appropriate setting based on item services")(terpri)
(princ "T2   - KS7L     - Switch_38Rod_to_KS7L_Damper:     Converts 3/8 Rod dampers to KS7L  dampers; Ignores non 3/8 Rod dampers")(terpri)
(princ "T2   - MDE      - Multi_Dimension_Edit:            Edit any dimension for any amount of items; use index location")(terpri)
(princ "T2   - MOE      - Multi_Option_Edit:               Edit any option for any amount of items; use index location")(terpri)
(princ "T2   - SD       - Size_Down_Item:                  Increments item dimensions down by 2 if above 11 and by 1 otherwise; Increments")(terpri)
(princ "T2   - SDW      - Select_DoubleWall_Patterns:      Selects the doublewall inside patterns that have been created")(terpri)
(princ "T2   - SS       - Search_Specification:            Allows a search for items based on database specification then presents")(terpri)
(princ "T2   - SSS      - Select_Similar_SourceFileName:   Selects all items in drawing of the same source file name as the chosen item")(terpri)
(princ "T2   - SU       - Size_Up_Item:                    Increments item dimensions up by 2 if above 11 and by 1 otherwise; Increments")(terpri)
(princ "T2   - SV       - Improved_Section_View:           Section view but with usable grips and zooms to crossed object")(terpri)
(princ " ")(terpri)
(princ "TIER 3 --------------------------------------------------------------------------------------------------------------")(terpri)
(princ "T3   - AH       - Auto_Hatch_FSD:                  Automatically hatches FSDs (items based on \"Fire Damper\" service type)")(terpri)
(princ "T3   - AT       - Auto_Text:                       Intelligent auto texting makes desicions about text visibility and postion")(terpri)
(princ "T3   - C2D      - Create_2D:                Creates a scaled 2D drawing for gps coordinate layout")(terpri)
(princ "T3   - ILP      - Insert_ACAD_Layout_Points:       Applies traditional trimble points to seismic kickers")(terpri)
(princ "T3   - IPE      - Improved_Point_Export:           Captures coordinates in csv format")(terpri)
(princ "T3   - IRN      - Improved_ReNumber:               Automatically renumbers based on service and type")(terpri)
(princ "T3   - LLP      - Label_Layout_Points:             Places circles at any drawing's support point locations and labels them with size")(terpri)
(princ "T3   - LP       - Layout_Prep:                     This runs \"Improved_ReNumber\", \"Improved_Point_Export\" & \"Create_2D\" consecutively")(terpri)
(princ "T3   - UD       - Update_Drawing:                  This will update the template, blocks, certain layers, dimstyles, textstyles, services, specifications, activity numbers and ItemCIDs.")(terpri)

(textscr)
(princ)
);end defun
;**************************************************************************************************************************************************
(defun c:Open_Alias_File ()
  (OUTSIDE_LOOP_VARIABLES nil)
  (startapp "notepad" aliasLink)
);end defun
;**************************************************************************************************************************************************
(defun Sleep_OSnap ()(setvar 'osmode (logior (getvar 'osmode) 16384)))

(defun Wake_OSnap ()(setvar 'osmode (logand (getvar 'osmode) -16385)))

(defun Toggle_OSnap () (setvar 'osmode (boole 6 (getvar 'osmode) 16384)))
;**************************************************************************************************************************************************
(defun RETRIEVE_FILEPATHS (fileExt folderPath)
  (setq folderPath (vl-string-right-trim "\\" (vl-string-translate "/" "\\" folderPath)))
  (apply 'append
    (cons
      (if(vl-directory-files folderPath fileExt)
        (mapcar '(lambda (ext) (strcat folderPath "\\" ext))
          (vl-directory-files folderPath fileExt)
        );mapcar
      );end if
      (mapcar '(lambda (ext) (RETRIEVE_FILES fileExt (strcat folderPath "\\" ext)))
        (vl-remove ".."
          (vl-remove "."
            (vl-directory-files folderPath nil -1)
          );vl-remove
        );vl-remove
      );mapcar
    );cons
  );apply
);end defun
;**************************************************************************************************************************************************
(defun FIND_FILE (fileName folderName)
  (setq folderName (vl-string-right-trim "\\" (vl-string-translate "/" "\\" folderName)))
  (cond((findfile (strcat folderName "\\" fileName)))
    ((vl-some '(lambda (elm) (FIND_FILE fileName (strcat folderName "\\" elm)))
      (vl-remove "." (vl-remove ".." (vl-directory-files folderName nil -1)))));vl-some
  );cond
);end defun
;**************************************************************************************************************************************************
(defun c:LOAD_LCC ( / )
  (vl-load-com)
  (GIVE_ME_STARTUP_CODE)
  (vl-load-all masterLSPLink)
  (SETUP_LCC)
  (command "OPTIONS")
);end defun
;**************************************************************************************************************************************************
(defun GIVE_ME_STARTUP_CODE ( / )
  (setq dbDrive "R"
        defaultConfig "./"
        PMShared ":\\PM Shared\\"
        PMSharedDisplay (vl-string-translate "\\" "/" PMShared)
        PMSharedDisplayV2 " pmshared"
        AutodeskRegistryPath "HKEY_CURRENT_USER\\software\\Autodesk\\"
        ACADRegistryPath (strcat AutodeskRegistryPath "AutoCAD" "\\")
        currentVersion1 (vl-registry-read ACADRegistryPath "CurVer")
        currentVersion2 (vl-registry-read (strcat ACADRegistryPath "\\" currentVersion1 "\\") "CurVer")
        acadVersionPath (strcat ACADRegistryPath currentVersion1 "\\" currentVersion2)
        localRootFolder (vl-registry-read acadVersionPath "LocalRootFolder")
        userNameFolderPathPrefix (progn(STRING_SPLIT "\\" localRootFolder)(setq userNameFolderPathPrefix (strcat nth0 "\\" nth1 "\\" nth2 "\\")))
        currentProfile (vl-registry-read (strcat acadVersionPath "\\Profiles") "")
        startupSuiteDirectory (strcat acadVersionPath "\\Profiles\\" currentProfile "\\Dialogs\\Appload\\Startup")
        ACADResourcesDirectory (strcat userNameFolderPathPrefix "AMC\\BIM - Docs\\_Management\\AMC Software Management\\AutoCAD")
	      defaultLCCLocation (strcat ACADResourcesDirectory "\\Custom Programs\\LSPs")
        publicDirectory "C:\\Users\\Public\\Documents\\Autodesk"
        customFontsDirectory (strcat ACADResourcesDirectory "\\" "Custom Fonts")
        customFontsDisplayDirectory (vl-string-translate "\\" "/" customFontsDirectory)
        customProgramsDirectory (strcat ACADResourcesDirectory "\\" "Custom Programs")
        customProgramsDisplayDirectory (vl-string-translate "\\" "/" customProgramsDirectory)
        customPlotstylesDirectory (strcat ACADResourcesDirectory "\\" "Custom Plotstyles")
        customPlotstylesDisplayDirectory (vl-string-translate "\\" "/" customPlotstylesDirectory)
        customACADTemplateDirectory (strcat ACADResourcesDirectory "\\" "Templates")
        customACADTemplateDisplayDirectory (vl-string-translate "\\" "/" customACADTemplateDirectory)
        customACADTemplateName "ACAD Working Template"
        customACADTemplateLink (strcat customACADTemplateDirectory "\\" customACADTemplateName ".dwt")
        databaseFilesDirectory (strcat ACADResourcesDirectory "\\" "Database Files")
        databaseFilesDisplayDirectory (vl-string-translate "\\" "/" databaseFilesDirectory)
        ACADDocDirectory (strcat customProgramsDirectory "\\" "ACADdoc")
        ACADDocLink (strcat ACADDocDirectory "\\ACADdoc.lsp")
        customCODsDirectory (strcat customProgramsDirectory "\\" "CODs")
        masterLSPName "LCC"
        customLSPsDirectory (strcat customProgramsDirectory "\\" "LSPs")
        customLSPsDisplayDirectory (vl-string-translate "\\" "/" customLSPsDirectory)
        masterLSPLink (strcat customLSPsDirectory "\\" masterLSPName ".lsp")
        debugFileName "Debug File"
        debugFileDirectory (strcat customCODsDirectory "\\" "Debug File")
        debugFileLink (strcat debugFileDirectory "\\" DebugFileName ".cod")
        customBlocksDirectory (strcat ACADResourcesDirectory "\\" "Custom Blocks")
        customBlocksDisplayDirectory (vl-string-translate "\\" "/" customBlocksDirectory)
        block_TitleBlockName "_TITLE_BLOCK"
        block_TitleBlockLink (strcat customBlocksDirectory "\\" block_TitleBlockName ".dwg")
	      block_StampName "_STAMPS"
        block_TagName "_TAG"
        block_DiamName "DIAM"
        block_ElevName "ELEV"
        block_SizeName "SIZE"
        block_BlockoutTextName "BLOCKOUT_TEXT"
        block_TlblkMultiName "TLBLK MULTI"
        block_TagLink (strcat customBlocksDirectory "\\" block_StampName ".dwg")
        block_TagLink (strcat customBlocksDirectory "\\" block_TagName ".dwg")
        block_DiamLink (strcat customBlocksDirectory "\\" block_DiamName ".dwg")
        block_ElevLink (strcat customBlocksDirectory "\\" block_ElevName ".dwg")
        block_SizeLink (strcat customBlocksDirectory "\\" block_SizeName ".dwg")
        block_BlockoutTextLink (strcat customBlocksDirectory "\\" block_BlockoutTextName ".dwg")
        block_WorkingTemplateName customACADTemplateName
        block_WorkingTemplateLink (strcat customBlocksDirectory "\\" block_WorkingTemplateName ".dwg")
        block_TlblkMultiLink (strcat customBlocksDirectory "\\" block_TlblkMultiName ".dwg")
        currentButtonSetupDirectory (strcat ACADResourcesDirectory "\\" "Current Button Setup")
        standardButtonTemplateName "Standard Button Template_TemplateData"
        standardButtonTemplateDirectory (strcat currentButtonSetupDirectory "\\" "1.) Standard Button Template")
        standardButtonTemplateLink (strcat standardButtonTemplateDirectory "\\" standardButtonTemplateName ".csv")
        weldedButtonTemplateName "Standard Welded Systems Button Template_TemplateData"
        weldedButtonTemplateDirectory (strcat currentButtonSetupDirectory "\\" "2.) Welded Button Template")
        weldedButtonTemplateLink (strcat weldedButtonTemplateDirectory "\\" weldedButtonTemplateName ".csv")
        undergroundButtonTemplateName "Standard Underground System Button Template_TemplateData"
        undergroundButtonTemplateDirectory (strcat currentButtonSetupDirectory "\\" "3.) Underground Button Template")
        undergroundButtonTemplateLink (strcat undergroundButtonTemplateDirectory "\\" undergroundButtonTemplateName ".csv")
        InslabButtonTemplateName "Standard Inslab Button Template_TemplateData"
        InslabButtonTemplateDirectory (strcat currentButtonSetupDirectory "\\" "Inslab Button Template")
        InslabButtonTemplateLink (strcat currentButtonSetupDirectory "\\" InslabButtonTemplateName ".csv")
        otherButtonsDirectory (strcat currentButtonSetupDirectory "\\" "Other")
        Grille&Louver (strcat standardButtonTemplateDirectory "\\" "6.) BOUGHT" "\\" "Grille&Louver" ".ITM")
        App (vlax-Get-Acad-Object)
        Doc (vla-Get-ActiveDocument App)
        dwgProperties (vla-Get-SummaryInfo Doc)
        dwgName (vl-filename-base (getvar "dwgname"))
        dwgDirectory (vl-string-translate "\\" "/" (getvar "dwgprefix"))
        dwgLink (vl-string-translate "\\" "/" (strcat dwgDirectory dwgName))
        appDataDirectory (vl-string-translate "\\" "/" (getvar "Logfilepath"))
        aliasLink (vl-string-translate "\\" "/" (findfile "acad.pgp"))
        aliasDirectory (vl-string-translate "\\" "/" (vl-filename-directory aliasLink))
        aliasName (vl-filename-base aliasLink)
  );end setq
  (setq indexLoadedStartup T
        tmpCnt 1)
  (while(not(= indexLoadedStartup nil))
    (setq startupCheck (strcat (rtos tmpCnt 2 0) "Startup")
          indexLoadedStartup (vl-registry-read startupSuiteDirectory startupCheck));end setq
    (if(and(not(= indexLoadedStartup nil))(wcmatch indexLoadedStartup (strcat "*" masterLSPName "*")))
      (setq LocationLCC indexLoadedStartup));end if
    (setq tmpCnt (1+ tmpCnt))
  );end while

  (setq LocationLCC masterLSPLink)
  
  (setq tmpCnt nil)
  (if(not(= LocationLCC nil))
    (progn
      (setq excel (progn(STRING_SPLIT "\"" (vl-registry-read "HKEY_CLASSES_ROOT\\Excel.Workspace\\shell\\New\\command"))(setq excel nth0))
            acadVersionYear (progn(STRING_SPLIT "\\" (vl-registry-read acadVersionPath "AllUsersFolder"))(setq acadVersionYear nth3)(STRING_SPLIT " " acadVersionYear)(setq acadVersionYear nth1))
            curFabVerID (if(= acadVersionYear "2020")(setq curFabVerID "V3.06"))
            curFabVer (strcat "Fabrication " acadVersionYear)
            fabPath (strcat AutodeskRegistryPath curFabVer "\\" "CADmep")
            curFabPath (strcat "C:\\Users\\Public\\Documents\\Autodesk\\" curFabVer "\\Imperial Content\\V3.06\\")
            mapINILoc (strcat curFabPath "map.ini")
            Backup (acet-ini-get mapINILoc "PROGRAM PATHS" "Backup")
            Database (acet-ini-get mapINILoc "PROGRAM PATHS" "Database")
            Project (acet-ini-get mapINILoc "PROGRAM PATHS" "Project")
            Reports (acet-ini-get mapINILoc "PROGRAM PATHS" "Reports")
            Images (acet-ini-get mapINILoc "PROGRAM PATHS" "Images")
            Items (acet-ini-get mapINILoc "PROGRAM PATHS" "Items")
            Scripts (acet-ini-get mapINILoc "PROGRAM PATHS" "Scripts")
            Profiles (acet-ini-get mapINILoc "PROGRAM PATHS" "Profiles")
            Download (acet-ini-get mapINILoc "PROGRAM PATHS" "Download")
            Common (acet-ini-get mapINILoc "PROGRAM PATHS" "Common")
            Textures (acet-ini-get mapINILoc "PROGRAM PATHS" "Textures")
            Main (acet-ini-get mapINILoc "PROGRAM PATHS" "Main")
            jobDirectory (progn(STRING_SPLIT "/" dwgDirectory)(if(and(not(= nth0 nil))(not(= nth1 nil)))(setq jobDirectory (strcat nth0 "\\" nth1 "\\"))(if(and(not(= nth0 nil))(= nth1 nil))(setq jobDirectory (strcat nth0 "\\"))(if(and(= nth0 nil)(= nth1 nil))(setq jobDirectory "C:\\")))))
            dwgServerLocation (progn(STRING_SPLIT "/" dwgDirectory)(setq dwgServerLocation nth0))
            Job# (if(and(not(= nth1 nil))(or(wcmatch nth1 "*####-*")(wcmatch nth1 "*###-*")(wcmatch nth1 "*#####-*")))
                   (progn
                     (STRING_SPLIT "-" nth1)
                     (setenv "JOBNAME" nth1)
                     (setq JOBNAME nth1)
                     (setenv "JOB#" nth0)
                     (setq JOB# nth0)
                   );end progn
                   (progn
                     (setenv "JOBNAME" "JOBNAME")
                     (setq JOBNAME "JOBNAME")
                     (setenv "JOB#" "JOB#")
                     (setq JOB# "JOB#")
                   );progn
                 );end if
      );end setq
      (if(wcmatch dwgName "*-L#*")
        (setq lvlDelim "-L")
        (if(wcmatch dwgName "* L#*")
          (setq delLvl1 " L")
          (if(wcmatch dwgName "*:L#*")
            (setq delLvl1 ":L")
            (if(wcmatch dwgName "*;L#*;*")
              (setq delLvl1 ";L")
                (if(wcmatch dwgName "*_L#*")
                (setq delLvl1 "_L")
                  (if(wcmatch dwgName "*L-#*")
                    (setq delLvl1 "L-")
                    (if(wcmatch dwgName "*L_#*")
                      (setq delLvl1 "L_")
      ) ) ) ) ) ) );end ifs
      (if(not(= delLvl1 nil))(STRING_SPLIT delLvl1 dwgName))
      (if(not(= nth1 nil))
        (if(wcmatch nth1 "*#-*")
          (setq delLvl2 "-")
          (if(wcmatch nth1 "*# *")
            (setq delLvl2 " ")
            (if(wcmatch nth1 "*#:*")
              (setq delLvl2 ":")
              (if(wcmatch nth1 "*#;*;*")
                (setq delLvl2 ";")
                (if(wcmatch nth1 "*#_*")
                  (setq delLvl2 "_")
      ) ) ) ) ) );end ifs
      (if(and(not(= nth1 nil))(or(wcmatch nth1 "#")(wcmatch nth1 "##")))
        (setq dwgLevel nth1)
        (progn
          (if(and(not(= delLvl2 nil))(not(= nth1 nil)))
            (progn
              (STRING_SPLIT delLvl2 nth1)
              (setq dwgLevel nth0)
            );end progn
          );end if
        );end progn
      );end if
      (if(= dwgLevel nil)
        (setq dwgLevel "")
      );end if
      (princ)
    );end progn
    (progn
      (princ "LCC not loaded into startup suite.")
      (princ)
    );end progn
  );end if
  (command-s "REGEN")
  (princ)
);end defun
;**************************************************************************************************************************************************
(defun OUTSIDE_LOOP_VARIABLES (ss / )
  (GIVE_ME_STARTUP_CODE)
  (defun LCC_ERROR ( msg )
    (princ "Error: ")
    (princ msg)
    (setq *ERROR* DEFAULT_ERROR
          DEFAULT_ERROR nil)
    (setvar 'highlight 1)
    (setvar 'cmdecho 0)
    (setvar 'filedia 1)
    (princ)
  );end LCC_ERROR
  (setq DEFAULT_ERROR *ERROR* 
        *ERROR* LCC_ERROR)
  (setq clock (rtos(getvar "CDATE") 2 8)
        year (atoi(substr clock 1 4))
        month (atoi(substr clock 5 2))
        day (atoi(substr clock 7 2))
        hour (atoi(substr clock 10 2))
        minute (atoi(substr clock 12 2))
        second (atoi(substr clock 14 2))
        milliSecond (atoi(substr clock 16 2))
        vbCode (strcat (getvar "Logfilepath")(rtos milliSecond 5 2)(rtos year 5 4)(rtos milliSecond 5 2)(rtos month 5 2)(rtos day 5 2)(rtos hour 5 2)(rtos minute 5 2)(rtos second 5 2)(rtos milliSecond 5 2) ".cod")
        extentsUR (getvar 'extmax)
        extentsLL (getvar 'extmin)
        viewCenter (getvar "viewctr")
        viewSize (getvar "viewsize")
        screenSize (getvar "screensize")
        stringLL (list (-(car viewCenter)(*(/ viewSize(cadr screenSize))(car screenSize) 0.5))
                       (-(cadr viewCenter)(/ viewSize 2.0)))
        stringUR (list (+(car viewCenter)(*(/ viewSize(cadr screenSize))(car screenSize) 0.5))
                       (+(cadr viewCenter)(/ viewSize 2.0)))
  );end setq
  (setq oldSnaps (getvar 'osmode));set snapReset T to use
  (if(= snapReset T)(setvar 'osmode 0))
  (vla-endundomark doc)
  (vla-startundomark doc)
  (setq writeToVBCode (open vbCode "w"))
  (if(not(= ss nil))
    (setq limit (sslength ss));end setq
  );end if
  (setq UCSName (getvar "UCSNAME")
        currentUCS (list(getvar "UCSORG")(trans (list 1 0 0)1 0)(trans(list 0 1 0)1 0)))
  (if(and(equal currentUCS (list '(0.0 0.0 0.0) '(1.0 0.0 0.0) '(0.0 1.0 0.0)))
	 (wcmatch UCSName ""))
     (setq UCSName "WCS")
     (if(or(wcmatch UCSName "")(= UCSName nil))
       (setq UCSName "Unnamed")
     );end if
   );end if
  (princ)
);end defun
;**************************************************************************************************************************************************
(defun RESET_UCS ()
  (if(not(= currentUCS nil))
    (if(not(equal currentUCS (list(getvar "UCSORG")(trans(list 1 0 0) 1 0)(trans(list 0 1 0)1 0))))
      (progn
        (if(= UCSName nil)(setq UCSName "WCS"))
        (if(wcmatch UCSName "Unnamed")
          ((if command-s command-s vl-cmdf) "_.UCS" "_3point" "_none" (trans(car currentUCS)0 1) "_none" (trans(cadr currentUCS)0 1) "_none" (trans(caddr currentUCS)0 1))
          (if(wcmatch UCSName "WCS")
            (command "_.UCS" "WORLD")
            (if(not(or(wcmatch UCSName "Unnamed")(wcmatch UCSName "WCS")))
              (command "_.UCS" "NAMED" "RESTORE" UCSName)
            );end if
          );end if
        );end if
      );end if
    );progn
  );end if
);end defun
;**************************************************************************************************************************************************
(defun END_ROUTINE ()
  ;(if(not(= i 0))(setq i 0))
  (if(= snapReset T)(setvar 'osmode oldSnaps))
  (setq snapReset nil)
  (if(not(= writeToVBCode nil))(progn(close writeToVBCode)(setq writeToVBCode nil)))
  (if(not(= vbcode nil))(progn(vl-file-delete vbCode)(setq vbcode nil)))
  (if(not(= writeToScript nil))(progn(close writeToScript)(setq writeToScript nil)))
  (if(not(= scriptProcess nil))(progn(vl-file-delete scriptProcess)(setq scriptProcess nil)))
  (if(not(= doc nil))(vla-endundomark doc))
  (if(not(= (getvar 'filedia) 1))(setvar 'filedia 1))
  (if(not(= (getvar 'cmdecho) 0))(setvar 'cmdecho 0))
  (if(not(= (getvar 'highlight) 1))(getvar 'highlight 1))
  (if(not(= DEFAULT_ERROR nil))
    (setq *ERROR* DEFAULT_ERROR
          DEFAULT_ERROR nil)
  );end if
  (princ)
);end defun
;**************************************************************************************************************************************************
(defun INSIDE_LOOP_VARIABLES (sset i / )
  (PROPERTY_CLEANUP)
  (setq SSentity (ssadd)
        ent (ssname sset i)
        entlist (entget(ssname sset i))
        entlistLength (length entlist)
        vla (vlax-ename->vla-object ent)
        SSentity (ssadd ent SSentity)
        entPrevious (ssname sset (1- i))
        entNextVar (ssname sset (1+ i))
        currentLayer (getvar "CLAYER")
        entGraphicID (cdr(nth 1 entlist))
        objectLayer (cdr(nth 7 entlist))
        ItemEntityName (cdr(nth 0 entlist))
        ItemCategory (cdr(nth 1 entlist))
        ItemEntityName2 (cdr(nth 2 entlist))
        ItemHandle (cdr(nth 3 entlist))
        ItemType (cdr(nth 4 entlist))
        ItemDXF67 (cdr(nth 5 entlist))
        ItemLocation (cdr(nth 6 entlist))
        ItemLayer (cdr(nth 7 entlist))
        ItemLayer2 (cdr(nth 8 entlist))
  );end setq
  (if(wcmatch entGraphicID "MAPS_SOLID")
    (progn
      (if(and(not(= entNextVar nil))(not(=(entget entNextVar)nil)))
          (setq entListNext (entget entNextVar)
                entListNextLength (length entListNext)
                ItemSourceFileNameNext (cdr(nth 15 entListNext))
                entGraphicIDNext (cdr(nth 1 entListNext))
                vlaNext (vlax-ename->vla-object entNextVar))
          (setq entNextVar nil)
      );end if
      (if(and(not(= entPrevious nil))(not(=(entget entPrevious)nil)))
          (setq entListPrevious (entget entPrevious)
                entListPreviousLength (length entListPrevious)
                ItemSourceFileNamePrevious (cdr(nth 15 entListPrevious))
                entGraphicIDPrevious (cdr(nth 1 entListPrevious))
                vlaPrevious (vlax-ename->vla-object entPrevious))
            (setq entPrevious nil)
      );end if
        (setq ItemCID (cdr(nth 9 entlist))
              ItemEntry# (cdr(nth 10 entlist))
              Item# (cdr(nth 11 entlist))
              ItemNotes (cdr(nth 12 entlist))
              ItemCutType (cdr(nth 13 entlist))
              ItemDescription (cdr(nth 14 entlist))
              ItemSourceFileName (cdr(nth 15 entlist))
              ItemArea (cdr(nth 16 entlist))
              ItemGauge (cdr(nth 17 entlist))
              ItemSpecGroup (cdr(nth 18 entlist))
              ItemSpecData (cdr(nth 19 entlist))
              ItemInsulation (cdr(nth 20 entlist))
              ItemInsFacing (cdr(nth 21 entlist))
              ItemInsMaterial&Gauge (cdr(nth 22 entlist))
              ItemMaterial&Gauge (cdr(nth 23 entlist))
              ItemMaterialAbrv (cdr(nth 24 entlist))
              ItemInsSpecGroup (cdr(nth 25 entlist))
              ItemInsSpecData (cdr(nth 26 entlist))
              ItemCustomData1 (cdr(nth 27 entlist))
              ItemCustomData2 (cdr(nth 28 entlist))
              ItemCustomData3 (cdr(nth 29 entlist))
              ItemCustomData4 (cdr(nth 30 entlist))
              ItemCustomData5 (cdr(nth 31 entlist))
              ItemCustomData6 (cdr(nth 32 entlist))
              ItemCustomData7 (cdr(nth 33 entlist))
              ItemCustomData8 (cdr(nth 34 entlist))
              ItemCustomData9 (cdr(nth 35 entlist))
              ItemCustomData10 (cdr(nth 36 entlist))
              ItemSectionIndex (cdr(nth 37 entlist))
              ItemSectionName (cdr(nth 38 entlist))
              ItemDamperFlag1 (cdr(nth 39 entlist))
              ItemDamperName1 (cdr(nth 40 entlist))
              ItemDamperFlag2 (cdr(nth 41 entlist))
              ItemDamperName2 (cdr(nth 42 entlist))
              ItemDamperFlag3 (cdr(nth 43 entlist))
              ItemDamperName3 (cdr(nth 44 entlist))
              ItemDamperFlag4 (cdr(nth 45 entlist))
              ItemDamperName4 (cdr(nth 46 entlist))
              ItemWeight (cdr(nth 47 entlist))
        );end setq
      (if(not(or(= ItemInsMaterial&Gauge nil)(= ItemInsMaterial&Gauge "")))
        (progn
        (STRING_SPLIT " x " ItemInsMaterial&Gauge)
          (progn
            (if(not(= nth0 nil))(setq InsulationMaterial nth0))
            (if(not(= nth1 nil))(setq InsulationGauge (distof nth1 2))(setq InsulationGauge 0))
	  );end progn
        );end progn
      );end if
      (if(not(= InsulationGauge nil))
        (if(= ItemInsulation "Inside")(setq InsulationGauge (- 0 InsulationGauge))
          (if(= ItemInsulation "Off")(setq InsulationGauge 0)
          );end if
        );end if
        (setq InsulationGauge 0)
      );end if
      (if(= ItemSectionName "")(setq ItemSectionName "None"))
      (if(and(not(= ItemSectionName nil))(not(= ItemSectionName "None"))(not(= ItemSectionName "")))
        (progn
          (STRING_SPLIT ": " ItemSectionName)
          (if(not(= nth0 nil))(setq job#&Name nth0))
          (if(not(= nth1 nil))(setq ItemLevel nth1))
          (if(not(= ItemLevel nil))
          (if(wcmatch (strcase ItemLevel) "*LEVEL*")
            (if(wcmatch ItemLevel "*LEVEL-*")
              (setq lvlDelim "LEVEL-")
              (if(wcmatch ItemLevel "*LEVEL *")
                (setq lvlDelim "LEVEL ")
                (if(wcmatch ItemLevel "*LEVEL:*")
                  (setq lvlDelim "LEVEL:")
                  (if(wcmatch ItemLevel "*LEVEL;*")
                    (setq lvlDelim "LEVEL;")
                    (if(wcmatch ItemLevel "*LEVEL_*")
                      (setq lvlDelim "LEVEL_")
                      (if(wcmatch ItemLevel "*Level-*")
                        (setq lvlDelim "Level-")
                        (if(wcmatch ItemLevel "*Level *")
                          (setq lvlDelim "Level ")
                          (if(wcmatch ItemLevel "*Level:*")
                            (setq lvlDelim "Level:")
                            (if(wcmatch ItemLevel "*Level;*")
                              (setq lvlDelim "Level;")
                              (if(wcmatch ItemLevel "*Level_*")
                                (setq lvlDelim "Level_")
                                (if(wcmatch ItemLevel "*level-*")
                                  (setq lvlDelim "level-")
                                  (if(wcmatch ItemLevel "*level *")
                                    (setq lvlDelim "level ")
                                    (if(wcmatch ItemLevel "*level:*")
                                      (setq lvlDelim "level:")
                                      (if(wcmatch ItemLevel "*level;*")
                                        (setq lvlDelim "level;")
                                        (if(wcmatch ItemLevel "*level_*")
                                          (setq lvlDelim "level_")
                                          (if(wcmatch ItemLevel "*level*")
                                            (setq lvlDelim "level")
                                            (if(wcmatch ItemLevel "*Level*")
                                              (setq lvlDelim "Level")
                                              (if(wcmatch ItemLevel "*LEVEL*")
                                                (setq lvlDelim "LEVEL")
                                                (if(wcmatch ItemLevel "*lev-*")
                                                  (setq lvlDelim "lev-")
                                                  (if(wcmatch ItemLevel "*lev *")
                                                    (setq lvlDelim "lev ")
                                                    (if(wcmatch ItemLevel "*lev:*")
                                                      (setq lvlDelim "lev:")
                                                      (if(wcmatch ItemLevel "*lev;*")
                                                        (setq lvlDelim "lev;")
                                                        (if(wcmatch ItemLevel "*lev_*")
                                                          (setq lvlDelim "lev_")
                                                          (if(wcmatch ItemLevel "*Lev-*")
                                                            (setq lvlDelim "Lev-")
                                                            (if(wcmatch ItemLevel "*Lev *")
                                                              (setq lvlDelim "Lev ")
                                                              (if(wcmatch ItemLevel "*Lev:*")
                                                                (setq lvlDelim "Lev:")
                                                                (if(wcmatch ItemLevel "*Lev;*")
                                                                  (setq lvlDelim "Lev;")
                                                                  (if(wcmatch ItemLevel "*Lev_*")
                                                                    (setq lvlDelim "Lev_")
                                                                    (if(wcmatch ItemLevel "*LEV-*")
                                                                      (setq lvlDelim "LEV-")
                                                                      (if(wcmatch ItemLevel "*LEV *")
                                                                        (setq lvlDelim "LEV ")
                                                                        (if(wcmatch ItemLevel "*LEV:*")
                                                                          (setq lvlDelim "LEV:")
                                                                          (if(wcmatch ItemLevel "*LEV;*")
                                                                            (setq lvlDelim "LEV;")
                                                                            (if(wcmatch ItemLevel "*LEV_*")
                                                                              (setq lvlDelim "LEV_")
                                                                              (if(wcmatch ItemLevel "* l-#*")
                                                                                (setq lvlDelim "l-")
                                                                                (if(wcmatch ItemLevel "* l #*")
                                                                                  (setq lvlDelim "l ")
                                                                                  (if(wcmatch ItemLevel "* l:#*")
                                                                                    (setq lvlDelim "l:")
                                                                                    (if(wcmatch ItemLevel "* l;#*")
                                                                                      (setq lvlDelim "l;")
                                                                                      (if(wcmatch ItemLevel "* l_#*")
                                                                                        (setq lvlDelim "l_")
                                                                                        (if(wcmatch ItemLevel "* L-#*")
                                                                                          (setq lvlDelim "L-")
                                                                                          (if(wcmatch ItemLevel "* L #*")
                                                                                            (setq lvlDelim "L ")
                                                                                            (if(wcmatch ItemLevel "* L:#*")
                                                                                              (setq lvlDelim "L:")
                                                                                              (if(wcmatch ItemLevel "* L;#*")
                                                                                                (setq lvlDelim "L;")
                                                                                                (if(wcmatch ItemLevel "* L_#*")
                                                                                                  (setq lvlDelim "L_")
                                                                                                  (setq lvlDelim nil)
          ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) );end ifs
        (if(not(= job#&Name nil))
          (if(wcmatch job#&Name "*#### *")
            (setq Job#Delim " ")
              (if(wcmatch job#&Name "*####-*")
                (setq Job#Delim "-")
                (if(wcmatch job#&Name "*####;*")
                  (setq Job#Delim ";")
                  (if(wcmatch job#&Name "*####:*")
                    (setq Job#Delim ":")
                    (if(wcmatch job#&Name "*####_*")
                      (setq Job#Delim "_")
            ) ) ) ) ) );end ifs
            (if(not(= job#Delim nil))
              (progn
                (STRING_SPLIT Job#Delim job#&Name)
                (if(not(= nth0 nil))(setq Job# nth0))
                (if(not(= nth1 nil))(setq JobName nth1))
              );progn
            );end if
            (if(not(= lvlDelim nil))
              (progn
                (STRING_SPLIT lvlDelim ItemLevel)
                (if(and(= nth1 nil)(wcmatch (strcase ItemLevel) "*LOWER*"))
	          (setq ItemLevel "Lower")
                  (if(not(= nthLast nil))
	            (setq ItemLevel nthLast)
                ) );end if
              );progn
            );end if
          );progn
        );end if
(setq defaultRange 9
      nameMin 48
      nameMax 72
      endSizeMin 73
      endSizeMax 97
      widthMin 98
      widthMax 122
      depthMin 123
      depthMax 147
      coordinateMin 148
      coordinateMax 357
      dimensionMin 358
      dimensionMax 557
      elevationTagWidth 20
      elevationTagDepth 11.25
      sizeTagWidth 20
      sizeTagDepth 4.75
);end setq
(if(not(= ent nil))
  (progn
    (setq entCnt 0
          NumberActive nil
	  SizeActive nil
	  ElevationActive nil
	  AliasActive nil
	  OffsetActive nil
	  LengthActive nil)
    (while(< entCnt entlistLength)
      (setq elm (cdr(nth entCnt entlist))
            dxfClass (car(nth entCnt entlist)))
      (if(and(>= entCnt nameMin)(< entCnt nameMax))
        (progn
          (setq assignedVar (strcat "c" (rtos (+ 1 (- entCnt nameMin)) 2 0) "Name"))
          (set (read assignedVar) elm)
          ;(princ (strcat "Assigned: " assignedVar " as " elm))(terpri)
        );progn
        (if(and(>= entCnt endSizeMin)(< entCnt endSizeMax))
          (progn
            (setq assignedVar (strcat "c" (rtos (+ 1 (- entCnt endSizeMin)) 2 0) "EndSize"))
            (set (read assignedVar) elm)
            ;(princ (strcat "Assigned: " assignedVar " as " elm))(terpri)
          );progn
          (if(and(>= entCnt widthMin)(< entCnt widthMax))
            (progn
              (setq assignedVar (strcat "c" (rtos (+ 1 (- entCnt widthMin)) 2 0) "Width"))
              (set (read assignedVar) (distof elm 2))
              ;(princ (strcat "Assigned: " assignedVar " as " elm))(terpri)
            );progn
            (if(and(>= entCnt depthMin)(< entCnt depthMax))
              (progn
                (setq assignedVar (strcat "c" (rtos (+ 1 (- entCnt depthMin)) 2 0) "Depth"))
                (set (read assignedVar) (distof elm 2))
                ;(princ (strcat "Assigned: " assignedVar " as " elm))(terpri)
              );progn
              (if(and(>= entCnt coordinateMin)(< entCnt coordinateMax))
                (progn
                  (setq cCnt 1)
                  (while(< entCnt coordinateMax)
                    (setq assignedVar1 (strcat "c" (rtos cCnt 2 0) "X")
                          assignedVar2 (strcat "c" (rtos cCnt 2 0) "Y")
                          assignedVar3 (strcat "c" (rtos cCnt 2 0) "Z"))
                    (set (read assignedVar1) (distof elm 2))
                    (set (read assignedVar2) (distof (cdr(nth (1+ entCnt) entlist)) 2))
                    (set (read assignedVar3) (distof (cdr(nth (+ entCnt 2) entlist)) 2))
                    ;(princ (strcat "Assigned: " assignedVar1 " as " elm ", " assignedVar2 " as " (cdr(nth (1+ entCnt) entlist)) ", " assignedVar3 " as " (cdr(nth (+ entCnt 2) entlist))))(terpri)
                    (setq entCnt (+ entCnt 3)
                          cCnt (1+ cCnt)
                          elm (cdr(nth entCnt entlist)));setq
                  );while
                  (setq entCnt (1- entCnt));setq
                );progn
                (if(and(>= entCnt dimensionMin)(< entCnt dimensionMax))
                  (progn
                    (setq assignedVar (strcat "dim" (rtos (+ 1 (- entCnt dimensionMin)) 2 0)))
                    (set (read assignedVar) (distof elm 2))
                    ;(princ (strcat "Assigned: " assignedVar " as " elm))(terpri)
                  );progn
                  (if(= dxfClass 301)
                    (setq NumberActive T
                          NumberToggle (cdr(nth entCnt entlist)))
                    (if(= dxfClass 302)
                      (setq SizeActive T
                            SizeToggle (cdr(nth entCnt entlist)))
                      (if(= dxfClass 303)
                        (setq ElevationActive T
                              ElevationToggle (cdr(nth entCnt entlist)))
                        (if(= dxfClass 304)
                          (setq AliasActive T
                                AliasToggle (cdr(nth entCnt entlist)))
                          (if(= dxfClass 305)
                            (setq OffsetActive T
                                  OffsetToggle (cdr(nth entCnt entlist)))
                            (if(= dxfClass 306)
                              (setq LengthActive T
                                    LengthToggle (cdr(nth entCnt entlist)))
      ) ) ) ) ) ) ) ) ) ) ) );end ifs
    (setq entCnt (1+ entCnt));setq
  );while
  (setq newItem (and(= NumberActive nil)(= SizeActive nil)(= ElevationActive nil)(= AliasActive nil)(= OffsetActive nil)(= LengthActive nil)))
  (if(not(= entNextVar nil))
    (progn
      (setq entCnt 0)
      (while(< entCnt entListNextLength)
        (setq elm (cdr(nth entCnt entListNext)))
        (if(and(>= entCnt nameMin)(< entCnt nameMax))
          (progn
            (setq assignedVar (strcat "c" (rtos (+ 1 (- entCnt nameMin)) 2 0) "NameNext"))
            (set (read assignedVar) elm)
            ;(princ (strcat "Assigned: " assignedVar " as " elm))(terpri)
          );progn
        (if(and(>= entCnt endSizeMin)(< entCnt endSizeMax))
          (progn
            (setq assignedVar (strcat "c" (rtos (+ 1 (- entCnt endSizeMin)) 2 0) "EndSizeNext"))
            (set (read assignedVar) elm)
            ;(princ (strcat "Assigned: " assignedVar " as " elm))(terpri)
          );progn
          (if(and(>= entCnt widthMin)(< entCnt widthMax))
            (progn
              (setq assignedVar (strcat "c" (rtos (+ 1 (- entCnt widthMin)) 2 0) "WidthNext"))
              (set (read assignedVar) (distof elm 2))
              ;(princ (strcat "Assigned: " assignedVar " as " elm))(terpri)
            );progn
            (if(and(>= entCnt depthMin)(< entCnt depthMax))
              (progn
                (setq assignedVar (strcat "c" (rtos (+ 1 (- entCnt depthMin)) 2 0) "DepthNext"))
                (set (read assignedVar) (distof elm 2))
                ;(princ (strcat "Assigned: " assignedVar " as " elm))(terpri)
              );progn
              (if(and(>= entCnt coordinateMin)(< entCnt coordinateMax))
                (progn
                  (setq cCnt 1)
                  (while(< entCnt coordinateMax)
                    (setq assignedVar1 (strcat "c" (rtos cCnt 2 0) "XNext")
                          assignedVar2 (strcat "c" (rtos cCnt 2 0) "YNext")
                          assignedVar3 (strcat "c" (rtos cCnt 2 0) "ZNext"))
                    (set (read assignedVar1) (distof elm 2))
                    (set (read assignedVar2) (distof (cdr(nth (1+ entCnt) entListNext)) 2))
                    (set (read assignedVar3) (distof (cdr(nth (+ entCnt 2) entListNext)) 2))
                    ;(princ (strcat "Assigned: " assignedVar1 " as " elm ", " assignedVar2 " as " (cdr(nth (1+ entCnt) entListNext)) ", " assignedVar3 " as " (cdr(nth (+ entCnt 2) entListNext))))(terpri)
                    (setq entCnt (+ entCnt 3)
                          cCnt (1+ cCnt)
                          elm (cdr(nth entCnt entListNext)));setq
                  );while
                  (setq entCnt (1- entCnt));setq
                );progn
                (if(and(>= entCnt dimensionMin)(< entCnt dimensionMax))
                  (progn
                    (setq assignedVar (strcat "dim" (rtos (+ 1 (- entCnt dimensionMin)) 2 0) "Next"))
                    (set (read assignedVar) (distof elm 2))
                    ;(princ (strcat "Assigned: " assignedVar " as " elm))(terpri)
                  );progn
      ) ) ) ) ) );end ifs
    (setq entCnt (1+ entCnt));setq
  );while
  );end progn
);end if
(if(not(= entPrevious nil))
  (progn
    (setq entCnt 0)
    (while(< entCnt entListPreviousLength)
      (setq elm (cdr(nth entCnt entListPrevious)))
      (if(and(>= entCnt nameMin)(< entCnt nameMax))
        (progn
          (setq assignedVar (strcat "c" (rtos (+ 1 (- entCnt nameMin)) 2 0) "NamePrevious"))
          (set (read assignedVar) elm)
          ;(princ (strcat "Assigned: " assignedVar " as " elm))(terpri)
        );progn
        (if(and(>= entCnt endSizeMin)(< entCnt endSizeMax))
          (progn
            (setq assignedVar (strcat "c" (rtos (+ 1 (- entCnt endSizeMin)) 2 0) "EndSizePrevious"))
            (set (read assignedVar) elm)
            ;(princ (strcat "Assigned: " assignedVar " as " elm))(terpri)
          );progn
          (if(and(>= entCnt widthMin)(< entCnt widthMax))
            (progn
              (setq assignedVar (strcat "c" (rtos (+ 1 (- entCnt widthMin)) 2 0) "WidthPrevious"))
              (set (read assignedVar) (distof elm 2))
              ;(princ (strcat "Assigned: " assignedVar " as " elm))(terpri)
            );progn
            (if(and(>= entCnt depthMin)(< entCnt depthMax))
              (progn
                (setq assignedVar (strcat "c" (rtos (+ 1 (- entCnt depthMin)) 2 0) "DepthPrevious"))
                (set (read assignedVar) (distof elm 2))
                ;(princ (strcat "Assigned: " assignedVar " as " elm))(terpri)
              );progn
              (if(and(>= entCnt coordinateMin)(< entCnt coordinateMax))
                (progn
                  (setq cCnt 1)
                  (while(< entCnt coordinateMax)
                    (setq assignedVar1 (strcat "c" (rtos cCnt 2 0) "XPrevious")
                          assignedVar2 (strcat "c" (rtos cCnt 2 0) "YPrevious")
                          assignedVar3 (strcat "c" (rtos cCnt 2 0) "ZPrevious"))
                    (set (read assignedVar1) (distof elm 2))
                    (set (read assignedVar2) (distof (cdr(nth (1+ entCnt) entListPrevious)) 2))
                    (set (read assignedVar3) (distof (cdr(nth (+ entCnt 2) entListPrevious)) 2))
                    ;(princ (strcat "Assigned: " assignedVar1 " as " elm ", " assignedVar2 " as " (cdr(nth (1+ entCnt) entListPrevious)) ", " assignedVar3 " as " (cdr(nth (+ entCnt 2) entListPrevious))))(terpri)
                    (setq entCnt (+ entCnt 3)
                          cCnt (1+ cCnt)
                          elm (cdr(nth entCnt entListPrevious)));setq
                  );while
                  (setq entCnt (1- entCnt));setq
                );progn
                (if(and(>= entCnt dimensionMin)(< entCnt dimensionMax))
                  (progn
                    (setq assignedVar (strcat "dim" (rtos (+ 1 (- entCnt dimensionMin)) 2 0) "Previous"))
                    (set (read assignedVar) (distof elm 2))
                    ;(princ (strcat "Assigned: " assignedVar " as " elm))(terpri)
                  );progn
      ) ) ) ) ) );end ifs
    (setq entCnt (1+ entCnt));setq
  );while
  );progn
);end if
  );end progn
);end if
        (setq ItemService (vlax-get-property vla 'ServiceName)
              ItemPoints (vlax-get-property vla 'Points)
              ItemElevation (vlax-get-property vla 'Elevation)
              ItemArea (vlax-get-property vla 'Area)
              ItemLengthAngle (vlax-get-property vla 'LengthAngle)
              ItemStatus (vlax-get-property vla 'Status)
              ItemCustomData (vlax-get-property vla 'CustomData)
              ItemEndSize (vlax-get-property vla 'EndSize)
        );end setq
        (if(and(not(= ItemElevation nil))(not(= ItemElevation ""))(not(= c1depth nil)))
          (progn
	    (if(and(wcmatch ItemElevation "*, *")(not(wcmatch ItemElevation "*CL*")))
              (progn
                (STRING_SPLIT ", " ItemElevation)
                (if(not(=(distof nth1) nil))(setq bottomElevation (distof nth1)))
                (if(not(=(distof nth1) nil))(setq centerLineElevation (+(distof nth1)(/ c1depth 2))))
                (if(not(=(distof nth0) nil))(setq topElevation (distof nth0)))
              );progn
	      (if(wcmatch ItemElevation "*CL*")
                (progn
                  (STRING_SPLIT "CL" ItemElevation)
                  (if(not(=(distof nth0) nil))(setq bottomElevation (-(distof nth0)(/ c1depth 2))))
                  (if(not(=(distof nth0) nil))(setq centerLineElevation (distof nth0)))
                  (if(not(=(distof nth0) nil))(setq topElevation (+(distof nth0)(/ c1depth 2))))
                );progn
              );end if
            );end if
          );progn
        );end if
        (if(= ItemHandle nil)(setq ItemHandle (vla-get-Handle vla)))
        (if(= ItemDescription nil)(setq ItemDescription (vlax-get-property vla 'Description)))
        (if(= ItemSourceFileName nil)(setq ItemSourceFileName (vlax-get-property vla 'Description)))
        (if(= Item# nil)(setq Item# (vlax-get-property vla 'ItemNumber)))
        (if(= ItemNotes nil)(setq ItemNotes (vlax-get-property vla 'Notes)))
        (if(= ItemSectionName nil)(setq ItemSectionName (vlax-get-property vla 'Section)))
        (if(= ItemWeight nil)(setq ItemWeight (vlax-get-property vla 'Weight)));end setq
        (if(>= (distof acadVersionYear) 2019)
          (setq ItemServiceType (vlax-get-property vla 'ItemServiceType))(setq ItemServiceType ""));end setq / if
        (if(and(not(= ItemCustomData nil))(not(= ItemCustomData "")))
          (progn
            (STRING_SPLIT "," ItemCustomData)
            (setq ItemCustomDataList lst
                  count 1)
            (foreach el ItemCustomDataList
              (STRING_SPLIT " = " el)
              (if(not(= nth0 nil))
                (progn
                  (set(read(strcat "itemCustomData" (rtos count 2 0) "Name"))nth0)
                  (if(not(= nth1 nil))
                    (set (read nth0) nth1)
                    (set (read nth0) "")
                  );end if
                );progn
              );end if
	      (setq count (1+ count))
            );end foreach
            (setq count nil
                  ItemCustomDataList nil)
          );end progn
        );end if
  (if(= c1x nil)
    (progn
      (CONNECTOR_PARSE 1 ItemEndSize ItemPoints)
      (setq c1Name cName
            c1Width cWidth
            c1Depth cDepth
            c1x cX
            c1y cY
            c1z cZ);end setq
      (CONNECTOR_PARSE 2 ItemEndSize ItemPoints)
      (setq c2Name cName
            c2Width cWidth
            c2Depth cDepth
            c2x cX
            c2y cY
            c2z cZ)
      (CONNECTOR_PARSE 3 ItemEndSize ItemPoints)
      (setq c3Name cName
            c3Width cWidth
            c3Depth cDepth
            c3x cX
            c3y cY
            c3z cZ);end setq
      (CONNECTOR_PARSE 4 ItemEndSize ItemPoints)
      (setq c4Name cName
            c4Width cWidth
            c4Depth cDepth
            c4x cX
            c4y cY
            c4z cZ);end setq
    );end progn
  );end if
        (if(and(= entGraphicIDNext "MAPS_SOLID")(not(= vlaNext nil)))
          (progn
            (setq ItemSourceFileNameNext (vlax-get-property vlaNext 'Description)
                  ItemEndSizeNext (vlax-get-property vlaNext 'EndSize)
                  ItemPointsNext (vlax-get-property vlaNext 'Points));end setq
            (if(>= (distof acadVersionYear) 2019)
              (setq vlaxItemServiceNameNext (vlax-get-property vlaNext 'ItemServiceType)));end setq / if
            (if(= c1xNext nil)
              (progn
                    (CONNECTOR_PARSE 1 ItemEndSizeNext ItemPointsNext)
                    (setq c1NameNext cName
                          c1WidthNext cWidth
                          c1DepthNext cDepth
                          c1xNext cX
                          c1YNext cY
                          c1ZNext cZ);end setq
                    (CONNECTOR_PARSE 2 ItemEndSizeNext ItemPointsNext)
                    (setq c2NameNext cName
                          c2WidthNext cWidth
                          c2DepthNext cDepth
                          c2xNext cX
                          c2YNext cY
                          c2ZNext cZ);end setq
              );end progn
            );end if
          );end progn
        );end if
      (if(and(= entGraphicIDPrevious "MAPS_SOLID")(not(= vlaPrevious nil)))
        (progn
          (setq ItemSourceFileNamePrevious (vlax-get-property vlaPrevious 'Description)
                ItemEndSizePrevious (vlax-get-property vlaPrevious 'EndSize)
                ItemPointsPrevious (vlax-get-property vlaPrevious 'Points));end setq
          (if(>= (distof acadVersionYear) 2019)
            (setq ItemServiceTypePrevious (vlax-get-property vlaPrevious 'ItemServiceType)));end setq / if
          (if(= c1XPrevious nil)
            (progn
                  (CONNECTOR_PARSE 1 ItemEndSizePrevious ItemPointsPrevious)
                  (setq c1NamePrevious cName
                        c1WidthPrevious cWidth
                        c1DepthPrevious cDepth
                        c1XPrevious cX
                        c1YPrevious cY
                        c1ZPrevious cZ);end setq
                  (CONNECTOR_PARSE 2 ItemEndSizePrevious ItemPointsPrevious)
                  (setq c2NamePrevious cName
                        c2WidthPrevious cWidth
                        c2DepthPrevious cDepth
                        c2XPrevious cX
                        c2YPrevious cY
                        c2ZPrevious cZ)
            );end progn
          );end if
        );end progn
      );end if
      (setq rectangularItems (or
                          (wcmatch (strcase ItemSourceFileName)(strcase "OGEE"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Transition"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "F 41"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "SQ-RD"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Square to Round"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Mitered Offset Fixed"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "*CFSD*"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Straight")))
                       )
      (setq allSupport (or
                          (wcmatch (strcase ItemSourceFileName)(strcase "Rectangular Bearer"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Double Rectangular Bearer"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Belly Band"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Flat Strap (Rectangle)"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Flat Strap (Round)"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Wrap Round"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "*Clevis*"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "*Pipe Roll*"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "*Stiffy Fig. 108*"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Supports Angle"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Supports Post"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Supports Angle Round"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Supports Post Round"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Supports Angle Double"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Supports Post Double"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Angle"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Post"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Angle Round"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Post Round"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Angle Double"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Post Double"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Seismic"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Rectangular Duct Seismic"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Round Duct or Pipe Seismic"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Equipment Seismic"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Rectangular Seismic"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Round Seismic"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Misc Seismic"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Strap Single"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Post Single"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Angle Single")))
            hangerSupport&Seismic (or
                          (wcmatch (strcase ItemSourceFileName)(strcase "Rectangular Bearer"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Double Rectangular Bearer"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Belly Band"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Flat Strap (Rectangle)"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Flat Strap (Round)"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Wrap Round"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "*Clevis*"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "*Pipe Roll*"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "*Stiffy Fig. 108*"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Strap Single"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Seismic"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Equipment Seismic"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Rectangular Duct Seismic"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Round Duct or Pipe Seismic"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Rectangular Seismic"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Round Seismic"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Misc Seismic")))
            hangerSupport (or
                          (wcmatch (strcase ItemSourceFileName)(strcase "Rectangular Bearer"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Double Rectangular Bearer"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Belly Band"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Flat Strap (Rectangle)"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Flat Strap (Round)"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Wrap Round"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "*Clevis*"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "*Pipe Roll*"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "*Stiffy Fig. 108*"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Strap Single")))
            strapSupport (or
                          (wcmatch (strcase ItemSourceFileName)(strcase "Flat Strap (Rectangle)"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Flat Strap (Round)"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Flat Strap (Oval)"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Wrap Round"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Strap Single")))
            rodSupport (or(wcmatch (strcase ItemSourceFileName)(strcase "Rectangular Bearer"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Double Rectangular Bearer"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Belly Band"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "*Clevis*"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "*Pipe Roll*"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "*Stiffy Fig. 108*")))
            gravity (or
                          (wcmatch (strcase ItemSourceFileName)(strcase "Rectangular Bearer"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Double Rectangular Bearer"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Belly Band"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Flat Strap (Rectangle)"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Flat Strap (Round)"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Wrap Round"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "*Clevis*"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "*Pipe Roll*"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "*Stiffy Fig. 108*"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Strap Single"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Supports Angle"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Supports Post"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Supports Angle Round"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Supports Post Round"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Supports Angle Double"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Supports Post Double"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Angle"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Post"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Angle Round"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Post Round"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Angle Double"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Post Double"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Angle Single"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Post Single")))
            seismic (or
                          (wcmatch (strcase ItemSourceFileName)(strcase "Equipment Seismic"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Rectangular Duct Seismic"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Round Duct or Pipe Seismic"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Rectangular Seismic"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Round Seismic"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Misc Seismic"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Seismic")))
            singleHanger (or
                          (wcmatch (strcase ItemSourceFileName)(strcase "Wrap Round"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "*Clevis*"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "*Pipe Roll*"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "*Stiffy Fig. 108*"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Strap Single")))
            singleHangerSeismic (or singleHanger seismic)
            singleFloorSupport(or
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Angle Single"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Post Single")))
            singleSupportAll (or singleFloor singleHangerSeismic)
            singleGravity (or
                          (wcmatch (strcase ItemSourceFileName)(strcase "Wrap Round"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "*Clevis*"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "*Pipe Roll*"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "*Stiffy Fig. 108*"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Strap Single"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Angle Single")))
            singleGravitySeismic (or
                          (wcmatch (strcase ItemSourceFileName)(strcase "Wrap Round"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "*Clevis*"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "*Pipe Roll*"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "*Stiffy Fig. 108*"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Seismic"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Equipment Seismic"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Rectangular Duct Seismic"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Round Duct or Pipe Seismic"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Rectangular Seismic"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Round Seismic"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Misc Seismic"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Strap Single"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Angle Single")))
            floorSupport (or 
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Supports Angle"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Supports Post"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Supports Angle Round"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Supports Post Round"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Supports Angle Double"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Supports Post Double"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Angle"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Post"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Angle Round"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Post Round"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Angle Double"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Post Double"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Angle Single"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Post Single")))
            angleSupport (and floorSupport
                          (wcmatch (strcase ItemSourceFileName)(strcase "*Angle*")))
            postSupport (and floorSupport
                          (wcmatch (strcase ItemSourceFileName)(strcase "*Post*")))
            doubleHangerSupport (or
                          (wcmatch (strcase ItemSourceFileName)(strcase "Rectangular Bearer"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Belly Band"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Flat Strap (Rectangle)"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Flat Strap (Round)"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Double Rectangular Bearer")))
            doubleFloorSupport (or
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Supports Angle"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Supports Post"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Supports Angle Round"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Supports Post Round"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Supports Angle Double"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Supports Post Double"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Angle"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Post"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Angle Round"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Post Round"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Angle Double"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Floor Support Post Double")))
            doubleSupportAll (or doubleFloorSupport doubleHangerSupport)
            FireDamper (or
                          (wcmatch (strcase ItemSourceFileName)(strcase "Greenheck FSD-212 CFSD (21in Sleeve)"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Greenheck FSD-212 CFSD (ADJ Sleeve)"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Greenheck FSD-212 CFSD Rnd (21in Product List)"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Greenheck FSD-212 CFSD Rnd (ADJ Sleeve)"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Fire Damper (Rectangular)"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Fire Damper (Round)")))
            textAdjustmentWarranted (and
                          (not onlyC1)
                          (or
                          (wcmatch ItemCID "40")
                          (wcmatch (strcase ItemSourceFileName)(strcase "*SPIRAL"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Tube"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "*Welded Pipe*"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "OGEE"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Transition"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "F 41"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "SQ-RD"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Square to Round"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Mitered Offset Fixed"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "*CFSD*"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Straight")))
                          (not
                          (wcmatch (strcase ItemNotes)(strcase "*DON'T FAB*"))))
             addLength (or
                          ;(and(wcmatch (strcase ItemSourceFileName)(strcase "*SPIRAL"))(> ItemLengthAngle 4))
                          ;(and(wcmatch (strcase ItemSourceFileName)(strcase "Tube"))(> ItemLengthAngle 4))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Straight"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "OGEE"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Transition"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "F 41"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "SQ-RD"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Square to Round"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Mitered Offset Fixed"))
                          (wcmatch ItemCID "40"))
            addOffset (and(not onlyC1)
                      (or
                          (wcmatch (strcase ItemSourceFileName)(strcase "OGEE"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Transition"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "F41"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "SQ-RD"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Square to Round"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "Mitered Offset Fixed"))))
            addAlias (or
                          (wcmatch (strcase ItemSourceFileName)(strcase "*CAP"))
                          (wcmatch (strcase ItemSourceFileName)(strcase "*CFSD*")))
            trimblePoint (or
                          (wcmatch ItemCID "1049")
                          (wcmatch (strcase ItemSourceFileName) "REFERENCE POINT")
                          (wcmatch (strcase ItemSourceFileName) "WORK POINT")
                          (wcmatch (strcase ItemSourceFileName) "ANCHOR POINT")
                          (wcmatch (strcase ItemSourceFileName) "CONTROL LINE")
                          (wcmatch (strcase ItemSourceFileName) "EQUIPMENT PAD")
                          (wcmatch (strcase ItemSourceFileName) "FLOOR BLOCKOUT")
                          (wcmatch (strcase ItemSourceFileName) "WALL BLOCKOUT")
                          (wcmatch (strcase ItemSourceFileName) "BLUE BANGER")
                          (wcmatch (strcase ItemSourceFileName) "QUICK BOLT")
                          (wcmatch (strcase ItemSourceFileName) "WEDGE ANCHOR")
                          (wcmatch (strcase ItemSourceFileName) "STRAP INSERT")
                          (wcmatch (strcase ItemSourceFileName) "WIRE INSERT")
                          (wcmatch (strcase ItemSourceFileName) "1.0 INSERT")
                          (wcmatch (strcase ItemSourceFileName) ".875 INSERT")
                          (wcmatch (strcase ItemSourceFileName) ".75 INSERT")
                          (wcmatch (strcase ItemSourceFileName) ".625 INSERT")
                          (wcmatch (strcase ItemSourceFileName) ".5 INSERT")
                          (wcmatch (strcase ItemSourceFileName) ".375 INSERT"))
            blockout (or  (wcmatch(strcase ItemSourceFileName)(strcase "Supply Blockout"))
                          (wcmatch(strcase ItemSourceFileName)(strcase "Return-Transfer Blockout"))
                          (wcmatch(strcase ItemSourceFileName)(strcase "Exhaust Blockout"))
                          (wcmatch(strcase ItemSourceFileName)(strcase "Floor Block Out"))
                          (wcmatch(strcase ItemSourceFileName)(strcase "Wall Block Out")))
            roundBlockout (wcmatch(strcase ItemSourceFileName)(strcase "Round Blockout"))
          );end setq
      (if(not(or(= c1ZPrevious nil)(= c2ZPrevious nil)(= c1ZNext nil)(= c2ZNext nil)(= entNextVar nil)(= entPrevious nil)))
        (setq previousCAvg (/ (+ c1ZPrevious c2ZPrevious) 2)
              nextCAvg (/ (+ c1ZNext c2ZNext) 2)));end setq / if
      (if(not(= c1Width nil))
        (if(< c2Width c1Width)
          (setq smlWidth c2width
                lrgWidth c1width
          );end setq
          (setq smlWidth c1width
                lrgWidth c2width
          );end setq
      ) );end ifs
      (if(and(= c1Depth nil)(not textAdjustmentWarranted))(if(not(= dim1 nil))(setq c1Depth dim1 c2Depth dim1)(setq c1Depth 1 c2Depth 1)))
      (setq c1xyz (list c1x c1y c1z)
            c2xyz (list c2x c2y c2z)
            c3xyz (list c3x c3y c3z))
      (if(wcmatch ItemSourceFileName "*Mitered Offset*")
        (setq PrimaryPoint c2xyz
              SecondaryPoint c3xyz);end setq
        (setq PrimaryPoint c1xyz
              SecondaryPoint c2xyz);end setq
      );end if
      (if(or(=(car SecondaryPoint)nil)(=(cadr SecondaryPoint)nil)(=(caddr SecondaryPoint)nil))(setq SecondaryPoint PrimaryPoint))
      (if(and(not(= c1z nil))(not(= c2z nil)))
        (setq entCAvg (/ (+ c1z c2z) 2)));end setq / if
      (setq onlyC1 (or
		   (and(not(= PrimaryPoint nil))(= SecondaryPoint nil));and
                   (and(= PrimaryPoint nil)(not(= SecondaryPoint nil)));and
                   );or
            slopedItem (or(>(caddr PrimaryPoint)(caddr SecondaryPoint))(<(caddr PrimaryPoint)(caddr SecondaryPoint)))
            itemElevationDifference (or(> entCAvg previousCAvg)
                                       (< entCAvg previousCAvg)
                                       (> entCAvg nextCAvg)
                                       (< entCAvg nextCAvg))
            notVerticalPiece (not(and(= (car PrimaryPoint)(car SecondaryPoint))(=(cadr PrimaryPoint)(cadr SecondaryPoint))))
      );end setq
(if(or
   (and(or(wcmatch ItemService "*1/2\"*")(wcmatch ItemService "*1/2''*"))(or(> c1Width 36)(> c1Depth 36)(and(>= c1Width 17)(>= c1Depth 17))))
   (and(or(wcmatch ItemService "*1\"*")(wcmatch ItemService "*1''*"))(or(> c1Width 36)(> c1Depth 36)(and(>= c1Width 17)(>= c1Depth 17))))
   (and(or(wcmatch ItemService "*2\"*")(wcmatch ItemService "*2''*"))(or(> c1Width 26)(> c1Depth 26)(and(>= c1Width 17)(>= c1Depth 17))))
   (and(or(wcmatch ItemService "*3\"*")(wcmatch ItemService "*3''*"))(or(and(>= c1Depth 17)(< c1Depth 23)(>= c1Width 17))(and(>= c1Width 17)(< c1Width 23)(>= c1Depth 17))(and(>= c1Width 17)(>= c1Depth 17))))
   (and(or(wcmatch ItemService "*4\"*")(wcmatch ItemService "*4''*"))(or(and(>= c1Depth 17)(< c1Depth 23)(>= c1Width 17))(and(>= c1Width 17)(< c1Width 23)(>= c1Depth 17))(and(>= c1Width 17)(>= c1Depth 17))))
   (or(wcmatch ItemService "*6\"*")(wcmatch ItemService "*6''*"))
   (or(wcmatch ItemService "*10\"*")(wcmatch ItemService "*10''*"))
   );or
   (setq c1Spec "TDF")
   (if(or
      (and(or(wcmatch ItemService "*1/2\"*")(wcmatch ItemService "*1/2''*"))(or(and(and(<= c1Width 36)(>= c1Width 21))(<= c1Depth 18))(and(and(<= c1Depth 36)(>= c1Depth 21))(<= c1Width 18))))
      (and(or(wcmatch ItemService "*1\"*")(wcmatch ItemService "*1''*"))(or(and(and(<= c1Width 36)(>= c1Width 21))(< c1Depth 17))(and(and(<= c1Depth 36)(>= c1Depth 21))(< c1Width 17))))
      (and(or(wcmatch ItemService "*2\"*")(wcmatch ItemService "*2''*"))(or(and(and(<= c1Width 26)(>= c1Width 17))(< c1Depth 17))(and(and(<= c1Depth 26)(>= c1Depth 17))(< c1Width 17))))
      (and(or(wcmatch ItemService "*3\"*")(wcmatch ItemService "*3''*"))(or(and(and(<= c1Width 22)(>= c1Width 17))(< c1Depth 17))(and(and(<= c1Depth 22)(>= c1Depth 17))(< c1Width 17))))
      (and(or(wcmatch ItemService "*4\"*")(wcmatch ItemService "*4''*"))(or(and(< c1Depth 17)(< c1Width 23))(and(< c1Depth 23)(< c1Width 17))))
      );or
      (setq c1Spec "Stand S&D")
      (if(or
        (and(or(wcmatch ItemService "*1/2\"*")(wcmatch ItemService "*1/2''*"))(and(< c1Width 21)(< c1Depth 21)))
        (and(or(wcmatch ItemService "*1\"*")(wcmatch ItemService "*1''*"))(and(< c1Width 21)(< c1Depth 21)))
        (and(or(wcmatch ItemService "*2\"*")(wcmatch ItemService "*2''*"))(and(< c1Width 17)(< c1Depth 17)))
        (and(or(wcmatch ItemService "*3\"*")(wcmatch ItemService "*3''*"))(and(< c1Width 17)(< c1Depth 17)))
        );or
        (setq c1Spec "Flat S&D")
        (setq c1Spec "Flat S&D")
  ) ) );end ifs
(if(or
   (and(or(wcmatch ItemService "*1/2\"*")(wcmatch ItemService "*1/2''*"))(or(> c2Width 36)(> c2Depth 36)(and(> c2Width 17)(> c2Depth 17))))
   (and(or(wcmatch ItemService "*1\"*")(wcmatch ItemService "*1''*"))(or(> c2Width 36)(> c2Depth 36)(and(> c2Width 17)(> c2Depth 17))))
   (and(or(wcmatch ItemService "*2\"*")(wcmatch ItemService "*2''*"))(or(> c2Width 26)(> c2Depth 26)(and(> c2Width 17)(> c2Depth 17))))
   (and(or(wcmatch ItemService "*3\"*")(wcmatch ItemService "*3''*"))(or(> c2Width 22)(> c2Depth 22)(and(> c2Width 17)(> c2Depth 17))))
   (and(or(wcmatch ItemService "*4\"*")(wcmatch ItemService "*4''*"))(or(> c2Width 22)(> c2Depth 22)(and(> c2Width 17)(> c2Depth 17))))
   (or(wcmatch ItemService "*6\"*")(wcmatch ItemService "*6''*"))
   (or(wcmatch ItemService "*10\"*")(wcmatch ItemService "*10''*"))
   );or
   (setq c2Spec "TDF")
   (if(or
      (and(or(wcmatch ItemService "*1/2\"*")(wcmatch ItemService "*1/2''*"))(or(and(and(<= c2Width 36)(>= c2Width 21))(<= c2Depth 17))(and(and(<= c2Depth 36)(>= c2Depth 21))(<= c2Width 17))))
      (and(or(wcmatch ItemService "*1\"*")(wcmatch ItemService "*1''*"))(or(and(and(<= c2Width 36)(>= c2Width 21))(< c2Depth 17))(and(and(<= c2Depth 36)(>= c2Depth 21))(< c2Width 17))))
      (and(or(wcmatch ItemService "*2\"*")(wcmatch ItemService "*2''*"))(or(and(and(<= c2Width 26)(>= c2Width 17))(< c2Depth 17))(and(and(<= c2Depth 26)(>= c2Depth 17))(< c2Width 17))))
      (and(or(wcmatch ItemService "*3\"*")(wcmatch ItemService "*3''*"))(or(and(and(<= c2Width 22)(>= c2Width 17))(< c2Depth 17))(and(and(<= c2Depth 22)(>= c2Depth 17))(< c2Width 17))))
      (and(or(wcmatch ItemService "*4\"*")(wcmatch ItemService "*4''*"))(or(and(and(<= c2Width 22)(>= c2Width 17))(< c2Depth 17))(and(and(<= c2Depth 22)(>= c2Depth 17))(< c2Width 17))))
      );or
      (setq c2Spec "Stand S&D")
      (if(or
         (and(or(wcmatch ItemService "*1/2\"*")(wcmatch ItemService "*1/2''*"))(and(< c2Width 21)(< c2Depth 21)))
         (and(or(wcmatch ItemService "*1\"*")(wcmatch ItemService "*1''*"))(and(< c2Width 21)(< c2Depth 21)))
         (and(or(wcmatch ItemService "*2\"*")(wcmatch ItemService "*2''*"))(and(< c2Width 17)(< c2Depth 17)))
         (and(or(wcmatch ItemService "*3\"*")(wcmatch ItemService "*3''*"))(and(< c2Width 17)(< c2Depth 17)))
         (and(or(wcmatch ItemService "*4\"*")(wcmatch ItemService "*4''*"))(and(< c2Width 17)(< c2Depth 17)))
         );or
         (setq c2Spec "Flat S&D")
         (setq c2Spec "Flat S&D")
  ) ) );end ifs
  (if(and(= ItemDamperFlag1 "")(= ItemDamperFlag2 "")(= ItemDamperFlag3 "")(= ItemDamperFlag4 ""))
    (setq damperCount "No Dampers")
    (if(and(= ItemDamperFlag1 "*")(= ItemDamperFlag2 "")(= ItemDamperFlag3 "")(= ItemDamperFlag4 ""))
      (setq damperCount "1 Dampers")
      (if(and(= ItemDamperFlag1 "*")(= ItemDamperFlag2 "*")(= ItemDamperFlag3 "")(= ItemDamperFlag4 ""))
        (setq damperCount "2 Dampers")
        (if(and(= ItemDamperFlag1 "*")(= ItemDamperFlag2 "*")(= ItemDamperFlag3 "*")(= ItemDamperFlag4 ""))
          (setq damperCount "3 Dampers")
          (if(and(= ItemDamperFlag1 "*")(= ItemDamperFlag2 "*")(= ItemDamperFlag3 "*")(= ItemDamperFlag4 "*"))
            (setq damperCount "4 Dampers")
  ) ) ) ) );end if
            (setq addSE (and
                          (not allSupport)
                          (not slopedItem)
                          (or
                          (and
                            (or
                              (wcmatch ItemCID "40")
                              (wcmatch (strcase ItemSourceFileName)(strcase "*SPIRAL"))
                              (wcmatch (strcase ItemSourceFileName)(strcase "*Tube*"))
                              (wcmatch (strcase ItemSourceFileName)(strcase "*Straight*"))
                              (wcmatch (strcase ItemSourceFileName)(strcase "*Welded Pipe*"))
                            );or
                            (or
                              (= ItemSourceFileNameNext nil)
                              (= ItemSourceFileNamePrevious nil)
                              (or
                                (if(not(= ItemSourceFileNameNext nil))
                                  (and
                              (not(wcmatch(strcase ItemSourceFileNameNext)(strcase "*SPIRAL")))
                              (not(wcmatch(strcase ItemSourceFileNameNext)(strcase "*Tube*")))
                              (not(wcmatch(strcase ItemSourceFileNameNext)(strcase "*Straight*")))
                              (not(wcmatch(strcase ItemSourceFileNameNext)(strcase "*Welded Pipe*")))
                              (not(wcmatch(strcase ItemSourceFileNameNext)(strcase "*Coupling*")))
                                  );and
                                  nil
                                );end if
                                (if(not(= ItemSourceFileNamePrevious nil))
                                  (and
                              (not(wcmatch(strcase ItemSourceFileNamePrevious)(strcase "*SPIRAL")))
                              (not(wcmatch(strcase ItemSourceFileNamePrevious)(strcase "*Tube*")))
                              (not(wcmatch(strcase ItemSourceFileNamePrevious)(strcase "*Straight*")))
                              (not(wcmatch(strcase ItemSourceFileNamePrevious)(strcase "*Welded Pipe*")))
                              (not(wcmatch(strcase ItemSourceFileNamePrevious)(strcase "*Coupling*")))
                                  );and
                                  nil
                                );end if
                              );or
                            );or
                          );and
			                    (and
                          (or itemElevationDifference
                            (and(not(= c1Width c1WidthNext))(if(not(= ItemSourceFileNameNext nil))(not(wcmatch(strcase ItemSourceFileNameNext)(strcase "*Coupling*")))nil))
                            (and(not(= c1Depth c1DepthNext))(if(not(= ItemSourceFileNameNext nil))(not(wcmatch(strcase ItemSourceFileNameNext)(strcase "*Coupling*")))nil))
                          );or
                            (or
                              (wcmatch ItemCID "40")
                              (wcmatch (strcase ItemSourceFileName)(strcase "*SPIRAL"))
                              (wcmatch (strcase ItemSourceFileName)(strcase "*Tube*"))
                              (wcmatch (strcase ItemSourceFileName)(strcase "*Straight*"))
                              (wcmatch (strcase ItemSourceFileName)(strcase "*Welded Pipe*"))
                            );or
			                    );and
                          );or
                        );and
            );setq
  (if(wcmatch(strcase ItemSourceFileName)(strcase "Flat Strap (Rectangle)"))
    (setq xA c2x
          yA c2y
          zA c2z
          xB c3x
          yB c3y
          zB c3z);end setq
    (if(or(wcmatch (strcase ItemSourceFileName)(strcase "Rectangular Bearer"))(wcmatch (strcase ItemSourceFileName)(strcase "Double Rectangular Bearer")))
      (setq xA c2x
            yA c2y
            zA c2z
            xB c3x
            yB c3y
            zB c3z);end setq
      (if(wcmatch (strcase ItemSourceFileName)(strcase "Wrap Round"))
        (setq xA c2x
              yA c2y
              zA c2z);end setq
        (if(wcmatch (strcase ItemSourceFileName)(strcase "Flat Strap (Round)")) 
          (setq xA c2x
                yA c2y
                zA c2z
                xB c3x
                yB c3y
                zB c3z);end setq
          (if(wcmatch (strcase ItemSourceFileName)(strcase "Belly Band"))
            (setq xA c2x
                  yA c2y
                  zA c2z
                  xB c3x
                  yB c3y
                  zB c3z);end setq
            (if(and doubleFloorSupport postSupport)
              (setq xA c29x
                    yA c29y
                    zA c14z
                    xB c28x
                    yB c28y
                    zB c12z
                    xA1 c64x
                    yA1 c64y
                    zA1 c64z
                    xA2 c65x
                    yA2 c65y
                    zA2 c65z
                    xA3 c68x
                    yA3 c68y
                    zA3 c68z
                    xA4 c69x
                    yA4 c69y
                    zA4 c69z
                    xB1 c62x
                    yB1 c62y
                    zB1 c62z
                    xB2 c63x
                    yB2 c63y
                    zB2 c63z
                    xB3 c66x
                    yB3 c66y
                    zB3 c66z
                    xB4 c67x
                    yB4 c67y
                    zB4 c67z);end setq
              (if(and doubleFloorSupport angleSupport)
                (setq xA c4x
                      yA c2y
                      zA c14z
                      xB c5x
                      yB c3y
                      zB c12z
                      xA1 c64x
                      yA1 c64y
                      zA1 c64z
                      xA2 c65x
                      yA2 c65y
                      zA2 c65z
                      xA3 c68x
                      yA3 c68y
                      zA3 c68z
                      xA4 c69x
                      yA4 c69y
                      zA4 c69z
                      xB1 c62x
                      yB1 c62y
                      zB1 c62z
                      xB2 c63x
                      yB2 c63y
                      zB2 c63z
                      xB3 c66x
                      yB3 c66y
                      zB3 c66z
                      xB4 c67x
                      yB4 c67y
                      zB4 c67z);end setq
                (if seismic
                    (setq xA c13x
                          yA c13y
                          zA c13z);end setq
                     (if(or(wcmatch(strcase ItemSourceFileName)(strcase "*Clevis*"))(wcmatch(strcase ItemSourceFileName)(strcase "*Pipe Roll*")))
                       (setq xA c2x
                             yA c2y
                             zA c2z);end setq
                       (if(wcmatch (strcase ItemSourceFileName)(strcase "Strap Single"))
                         (setq xA c2x
                               yA c2y
                               zA c2z);end setq
                       (if(wcmatch (strcase ItemSourceFileName)(strcase "Stiffy Fig. 108"))
                         (setq xA c11x
                               yA c11y
                               zA c11z);end setq
                         (if(and singleFloorSupport postSupport)
                           (setq xA c29x
                                   yA c29y
                                   zA c14z
                                   xA1 c64x
                                   yA1 c64y
                                   zA1 c64z
                                   xA2 c65x
                                   yA2 c65y
                                   zA2 c65z
                                   xA3 c68x
                                   yA3 c68y
                                   zA3 c68z
                                   xA4 c69x
                                   yA4 c69y
                                   zA4 c69z);end setq
                             (if(and singleFloorSupport angleSupport)
                               (setq xA c4x
                                     yA c2y
                                     zA c14z
                                     xA1 c64x
                                     yA1 c64y
                                     zA1 c64z
                                     xA2 c65x
                                     yA2 c65y
                                     zA2 c65z
                                     xA3 c68x
                                     yA3 c68y
                                     zA3 c68z
                                     xA4 c69x
                                     yA4 c69y
                                     zA4 c69z);end setq
                             (if (and blockout (not(or(wcmatch(strcase ItemSourceFileName)(strcase "EQUIPMENT PAD"))(wcmatch(strcase ItemSourceFileName)(strcase "FLOOR BLOCK OUT"))(wcmatch(strcase ItemSourceFileName)(strcase "WALL BLOCK OUT")))))
                               (setq xA c4x
                                     yA c4y
                                     zA c4z
                                     xB c5x
                                     yB c5y
                                     zB c5z
                                     xC c6x
                                     yC c6y
                                     zC c6z
                                     xD c7x
                                     yD c7y
                                     zD c7z);end setq
                             (if (or trimblePoint roundBlockout)
                               (setq xA c1x
                                     yA c1y
                                     zA c1z);end setq
                             (if(or(wcmatch(strcase ItemSourceFileName)(strcase "EQUIPMENT PAD"))(wcmatch(strcase ItemSourceFileName)(strcase "FLOOR BLOCK OUT"))(wcmatch(strcase ItemSourceFileName)(strcase "WALL BLOCK OUT")))
                               (setq xA c3x
                                     yA c3y
                                     zA c3z
                                     xB c4x
                                     yB c4y
                                     zB c4z
                                     xC c5x
                                     yC c5y
                                     zC c5z
                                     xD c6x
                                     yD c6y
                                     zD c6z);end setq
  ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) );end ifs
  (if(wcmatch (strcase ItemSourceFileName)(strcase "Flat Strap (Rectangle)"))
    (setq anchorSize "0");op5
    (if(or(wcmatch (strcase ItemSourceFileName)(strcase "Rectangular Bearer"))(wcmatch (strcase ItemSourceFileName)(strcase "Double Rectangular Bearer")))
      (setq anchorSize "0");op5
      (if(wcmatch (strcase ItemSourceFileName)(strcase "Wrap Round"))
        (setq anchorSize (rtos dim3))
        (if(wcmatch (strcase ItemSourceFileName)(strcase "Flat Strap (Round)")) 
          (setq anchorSize "0");op8
          (if(wcmatch (strcase ItemSourceFileName)(strcase "Belly Band"))
            (setq anchorSize "0");op7
            (if(wcmatch(strcase ItemSourceFileName)(strcase "Floor Supports Post"))
              (if dim43 (setq anchorSize (rtos dim43))(setq anchorSize (rtos dim21)))
              (if(wcmatch(strcase ItemSourceFileName)(strcase "Floor Supports Post Double"))
                (if dim43 (setq anchorSize (rtos dim43))(setq anchorSize (rtos dim20)))
                (if(wcmatch(strcase ItemSourceFileName)(strcase "Floor Supports Post Round"))
                  (if dim43 (setq anchorSize (rtos dim43))(setq anchorSize (rtos dim19)))
                  (if(wcmatch(strcase ItemSourceFileName)(strcase "Floor Supports Post Single"))
                    (if dim44 (setq anchorSize (rtos dim44))(setq anchorSize (rtos dim15)))
                    (if(wcmatch(strcase ItemSourceFileName)(strcase "Floor Supports Angle"))
                      (if dim43 (setq anchorSize (rtos dim43))(setq anchorSize (rtos dim19)))
                      (if(wcmatch(strcase ItemSourceFileName)(strcase "Floor Supports Angle Double"))
                        (if dim43 (setq anchorSize (rtos dim43))(setq anchorSize (rtos dim18)))
                        (if(wcmatch(strcase ItemSourceFileName)(strcase "Floor Supports Angle Round"))
                          (if dim43 (setq anchorSize (rtos dim43))(setq anchorSize (rtos dim18)))
                          (if(wcmatch(strcase ItemSourceFileName)(strcase "Floor Supports Angle Single"))
                            (if dim44 (setq anchorSize (rtos dim44))(setq anchorSize (rtos dim18)))
                            (if(wcmatch(strcase ItemSourceFileName)(strcase "Equipment Seismic"))
                              (if dim16 (setq anchorSize (rtos dim16))(setq anchorSize "0"))
                              (if(wcmatch(strcase ItemSourceFileName)(strcase "Rectangular Seismic"))
                                (if dim18 (setq anchorSize "0")(setq anchorSize (rtos dim13)))
                                (if(wcmatch(strcase ItemSourceFileName)(strcase "Round Seismic"))
                                  (if dim18 (setq anchorSize "0")(setq anchorSize (rtos dim11)))
                                  (if(wcmatch(strcase ItemSourceFileName)(strcase "Misc Seismic"))
                                    (if dim28 (setq anchorSize (rtos dim28))(setq anchorSize "0"))
                                    (if(wcmatch(strcase ItemSourceFileName)(strcase "*Clevis*"))
                                      (setq anchorSize "0");op2
                                      (if(wcmatch(strcase ItemSourceFileName)(strcase "*Pipe Roll*"))
                                        (setq anchorSize "0");op2
                                      (if(wcmatch(strcase ItemSourceFileName)(strcase "Stiffy Fig. 108"))
                                        (if dim25 (setq anchorSize (rtos dim25)))
                                        (if(wcmatch(strcase ItemSourceFileName)(strcase "Strap Single"))
                                          (setq anchorSize "0");op1
                                          (if (or blockout roundBlockout)
                                            (setq anchorSize "0")
                                            (if trimblePoint
                                              (setq anchorSize "0")
  ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
  (if(= anchorSize nil)(setq anchorSize "0"))
    );end progn
  );end if
  (princ)
);end defun
;**************************************************************************************************************************************************
(defun TRIG_MY_POINTS (point1 frameWidthP1 frameDepthP1 point2 frameWidthP2 frameDepthP2 boxAWidth boxADepth boxBWidth boxBDepth / )
  (if(= point1 nil)(if(= (car PrimaryPoint) nil)(setq point1(getpoint "\nSelect Point 1:")) PrimaryPoint))
  (if(or(=(car point2)nil)(=(cadr point2)nil)(=(caddr point2)nil))(if(or(=(car SecondaryPoint)nil)(=(cadr SecondaryPoint)nil)(=(caddr SecondaryPoint)nil))(setq point2(getpoint "\nSecondary point found nil: Select Point 2:"))SecondaryPoint))
  (if(= frameWidthP1 nil)(setq frameWidthP1 1))
  (if(= frameWidthP2 nil)(setq frameWidthP2 1))
  (if(= frameDepthP1 nil)(setq frameDepthP1 1))
  (if(= frameDepthP2 nil)(setq frameDepthP2 1))
  (if(not(= ItemLengthAngle nil))(setq lineDistance ItemLengthAngle)(setq lineDistance 0))
  (if(and(not(= InsulationGauge nil))(not FireDamper))(setq additionalOffset InsulationGauge)(setq additionalOffset 0))
  (if(>=(+(caddr point1)(/ frameDepthP1 2))(+(caddr point2)(/ frameDepthP2 2)))
    (setq pointZ (+(+(caddr point1)(/(if(= frameDepthP1 nil)(setq frameDepthP1(if(= frameWidthP1 nil)1 frameWidthP1))2)2))1))
    (setq pointZ (+(+(caddr point2)(/(if(= frameDepthP2 nil)(setq frameDepthP2(if(= frameWidthP2 nil)1 frameWidthP2))2)2))1))
  );end if
  (if(= boxAWidth nil)(setq boxAWidth 10))
  (if(= boxADepth nil)(setq boxADepth 5))
  (if(= boxBWidth nil)(setq boxBWidth 10))
  (if(= boxBDepth nil)(setq boxBDepth 5))
  (setq cornerLongOffset 5
        cornerTransverseOffset 3
        frameWidthAverage (/ (+ frameWidthP1 frameWidthP2) 2)
        sideOffsPos1 (+ additionalOffset (/ boxBDepth 2))
        sideOffsPos2 (+ additionalOffset (/ boxADepth 2))
        sideOffsPos3 (+ additionalOffset (+ boxBDepth (/ boxADepth 2)))
        tinyOrShort (or(< lrgWidth (+ boxBDepth additionalOffset))(< lineDistance boxAWidth));too small for both in - both out
        smallSized (or(and(>= lrgWidth boxBDepth)(< lrgWidth boxADepth))
                      (and(>= lrgWidth boxADepth)(< lrgWidth (+ boxBDepth additionalOffset boxADepth))(>= lineDistance boxBWidth)(< lineDistance (+ boxAWidth boxBWidth))));too small to stack and neighbor - S in, E out
        mediumSized (and(>= lrgWidth boxADepth)(< lrgWidth (+ boxBDepth additionalOffset boxADepth))(>= lineDistance (+ boxAWidth boxBWidth)));width too small to stack but long enough to neighbor
        largeSized (and(>= lrgWidth (+ boxBDepth additionalOffset boxADepth))(>= lineDistance boxBWidth));wide&long enough to stack S&E inside item);end setq
        xAnchor       (car point1)
        yAnchor       (cadr point1)
        xBob          (car point2)
        yBob          (cadr point2)
        TopRight      (and(< xAnchor xBob)(< yAnchor yBob));0<x<90
        TopLeft       (and(> xAnchor xBob)(< yAnchor yBob));90<x<180
        BotLeft       (and(> xAnchor xBob)(> yAnchor yBob));180<x<270
        BotRight      (and(< xAnchor xBob)(> yAnchor yBob));270<x<360
        Up            (and(= xAnchor xBob)(< yAnchor yBob));Forward=Up
        Down          (and(= xAnchor xBob)(> yAnchor yBob));Forward=Down
        Left          (and(= yAnchor yBob)(> xAnchor xBob));Forward=Left
        Right         (and(= yAnchor yBob)(< xAnchor xBob));Forward=Right
        angledToGrid  (or TopRight TopLeft BotLeft BotRight);angled relative to grid
        sqtoGrid      (or Up Down Right Left);square relative to grid
  );end setq
      (if(not(and(= xAnchor xBob)(= yAnchor yBob)))
        (progn
          (if TopRight
            (setq pointXDifference (- xBob xAnchor)
                  pointYDifference (- yBob yAnchor))
            (if TopLeft
              (setq pointXDifference (- xAnchor xBob)
                    pointYDifference (- yBob yAnchor))
              (if BotLeft
                (setq pointXDifference (- xAnchor xBob)
                      pointYDifference (- yAnchor yBob))
                (if BotRight
                  (setq pointXDifference (- xBob xAnchor)
                        pointYDifference (- yAnchor yBob))
                  (if Up
                    (setq pointXDifference 0
                          pointYDifference (- yBob yAnchor))
                    (if Down
                      (setq pointXDifference 0
                            pointYDifference (- yAnchor yBob))
                      (if Left
                        (setq pointXDifference (- xAnchor xBob)
                              pointYDifference 0)
                        (if Right
                          (setq pointXDifference (- xBob xAnchor)
                                pointYDifference 0)
          ) ) ) ) ) ) ) );end ifs
          (if(and(not(= pointXDifference nil))(not(= pointYDifference nil)))
            (setq Theta (ATan pointYDifference pointXDifference)
                  ThetaDegrees (ROUND (* 180.0 (/ Theta pi)) 1)
            );end setq
          );end if
          (if angledToGrid
            (progn
              (setq lineLength (Sqrt (+ (* pointXDifference pointXDifference) (* pointYDifference pointYDifference)))
                    halfLineLength (/ lineLength 2)
                    xDistance2Midpoint (* (Cos Theta) halfLineLength)
                    yDistance2Midpoint (* (Sin Theta) halfLineLength)
              );end setq
              (if TopRight
                (setq xMidpoint (+ xAnchor xDistance2Midpoint)
                      yMidpoint (+ yAnchor yDistance2Midpoint)
                      rotAngle ThetaDegrees
                      CentralPosUp (list 
                                (- xMidpoint (* (sin Theta)(/ boxBDepth 2)));X
                                (+ yMidpoint (* (cos Theta)(/ boxBDepth 2)));Y
                                pointZ);Z
                      CentralPosDown (list 
                                (+ xMidpoint (* (sin Theta)(/ boxADepth 2)));X
                                (- yMidpoint (* (cos Theta)(/ boxADepth 2)));Y
                                pointZ);Z
		      CentralPosLeft (list 
                                (- xMidpoint (* (cos Theta)(/ boxBWidth 2)));X
                                (- yMidpoint (* (sin Theta)(/ boxBWidth 2)));Y
                                pointZ);Z
		      CentralPosRight (list 
                                 (+ xMidpoint (* (cos Theta)(/ boxAWidth 2)));X
                                 (+ yMidpoint (* (sin Theta)(/ boxAWidth 2)));Y
                                 pointZ);Z
                      side1 (list 
                            (- xMidpoint (* (sin Theta)(/ frameWidthAverage 2)));X
                            (+ yMidpoint (* (cos Theta)(/ frameWidthAverage 2)));Y
                            pointZ);Z
                      side1Pos1 (list 
                                (- (car side1) (* (sin Theta)sideOffsPos1));X
                                (+ (cadr side1) (* (cos Theta)sideOffsPos1));Y
                                pointZ);Z
                      side1Pos2 (list 
                                (- (car side1) (* (sin Theta)sideOffsPos2));X
                                (+ (cadr side1) (* (cos Theta)sideOffsPos2));Y
                                pointZ);Z
                      side1Pos3 (list 
                                (- (car side1) (* (sin Theta)sideOffsPos3));X
                                (+ (cadr side1) (* (cos Theta)sideOffsPos3));Y
                                pointZ);Z
                      side2 (list 
                            (+ xMidpoint (* (sin Theta)(/ frameWidthAverage 2)));X
                            (- yMidpoint (* (cos Theta)(/ frameWidthAverage 2)));Y
                            pointZ);Z
                      side2Pos1 (list 
                                (+ (car side2) (* (sin Theta)sideOffsPos1));X
                                (- (cadr side2) (* (cos Theta)sideOffsPos1));Y
                                pointZ);Z
                      side2Pos2 (list 
                                (+ (car side2) (* (sin Theta)sideOffsPos2));X
                                (- (cadr side2) (* (cos Theta)sideOffsPos2));Y
                                pointZ);Z
                      side2Pos3 (list 
                                (+ (car side2) (* (sin Theta)sideOffsPos3));X
                                (- (cadr side2) (* (cos Theta)sideOffsPos3));Y
                                pointZ);Z
                      corner1 (list 
                              (+ xBob (* (sin Theta)(/ frameWidthP2 2)));X
                              (- yBob (* (cos Theta)(/ frameWidthP2 2)));Y
                              pointZ);Z
                      corner1Inset (list
                                   (+ xAnchor (+(*(cos Theta)(- lineLength cornerLongOffset))(*(sin Theta)(-(/ frameWidthP2 2)cornerTransverseOffset))));X
                                   (+ yAnchor (-(*(sin Theta)(- lineLength cornerLongOffset))(*(cos Theta)(-(/ frameWidthP2 2)cornerTransverseOffset))));Y
                                   pointZ);Z
                      corner2 (list 
                              (- xBob (* (sin Theta)(/ frameWidthP2 2)));X
                              (+ yBob (* (cos Theta)(/ frameWidthP2 2)));Y
                              pointZ);Z
                      corner2Inset (list
                                   (+ xAnchor (-(*(cos Theta)(- lineLength cornerLongOffset))(*(sin Theta)(-(/ frameWidthP2 2)cornerTransverseOffset))));X
                                   (+ yAnchor (+(*(sin Theta)(- lineLength cornerLongOffset))(*(cos Theta)(-(/ frameWidthP2 2)cornerTransverseOffset))));Y
                                   pointZ);Z
                      corner3 (list 
                              (- xAnchor (* (sin Theta)(/ frameWidthP1 2)));X
                              (+ yAnchor (* (cos Theta)(/ frameWidthP1 2)));Y
                              pointZ);Z
                      corner3Inset (list
                                   (- xBob (+(*(cos Theta)(- lineLength cornerLongOffset))(*(sin Theta)(-(/ frameWidthP1 2)cornerTransverseOffset))));X
                                   (- yBob (-(*(sin Theta)(- lineLength cornerLongOffset))(*(cos Theta)(-(/ frameWidthP1 2)cornerTransverseOffset))));Y
                                   pointZ);Z
                      corner4 (list 
                              (+ xAnchor (* (sin Theta)(/ frameWidthP1 2)));X
                              (- yAnchor (* (cos Theta)(/ frameWidthP1 2)));Y
                              pointZ);Z
                      corner4Inset (list
                                   (- xBob (-(*(cos Theta)(- lineLength cornerLongOffset))(*(sin Theta)(-(/ frameWidthP1 2)cornerTransverseOffset))));X
                                   (- yBob (+(*(sin Theta)(- lineLength cornerLongOffset))(*(cos Theta)(-(/ frameWidthP1 2)cornerTransverseOffset))));Y
                                   pointZ);Z
                );end setq
                (if TopLeft 
                  (setq xMidpoint (- xAnchor xDistance2Midpoint)
                        yMidpoint (+ yAnchor yDistance2Midpoint)
                        rotAngle (+ ThetaDegrees 90)
                        CentralPosUp (list 
                                  (+ xMidpoint (* (sin Theta)(/ boxBDepth 2)));X
                                  (+ yMidpoint (* (cos Theta)(/ boxBDepth 2)));Y
                                  pointZ);Z
                        CentralPosDown (list 
                                  (- xMidpoint (* (sin Theta)(/ boxADepth 2)));X
                                  (- yMidpoint (* (cos Theta)(/ boxADepth 2)));Y
                                  pointZ);Z
		        CentralPosLeft (list 
                                  (- xMidpoint (* (cos Theta)(/ boxBWidth 2)));X
                                  (+ yMidpoint (* (sin Theta)(/ boxBWidth 2)));Y
                                  pointZ);Z
		        CentralPosRight (list 
                                   (+ xMidpoint (* (cos Theta)(/ boxAWidth 2)));X
                                   (- yMidpoint (* (sin Theta)(/ boxAWidth 2)));Y
                                   pointZ);Z
                        side1 (list 
                              (+ xMidpoint (* (sin Theta)(/ frameWidthAverage 2)));X
                              (+ yMidpoint (* (cos Theta)(/ frameWidthAverage 2)));Y
                              pointZ);Z
                        side1Pos1 (list 
                                  (+ (car side1) (* (sin Theta)sideOffsPos1));X
                                  (+ (cadr side1) (* (cos Theta)sideOffsPos1));Y
                                  pointZ);Z
                        side1Pos2 (list 
                                  (+ (car side1) (* (sin Theta)sideOffsPos2));X
                                  (+ (cadr side1) (* (cos Theta)sideOffsPos2));Y
                                  pointZ);Z
                        side1Pos3 (list 
                                  (+ (car side1) (* (sin Theta)sideOffsPos3));X
                                  (+ (cadr side1) (* (cos Theta)sideOffsPos3));Y
                                  pointZ);Z
                        side2 (list 
                              (- xMidpoint (* (sin Theta)(/ frameWidthAverage 2)));X
                              (- yMidpoint (* (cos Theta)(/ frameWidthAverage 2)));Y
                              pointZ);Z
                        side2Pos1 (list 
                                  (- (car side2) (* (sin Theta)sideOffsPos1));X
                                  (- (cadr side2) (* (cos Theta)sideOffsPos1));Y
                                  pointZ);Z
                        side2Pos2 (list 
                                  (- (car side2) (* (sin Theta)sideOffsPos2));X
                                  (- (cadr side2) (* (cos Theta)sideOffsPos2));Y
                                  pointZ);Z
                        side2Pos3 (list 
                                  (- (car side2) (* (sin Theta)sideOffsPos3));X
                                  (- (cadr side2) (* (cos Theta)sideOffsPos3));Y
                                  pointZ);Z
                        corner1 (list 
                                (- xAnchor (* (sin Theta)(/ frameWidthP1 2)));X
                                (- yAnchor (* (cos Theta)(/ frameWidthP1 2)));Y
                                pointZ);Z
                        corner1Inset (list
                                     (+ xBob (-(*(cos Theta)(- lineLength cornerLongOffset))(*(sin Theta)(-(/ frameWidthP1 2)cornerTransverseOffset))));X
                                     (- yBob (+(*(sin Theta)(- lineLength cornerLongOffset))(*(cos Theta)(-(/ frameWidthP1 2)cornerTransverseOffset))));Y
                                     pointZ);Z
                        corner2 (list 
                                (+ xAnchor (* (sin Theta)(/ frameWidthP1 2)));X
                                (+ yAnchor (* (cos Theta)(/ frameWidthP1 2)));Y
                                pointZ);Z
                        corner2Inset (list
                                     (+ xBob (+(*(cos Theta)(- lineLength cornerLongOffset))(*(sin Theta)(-(/ frameWidthP1 2)cornerTransverseOffset))));X
                                     (- yBob (-(*(sin Theta)(- lineLength cornerLongOffset))(*(cos Theta)(-(/ frameWidthP1 2)cornerTransverseOffset))));Y
                                     pointZ);Z
                        corner3 (list 
                                (+ xBob (* (sin Theta)(/ frameWidthP2 2)));X
                                (+ yBob (* (cos Theta)(/ frameWidthP2 2)));Y
                                pointZ);Z
                        corner3Inset (list
                                     (- xAnchor (-(*(cos Theta)(- lineLength cornerLongOffset))(*(sin Theta)(-(/ frameWidthP2 2)cornerTransverseOffset))));X
                                     (+ yAnchor (+(*(sin Theta)(- lineLength cornerLongOffset))(*(cos Theta)(-(/ frameWidthP2 2)cornerTransverseOffset))));Y
                                     pointZ);Z
                        corner4 (list 
                                (- xBob (* (sin Theta)(/ frameWidthP2 2)));X
                                (- yBob (* (cos Theta)(/ frameWidthP2 2)));Y
                                pointZ);Z
                        corner4Inset (list
                                     (- xAnchor (+(*(cos Theta)(- lineLength cornerLongOffset))(*(sin Theta)(-(/ frameWidthP2 2)cornerTransverseOffset))));X
                                     (+ yAnchor (-(*(sin Theta)(- lineLength cornerLongOffset))(*(cos Theta)(-(/ frameWidthP2 2)cornerTransverseOffset))));Y
                                     pointZ);Z
                  );end setq
                  (if BotLeft
                    (setq xMidpoint (- xAnchor xDistance2Midpoint)
                          yMidpoint (- yAnchor yDistance2Midpoint)
                          rotAngle (+ ThetaDegrees 180)
                          CentralPosUp (list 
                                    (- xMidpoint (* (sin Theta)(/ boxBDepth 2)));X
                                    (+ yMidpoint (* (cos Theta)(/ boxBDepth 2)));Y
                                    pointZ);Z
                          CentralPosDown (list 
                                    (+ xMidpoint (* (sin Theta)(/ boxADepth 2)));X
                                    (- yMidpoint (* (cos Theta)(/ boxADepth 2)));Y
                                    pointZ);Z
		          CentralPosLeft (list 
                                    (- xMidpoint (* (cos Theta)(/ boxBWidth 2)));X
                                    (- yMidpoint (* (sin Theta)(/ boxBWidth 2)));Y
                                    pointZ);Z
		          CentralPosRight (list 
                                     (+ xMidpoint (* (cos Theta)(/ boxAWidth 2)));X
                                     (+ yMidpoint (* (sin Theta)(/ boxAWidth 2)));Y
                                     pointZ);Z
                          side1 (list 
                                (- xMidpoint (* (sin Theta)(/ frameWidthAverage 2)));X
                                (+ yMidpoint (* (cos Theta)(/ frameWidthAverage 2)));Y
                                pointZ);Z
                          side1Pos1 (list 
                                    (- (car side1) (* (sin Theta)sideOffsPos1));X
                                    (+ (cadr side1) (* (cos Theta)sideOffsPos1));Y
                                    pointZ);Z
                          side1Pos2 (list 
                                    (- (car side1) (* (sin Theta)sideOffsPos2));X
                                    (+ (cadr side1) (* (cos Theta)sideOffsPos2));Y
                                    pointZ);Z
                          side1Pos3 (list 
                                    (- (car side1) (* (sin Theta)sideOffsPos3));X
                                    (+ (cadr side1) (* (cos Theta)sideOffsPos3));Y
                                    pointZ);Z
                          side2 (list 
                                (+ xMidpoint (* (sin Theta)(/ frameWidthAverage 2)));X
                                (- yMidpoint (* (cos Theta)(/ frameWidthAverage 2)));Y
                                pointZ);Z
                          side2Pos1 (list 
                                    (+ (car side2) (* (sin Theta)sideOffsPos1));X
                                    (- (cadr side2) (* (cos Theta)sideOffsPos1));Y
                                    pointZ);Z
                          side2Pos2 (list 
                                    (+ (car side2) (* (sin Theta)sideOffsPos2));X
                                    (- (cadr side2) (* (cos Theta)sideOffsPos2));Y
                                    pointZ);Z 
                          side2Pos3 (list 
                                    (+ (car side2) (* (sin Theta)sideOffsPos3));X
                                    (- (cadr side2) (* (cos Theta)sideOffsPos3));Y
                                    pointZ);Z
                          corner1 (list 
                                  (+ xAnchor (* (sin Theta)(/ frameWidthP1 2)));X
                                  (- yAnchor (* (cos Theta)(/ frameWidthP1 2)));Y
                                  pointZ);Z
                          corner1Inset (list
                                       (+ xBob (+(*(cos Theta)(- lineLength cornerLongOffset))(*(sin Theta)(-(/ frameWidthP1 2)cornerTransverseOffset))));X
                                       (+ yBob (-(*(sin Theta)(- lineLength cornerLongOffset))(*(cos Theta)(-(/ frameWidthP1 2)cornerTransverseOffset))));Y
                                       pointZ);Z
                          corner2 (list 
                                  (- xAnchor (* (sin Theta)(/ frameWidthP1 2)));X
                                  (+ yAnchor (* (cos Theta)(/ frameWidthP1 2)));Y
                                  pointZ);Z
                          corner2Inset (list
                                       (+ xBob (-(*(cos Theta)(- lineLength cornerLongOffset))(*(sin Theta)(-(/ frameWidthP1 2)cornerTransverseOffset))));X
                                       (+ yBob (+(*(sin Theta)(- lineLength cornerLongOffset))(*(cos Theta)(-(/ frameWidthP1 2)cornerTransverseOffset))));Y
                                       pointZ);Z
                          corner3 (list 
                                  (- xBob (* (sin Theta)(/ frameWidthP2 2)));X
                                  (+ yBob (* (cos Theta)(/ frameWidthP2 2)));Y
                                  pointZ);Z
                          corner3Inset (list
                                       (- xAnchor (+(*(cos Theta)(- lineLength cornerLongOffset))(*(sin Theta)(-(/ frameWidthP2 2)cornerTransverseOffset))));X
                                       (- yAnchor (-(*(sin Theta)(- lineLength cornerLongOffset))(*(cos Theta)(-(/ frameWidthP2 2)cornerTransverseOffset))));Y
                                       pointZ);Z
                          corner4 (list 
                                  (+ xBob (* (sin Theta)(/ frameWidthP2 2)));X
                                  (- yBob (* (cos Theta)(/ frameWidthP2 2)));Y
                                  pointZ);Z
                          corner4Inset (list
                                       (- xAnchor (-(*(cos Theta)(- lineLength cornerLongOffset))(*(sin Theta)(-(/ frameWidthP2 2)cornerTransverseOffset))));X
                                       (- yAnchor (+(*(sin Theta)(- lineLength cornerLongOffset))(*(cos Theta)(-(/ frameWidthP2 2)cornerTransverseOffset))));Y
                                       pointZ);Z
                    );end setq
                    (if BotRight
                      (setq xMidpoint (+ xAnchor xDistance2Midpoint)
                            yMidpoint (- yAnchor yDistance2Midpoint)
                            rotAngle (+ ThetaDegrees 270)
                            CentralPosUp (list 
                                      (+ xMidpoint (* (sin Theta)(/ boxBDepth 2)));X
                                      (+ yMidpoint (* (cos Theta)(/ boxBDepth 2)));Y
                                      pointZ);Z
                            CentralPosDown (list 
                                      (- xMidpoint (* (sin Theta)(/ boxADepth 2)));X
                                      (- yMidpoint (* (cos Theta)(/ boxADepth 2)));Y
                                      pointZ);Z
		            CentralPosLeft (list 
                                      (- xMidpoint (* (cos Theta)(/ boxBWidth 2)));X
                                      (+ yMidpoint (* (sin Theta)(/ boxBWidth 2)));Y
                                      pointZ);Z
		            CentralPosRight (list 
                                       (+ xMidpoint (* (cos Theta)(/ boxAWidth 2)));X
                                       (- yMidpoint (* (sin Theta)(/ boxAWidth 2)));Y
                                       pointZ);Z
                            side1 (list 
                                  (+ xMidpoint (* (sin Theta)(/ frameWidthAverage 2)));X
                                  (+ yMidpoint (* (cos Theta)(/ frameWidthAverage 2)));Y
                                  pointZ);Z
                            side1Pos1 (list 
                                      (+ (car side1) (* (sin Theta)sideOffsPos1));X
                                      (+ (cadr side1) (* (cos Theta)sideOffsPos1));Y
                                      pointZ);Z
                            side1Pos2 (list 
                                      (+ (car side1) (* (sin Theta)sideOffsPos2));X
                                      (+ (cadr side1) (* (cos Theta)sideOffsPos2));Y
                                      pointZ);Z
                            side1Pos3 (list 
                                      (+ (car side1) (* (sin Theta)sideOffsPos3));X
                                      (+ (cadr side1) (* (cos Theta)sideOffsPos3));Y
                                      pointZ);Z
                            side2 (list 
                                  (- xMidpoint (* (sin Theta)(/ frameWidthAverage 2)));X
                                  (- yMidpoint (* (cos Theta)(/ frameWidthAverage 2)));Y
                                  pointZ);Z
                            side2Pos1 (list 
                                      (- (car side2) (* (sin Theta)sideOffsPos1));X
                                      (- (cadr side2) (* (cos Theta)sideOffsPos1));Y
                                      pointZ);Z
                            side2Pos2 (list 
                                      (- (car side2) (* (sin Theta)sideOffsPos2));X
                                      (- (cadr side2) (* (cos Theta)sideOffsPos2));Y
                                      pointZ);Z
                            side2Pos3 (list 
                                      (- (car side2) (* (sin Theta)sideOffsPos3));X
                                      (- (cadr side2) (* (cos Theta)sideOffsPos3));Y
                                      pointZ);Z
                            corner1 (list 
                                    (- xBob (* (sin Theta)(/ frameWidthP2 2)));X
                                    (- yBob (* (cos Theta)(/ frameWidthP2 2)));Y
                                    pointZ);Z
                            corner1Inset (list
                                         (+ xAnchor (-(*(cos Theta)(- lineLength cornerLongOffset))(*(sin Theta)(-(/ frameWidthP2 2)cornerTransverseOffset))));X
                                         (- yAnchor (+(*(sin Theta)(- lineLength cornerLongOffset))(*(cos Theta)(-(/ frameWidthP2 2)cornerTransverseOffset))));Y
                                         pointZ);Z
                            corner2 (list 
                                    (+ xBob (* (sin Theta)(/ frameWidthP2 2)));X
                                    (+ yBob (* (cos Theta)(/ frameWidthP2 2)));Y
                                    pointZ);Z
                            corner2Inset (list
                                         (+ xAnchor (+(*(cos Theta)(- lineLength cornerLongOffset))(*(sin Theta)(-(/ frameWidthP2 2)cornerTransverseOffset))));X
                                         (- yAnchor (-(*(sin Theta)(- lineLength cornerLongOffset))(*(cos Theta)(-(/ frameWidthP2 2)cornerTransverseOffset))));Y
                                         pointZ);Z
                            corner3 (list 
                                    (+ xAnchor (* (sin Theta)(/ frameWidthP1 2)));X
                                    (+ yAnchor (* (cos Theta)(/ frameWidthP1 2)));Y
                                    pointZ);Z
                            corner3Inset (list
                                         (- xBob (-(*(cos Theta)(- lineLength cornerLongOffset))(*(sin Theta)(-(/ frameWidthP1 2)cornerTransverseOffset))));X
                                         (+ yBob (+(*(sin Theta)(- lineLength cornerLongOffset))(*(cos Theta)(-(/ frameWidthP1 2)cornerTransverseOffset))));Y
                                         pointZ);Z
                            corner4 (list
                                    (- xAnchor (* (sin Theta)(/ frameWidthP1 2)));X
                                    (- yAnchor (* (cos Theta)(/ frameWidthP1 2)));Y
                                    pointZ);Z
                            corner4Inset (list
                                         (- xBob (+(*(cos Theta)(- lineLength cornerLongOffset))(*(sin Theta)(-(/ frameWidthP1 2)cornerTransverseOffset))));X
                                         (+ yBob (-(*(sin Theta)(- lineLength cornerLongOffset))(*(cos Theta)(-(/ frameWidthP1 2)cornerTransverseOffset))));Y
                                         pointZ);Z
                      );end setq
              ) ) ) );end ifs
            );end progn
            (if sqToGrid
              (if Up
                (setq lineLength (- yBob yAnchor)
                      halfLineLength (/ lineLength 2)
                      xMidpoint xAnchor
                      yMidpoint (+ yAnchor halfLineLength)
                      rotAngle 90
                      CentralPosUp (list 
                                (- xMidpoint (/ boxBDepth 2));X
                                yMidpoint;Y
                                pointZ);Z
                      CentralPosDown (list 
                                (+ xMidpoint (/ boxADepth 2));X
                                yMidpoint;Y
                                pointZ);Z
		      CentralPosLeft (list
                                xMidpoint;X
                                (- yMidpoint (/ boxBWidth 2));Y
                                pointZ);Z
	              CentralPosRight (list
                                 xMidpoint;X
                                 (+ yMidpoint (/ boxAWidth 2));Y
                                 pointZ);Z
                      side1 (list
                            (- xMidpoint (/ frameWidthAverage 2));X
                            yMidpoint;Y
                            pointZ);Z
                      side1Pos1 (list
                                (- (car side1) sideOffsPos1);X
                                yMidpoint;Y
                                pointZ);Z
                      side1Pos2 (list
                                (- (car side1) sideOffsPos2);X
                                yMidpoint;Y
                                pointZ);Z
                      side1Pos3 (list
                                (- (car side1) sideOffsPos3);X
                                yMidpoint;Y
                                pointZ);Z
                      side2 (list 
                            (+ xMidpoint (/ frameWidthAverage 2));X
                            yMidpoint;Y
                            pointZ);Z
                      side2Pos1 (list
                                (+ (car side2) sideOffsPos1);X
                                yMidpoint;Y
                                pointZ);Z
                      side2Pos2 (list
                                (+ (car side2) sideOffsPos2);X
                                yMidpoint;Y
                                pointZ);Z
                      side2Pos3 (list
                                (+ (car side2) sideOffsPos3);X
                                yMidpoint;Y
                                pointZ);Z
                      corner1 (list
                              (+ xBob (/ frameWidthP2 2));X
                              yBob;Y
                              pointZ);Z
                      corner1Inset (list
                                   (+ xBob (-(/ frameWidthP2 2)cornerTransverseOffset));X
                                   (- yBob cornerLongOffset);Y
                                   pointZ);Z
                      corner2 (list 
                              (- xBob (/ frameWidthP2 2));X
                              yBob;Y
                              pointZ);Z
                      corner2Inset (list 
                                   (- xBob (-(/ frameWidthP2 2)cornerTransverseOffset));X
                                   (- yBob cornerLongOffset);Y
                                   pointZ);Z
                      corner3 (list 
                              (- xAnchor (/ frameWidthP1 2));X
                              yAnchor;Y
                              pointZ);Z
                      corner3Inset (list 
                                   (- xAnchor (-(/ frameWidthP1 2)cornerTransverseOffset));X
                                   (+ yAnchor cornerLongOffset);Y
                                   pointZ);Z
                      corner4 (list 
                              (+ xAnchor (/ frameWidthP1 2));X
                              yAnchor;Y
                              pointZ);Z
                      corner4Inset (list 
                                   (+ xAnchor (-(/ frameWidthP1 2)cornerTransverseOffset));X
                                   (+ yAnchor cornerLongOffset);Y
                                   pointZ);Z
                );end setq
                (if Down
                  (setq lineLength (- yAnchor yBob)
                        halfLineLength (/ lineLength 2)
                        xMidpoint xAnchor
                        yMidpoint (- yAnchor halfLineLength)
                        rotAngle 270
                        CentralPosUp (list 
                                  (- xMidpoint (/ boxBDepth 2));X
                                  yMidpoint;Y
                                  pointZ);Z
                        CentralPosDown (list 
                                  (+ xMidpoint (/ boxADepth 2));X
                                  yMidpoint;Y
                                  pointZ);Z
		        CentralPosLeft (list
                                  xMidpoint;X
                                  (- yMidpoint (/ boxBWidth 2));Y
                                  pointZ);Z
	                CentralPosRight (list
                                   xMidpoint;X
                                   (+ yMidpoint (/ boxAWidth 2));Y
                                   pointZ);Z
                        side1 (list
                              (- xMidpoint (/ frameWidthAverage 2));X
                              yMidpoint;Y
                              pointZ);Z
                        side1Pos1 (list
                                  (- (car side1) sideOffsPos1);X
                                  yMidpoint;Y
                                  pointZ);Z
                        side1Pos2 (list
                                  (- (car side1) sideOffsPos2);X
                                  yMidpoint;Y
                                  pointZ);Z
                        side1Pos3 (list
                                  (- (car side1) sideOffsPos3);X
                                  yMidpoint;Y
                                  pointZ);Z
                        side2 (list 
                              (+ xMidpoint (/ frameWidthAverage 2));X
                              yMidpoint;Y
                              pointZ);Z
                        side2Pos1 (list
                                  (+ (car side2) sideOffsPos1);X
                                  yMidpoint;Y
                                  pointZ);Z
                        side2Pos2 (list
                                  (+ (car side2) sideOffsPos2);X
                                  yMidpoint;Y
                                  pointZ);Z
                        side2Pos3 (list
                                  (+ (car side2) sideOffsPos3);X
                                  yMidpoint;Y
                                  pointZ);Z
                        corner1 (list 
                                (+ xAnchor (/ frameWidthP1 2));X
                                yAnchor;Y
                                pointZ);Z
                        corner1Inset (list
                                     (+ xAnchor (-(/ frameWidthP1 2)cornerTransverseOffset));X
                                     (- yAnchor cornerLongOffset);Y
                                     pointZ);Z
                        corner2 (list 
                                (- xAnchor (/ frameWidthP1 2));X
                                yAnchor;Y
                                pointZ);Z
                        corner2Inset (list 
                                   (- xAnchor (-(/ frameWidthP1 2)cornerTransverseOffset));X
                                   (- yAnchor cornerLongOffset);Y
                                   pointZ);Z
                        corner3 (list 
                                (- xBob (/ frameWidthP2 2));X
                                yBob;Y
                                pointZ);Z
                        corner3Inset (list 
                                     (- xBob (-(/ frameWidthP2 2)cornerTransverseOffset));X
                                     (+ yBob cornerLongOffset);Y
                                     pointZ);Z
                        corner4 (list
                                (+ xBob (/ frameWidthP2 2));X
                                yBob;Y
                                pointZ);Z
                        corner4Inset (list 
                                     (+ xBob (-(/ frameWidthP2 2)cornerTransverseOffset));X
                                     (+ yBob cornerLongOffset);Y
                                     pointZ);Z
                  );end setq
                  (if Left
                    (setq lineLength (- xAnchor xBob)
                          halfLineLength (/ lineLength 2)
                          xMidpoint (- xAnchor halfLineLength)
                          yMidpoint yAnchor
                          rotAngle 180
                          CentralPosUp (list 
                                    xMidpoint;X
                                    (+ yMidpoint (/ boxBDepth 2));Y
                                    pointZ);Z
                          CentralPosDown (list 
                                    xMidpoint;X
                                    (- yMidpoint (/ boxADepth 2));Y
                                    pointZ);Z
		          CentralPosLeft (list
                                    (- xMidpoint (/ boxBWidth 2));X
                                    yMidpoint;Y
                                    pointZ);Z
	                  CentralPosRight (list
                                     (+ xMidpoint (/ boxAWidth 2));X
                                     yMidpoint;Y
                                     pointZ);Z
                          side1 (list
                                xMidpoint;X
                                (+ yMidpoint (/ frameWidthAverage 2));Y
                                pointZ);Z
                          side1Pos1 (list
                                    xMidpoint;X
                                    (+ (cadr side1) sideOffsPos1);Y
                                    pointZ);Z
                          side1Pos2 (list
                                    xMidpoint;X
                                    (+ (cadr side1) sideOffsPos2);Y
                                    pointZ);Z
                          side1Pos3 (list
                                    xMidpoint;X
                                    (+ (cadr side1) sideOffsPos3);Y
                                    pointZ);Z
                          side2 (list
                                xMidpoint;X
                                (- yMidpoint (/ frameWidthAverage 2));Y
                                pointZ);Z
                          side2Pos1 (list
                                    xMidpoint;X
                                    (- (cadr side2) sideOffsPos1);Y
                                    pointZ);Z
                          side2Pos2 (list
                                    xMidpoint;X
                                    (- (cadr side2) sideOffsPos2);Y
                                    pointZ);Z
                          side2Pos3 (list
                                    xMidpoint;X
                                    (- (cadr side2) sideOffsPos3);Y
                                    pointZ);Z
                          corner1 (list
                                  xAnchor;X
                                  (- yAnchor (/ frameWidthP1 2));Y
                                  pointZ);Z
                          corner1Inset (list 
                                       (- xAnchor cornerLongOffset);X
                                       (- yAnchor (-(/ frameWidthP1 2)cornerTransverseOffset));Y
                                       pointZ);Z
                          corner2 (list
                                  xAnchor;X
                                  (+ yAnchor (/ frameWidthP1 2));Y
                                  pointZ);Z
                          corner2Inset (list
                                       (- xAnchor cornerLongOffset);X
                                       (+ yAnchor (-(/ frameWidthP1 2)cornerTransverseOffset));Y
                                       pointZ);Z
                          corner3 (list
                                  xBob;X
                                  (+ yBob (/ frameWidthP2 2));Y
                                  pointZ);Z
                          corner3Inset (list
                                       (+ xBob cornerLongOffset);X
                                       (+ yBob (-(/ frameWidthP2 2)cornerTransverseOffset));Y
                                       pointZ);Z
                          corner4 (list
                                  xBob;X
                                  (- yBob (/ frameWidthP2 2));Y
                                  pointZ);Z
                          corner4Inset (list
                                       (+ xBob cornerLongOffset);X
                                       (- yBob (-(/ frameWidthP2 2)cornerTransverseOffset));Y
                                       pointZ);Z
                    );end setq
                    (if Right
                      (setq lineLength (- xBob xAnchor)
                            halfLineLength (/ lineLength 2)
                            xMidpoint (+ xAnchor halfLineLength)
                            yMidpoint yAnchor
                            rotAngle 0
                            CentralPosUp (list 
                                      xMidpoint;X
                                      (+ yMidpoint (/ boxBDepth 2));Y
                                      pointZ);Z
                            CentralPosDown (list 
                                      xMidpoint;X
                                      (- yMidpoint (/ boxADepth 2));Y
                                      pointZ);Z
		            CentralPosLeft (list
                                      (- xMidpoint (/ boxBWidth 2));X
                                      yMidpoint;Y
                                      pointZ);Z
	                    CentralPosRight (list
                                       (+ xMidpoint (/ boxAWidth 2));X
                                       yMidpoint;Y
                                       pointZ);Z
                            side1 (list
                                  xMidpoint;X
                                  (+ yMidpoint (/ frameWidthAverage 2));Y
                                  pointZ);Z
                            side1Pos1 (list
                                      xMidpoint;X
                                      (+ (cadr side1) sideOffsPos1);Y
                                      pointZ);Z
                            side1Pos2 (list
                                      xMidpoint;X
                                      (+ (cadr side1) sideOffsPos2);Y
                                      pointZ);Z
                            side1Pos3 (list
                                      xMidpoint;X
                                      (+ (cadr side1) sideOffsPos3);Y
                                      pointZ);Z
                            side2 (list
                                  xMidpoint;X
                                  (- yMidpoint (/ frameWidthAverage 2));Y
                                  pointZ);Z
                            side2Pos1 (list
                                      xMidpoint;X
                                      (- (cadr side2) sideOffsPos1);Y
                                      pointZ);Z
                            side2Pos2 (list
                                      xMidpoint;X
                                      (- (cadr side2) sideOffsPos2);Y
                                      pointZ);Z
                            side2Pos3 (list
                                      xMidpoint;X
                                      (- (cadr side2) sideOffsPos3);Y
                                      pointZ);Z
                            corner1 (list xBob;X
                                    (- yBob (/ frameWidthP2 2));Y
                                    pointZ);Z
                            corner1Inset (list 
                                         (- xBob cornerLongOffset);X
                                         (- yBob (-(/ frameWidthP2 2)cornerTransverseOffset));Y
                                         pointZ);Z
                            corner2 (list xBob;X
                                    (+ yBob (/ frameWidthP2 2));Y
                                    pointZ);Z
                            corner2Inset (list
                                         (- xBob cornerLongOffset);X
                                         (+ yBob (-(/ frameWidthP2 2)cornerTransverseOffset));Y
                                         pointZ);Z
                            corner3 (list xAnchor;X
                                    (+ yAnchor (/ frameWidthP1 2));Y
                                    pointZ);Z
                            corner3Inset (list
                                         (+ xAnchor cornerLongOffset);X
                                         (+ yAnchor (-(/ frameWidthP1 2)cornerTransverseOffset));Y
                                         pointZ);Z
                            corner4 (list xAnchor;X
                                    (- yAnchor (/ frameWidthP1 2));Y
                                    pointZ);Z
                            corner4Inset (list
                                         (+ xAnchor cornerLongOffset);X
                                         (- yAnchor (-(/ frameWidthP1 2)cornerTransverseOffset));Y
                                         pointZ);Z
                      );end setq
              ) ) ) );end ifs
          ) );end ifs
          (setq lineCenterPoint (list xMidpoint yMidpoint pointZ))
        );end progn
      );end if
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun DirectoryDialog ( msg dir flag / Shell Fold Self Path )
  (vl-catch-all-apply
    (function
      (lambda ( / ac HWND )
        (if
          (setq Shell (vla-getInterfaceObject (setq ac (vlax-get-acad-object)) "Shell.Application")
                HWND  (vl-catch-all-apply 'vla-get-HWND (list ac))
                Fold  (vlax-invoke-method Shell 'BrowseForFolder (if (vl-catch-all-error-p HWND) 0 HWND) msg flag dir)
          )
          (setq Self (vlax-get-property Fold 'Self)
                Path (vlax-get-property Self 'Path)
                Path (vl-string-right-trim "\\" (vl-string-translate "/" "\\" Path))
          )
        )
      )
    )
  )
  (if Self  (vlax-release-object  Self))
  (if Fold  (vlax-release-object  Fold))
  (if Shell (vlax-release-object Shell))
  Path
);end defun
;**************************************************************************************************************************************************
(defun SUPERFLATTEN ( / *error* doc cnt ss expm locklst blocks layouts views 
                      mspace mspacecnt lst blknamelst patlst hpa templayout 
                      blkdef inoutlst actlayout notflatlst expblklst 
                      expblkcnt renameflag newname newnamelst notrenamedlst 
                      optans presufstr templst orig ucsfol renameans
                      TestZNormal TestXYNormal ZZeroPoint ZZeroCoord 
                      ProcessList MakeLWPolyline GetBlock PointList 
                      RotateToNormal TwoPointObj ApplyProps FlatMText FlatText 
                      FlatPointObj FlatLine FlatACE FlatCircle FlatArc 
                      FlatPline FlatSpline FlatDimension FlatXref FlatShape 
                      FlatHatch FlatSolidOrTrace FlatRayOrXline 
                      FlatWipeoutOrRaster FlatMline FlatTable FlatTolerance 
                      FlatRegion FlatPolyFaceMesh FlatCoordinates 
                      AttributesToText ExpBlockMethod CommandExplode 
                      ModBlockScale TraceObject CheckRename PrefixSuffix 
                      Spinbar LstACADPAT UnlockLayers RelockLayers 
                      SSVLAList SSAfterEnt Round GetNestedNames ClosestPoint 
                      FarthestPoint Farthest2Points AveragePts ValidItem)
                      ;; Global variables: *expans* *overkillans*
  (vl-load-com)
  (defun *error* (msg)
    (cond
      ((not msg))
      ((wcmatch (strcase msg) "*QUIT*,*CANCEL*")
        (if blknamelst
          (princ "\n ** CANCELED - UNDO RECOMMENED ** \n")
        )
      )
      (T (princ (strcat "\nError: " msg)))
    )
    (foreach x expblklst (vlax-put x 'Explodable acFalse))    
    (vl-catch-all-apply 'vla-delete (list templayout))
    (RelockLayers locklst)
    (setvar "hpassoc" hpa)
    (setvar "explmode" expm)
    (setvar "ucsfollow" ucsfol)
    (setvar "cmdecho" 1)
    (vla-EndUndoMark doc)
    (princ)
  );end error
  ;;;;;;; START SuperFlatten SUB-FUNCTIONS ;;;;;;;
  ;; Return T if normal is (0.0 0.0 1.0) or (0.0 0.0 -1.0) with fuzz.
  ;; Argument: an ename or vla-object.
  (defun TestZNormal (obj / n)
    (if (= (type obj) 'VLA-object)
      (setq n (vlax-get obj 'Normal))
      (setq n (cdr (assoc 210 (entget obj))))
    )
    (or
      (equal n '(0.0 0.0 1.0) 1e-8)
      (equal n '(0.0 0.0 -1.0) 1e-8)
    )
  );end
  ;; Argument: an ename or vla-object.
  (defun TestXYNormal (obj / n)
    (if (= (type obj) 'VLA-object)
      (setq n (vlax-get obj 'Normal))
      (setq n (cdr (assoc 210 (entget obj))))
    )
    (or
      ;; object drawn in front view
      (equal n '(0.0 -1.0 0.0) 1e-8)
      ;; back
      (equal n '(0.0 1.0 0.0) 1e-8)
      ;; left
      (equal n '(-1.0 0.0 0.0) 1e-8)
      ;; right
      (equal n '(1.0 0.0 0.0) 1e-8)
    )
  );end
  ;Argument: a single 3D point list.
  (defun ZZeroPoint (lst)
    (list (car lst) (cadr lst) 0.0)
  );end
  ;; Argument: a flat 3D coordinate list.
  ;; (setq l '(414.576 572.128 0.0 494.558 637.135 20.0 562.58 575.117 30.0))
  ;; Returns:
  ;; (414.576 572.128 0.0 494.558 637.135 0.0 562.58 575.117 0.0)
  (defun ZZeroCoord (coord / lst)
    (repeat (/ (length coord) 3)
      (setq lst (cons (car coord) lst)
            lst (cons (cadr coord) lst)
            lst (cons 0.0 lst)
            coord (cdddr coord)
      )
    )
    (reverse lst)
  );end
  (defun GetBlock ()
    (vlax-get (vla-get-ActiveLayout doc) 'Block)
  );end
  ;; Called in the ProcessList sub-function.
  (defun Spinbar (sbar) 
    (cond ((= sbar "\\") "|")
          ((= sbar "|") "/")
          ((= sbar "/") "-")
          (t "\\")
    )
  );end
  ;; Arguments: an existing value and a test value.
  ;; The order of the arguments passed doesn't matter.
  ;; It determines whether a block definition should be renamed
  ;; or not by setting the renameflag variable.
  (defun CheckRename (exval testval)
    (if (and renameans presufstr)
      (or 
        (equal exval testval 1e-6)
        (setq renameflag T)
      )
    )
  );end
  ;; Check for item in a collection
  (defun ValidItem (collection item / res)
    (vl-catch-all-apply
      '(lambda ()
        (setq res (vla-item collection item))))
    res
  )
  ;; Argument: either "prefix" or "suffix" string.
  ;; Called from program options.
  ;; snvalid returns nil when passed a string with 
  ;; leading or trailing spaces.
  (defun PrefixSuffix (argstr / str StripSpaces)
    ;Remove leading and trailing spaces for snvalid check.
    (defun StripSpaces (str)
      (vl-string-right-trim " " (vl-string-left-trim " " str))
    )
    (setq str (getstring T (strcat "\nBlock name " argstr ": ")))
    (if (eq argstr "prefix")
      (setq str (vl-string-left-trim " " str))
      (setq str (vl-string-right-trim " " str))
    )
    (cond
      ((eq "" str)
        (princ "\nBlocks will not be renamed. ")
      )
      ((not (snvalid (StripSpaces str) 0))
        (while
          (and 
            (not (eq "" str))
            (not 
              (snvalid
                (setq str (StripSpaces (getstring T (strcat "\nInvalid " argstr ": ")))) 0
              )
            )
          )
        )
      )
    )
    (if (not (eq "" str))
      str
    )
  );end
  ;; Entmake a lwpline. 
  ;; Returns a lwpline vla-object if successful.
  (defun MakeLWPolyline (ptlst width)
    (if 
      (and
        (> (length ptlst) 1)
        (apply 'and ptlst)
      )
      (if (entmake
            (append
              (list
                '(0 . "LWPOLYLINE")
                '(100 . "AcDbEntity")
                '(100 . "AcDbPolyline")
                 (cons 90 (length ptlst))
                 (cons 43 width)
              )
              (mapcar '(lambda (x) (cons 10 x)) ptlst)
            )
          )
        (progn
          (setq renameflag T)
          (vlax-ename->vla-object (entlast))
        )
      )
    )
  );end
  ;; Arguments: two vla-objects.
  ;; Apply the properties of the old object to new object 
  ;; and delete the old object.
  (defun ApplyProps (old new)
    (if 
      (and 
        old 
        new
        (not (vlax-erased-p old));added 7/26/2006
        (not (vlax-erased-p new));added 7/26/2006
      )
      (progn
        (mapcar '(lambda (x) (vlax-put new x (vlax-get old x)))
          '("Color" "Layer" "Linetype" "LinetypeScale" "Lineweight")
        )
        (vl-catch-all-apply
          '(lambda () 
            (vlax-put new 'LinetypeGeneration (vlax-get old 'LinetypeGeneration))
          )
        )
        (vla-delete old)
        (setq renameflag T)
      )
    )
  );end
  ;; Returns a nested point list from a flat point list.
  (defun PointList (obj / coord lst)
    (setq coord (vlax-get obj 'Coordinates))
    (cond
      ((eq "AcDbPolyline" (vlax-get obj 'ObjectName))
        (repeat (/ (length coord) 2)
          (setq lst (cons (list (car coord) (cadr coord)) lst)
                coord (cddr coord)
          )
        )
      )
      (T
        (repeat (/ (length coord) 3)
          (setq lst (cons (list (car coord) (cadr coord) (caddr coord)) lst)
                coord (cdddr coord)
          )
        )
      )
    )
    (reverse lst)
  );end
  ;; Used when certain object types pass the TestXYNormal test.
  ;; Converts the argument object to a line. 
  ;; ApplyProps handles delete the source object.
  (defun TwoPointObj (obj / tracepts x y pts newobj)
    (if  
      (or
        (setq tracepts (TraceObject obj))
        (setq tracepts (PointList obj))
      )
      (progn
        (setq x (caar tracepts)
              y (cadar tracepts)
        )
        (if
          (or 
            ;; Bug fixed 7/24/2007
            (vl-every '(lambda (n) (equal x (car n) 1e-2)) tracepts)
            (vl-every '(lambda (n) (equal y (cadr n) 1e-2)) tracepts)
          )
          (progn
            (if (= 2 (length tracepts))
              ;; Added 7/24/2007.
              (setq pts tracepts)
              (setq pts (Farthest2Points tracepts))
            )
            (if (= 2 (length pts))
              (progn
                (setq newobj 
                  (vlax-invoke (GetBlock) 'AddLine 
                    (ZZeroPoint (car pts)) (ZZeroPoint (cadr pts))
                  )
                )
                ;; Do this first, then send object to ProcessList.
                (ApplyProps obj newobj)
                (ProcessList (list newobj))
              )
            )
          )
        )
      )
    )
  );end
  ;; Convert a list of attribute reference objects to text objects.
  (defun AttributesToText (attlst / elst n)
    (foreach x attlst
      (setq n (vlax-get x 'Normal))
      (setq elst (entget (vlax-vla-object->ename x)))
      (entmake
        (list
          '(0 . "TEXT")
          (cons 1 (vlax-get x 'TextString))
          (cons 7 (vlax-get x 'StyleName))
          (cons 8 (vlax-get x 'Layer))
          (cons 10 (ZZeroPoint (vlax-get x 'InsertionPoint)))
          (cons 11 (ZZeroPoint (vlax-get x 'TextAlignmentPoint)))
          (cons 40 (vlax-get x 'Height))
          (cons 41 (vlax-get x 'ScaleFactor))
          (cons 50 (vlax-get x 'Rotation))
          (cons 51 (vlax-get x 'ObliqueAngle))
          (cons 62 (vlax-get x 'Color))
          (cons 67 (cdr (assoc 67 elst)))
          (cons 71 (cdr (assoc 71 elst)))
          (cons 72 (cdr (assoc 72 elst)))
          (cons 73 (cdr (assoc 74 elst)))
          '(210 0.0 0.0 1.0)
          (cons 410 (cdr (assoc 410 elst)))
        )
      );make
      (RotateToNormal (vlax-ename->vla-object (entlast)) n)
    )
  );end
  ;; Modify the X, Y and Z scale factors of a block
  ;; reference if they are close to equal so the explode
  ;; method can be used.
  ;; Return T if successful, otherwise nil.
  ;; If nil, call CommandExplode.
  ;; Note, the explode method works if a block has for
  ;; instance a negative X scale factor. The block was mirrored.
  ;; I'm not sure this is a complete solution in terms of
  ;; other possible negative values.
  (defun ModBlockScale (blk / xsf ysf zsf)
    (setq xsf (vlax-get blk 'XScaleFactor)
          ysf (vlax-get blk 'YScaleFactor)
          zsf (vlax-get blk 'ZScaleFactor)
    )
    (if
      (and
        (or
          (equal xsf ysf 1e-2)
          (equal (- xsf) ysf 1e-2)
        )
        (equal ysf zsf 1e-2)
      )
      (progn
        (vlax-put blk 'XScaleFactor (Round xsf 1e-2))
        (vlax-put blk 'YScaleFactor (Round ysf 1e-2))
        (vlax-put blk 'ZScaleFactor (Round zsf 1e-2))
        T
      )
    )
  );end
  ;; Explode a block reference using the Explode method.
  ;; If the reference passes the TestZNormal test it's not exploded.
  (defun ExpBlockMethod (blkref / ip blkdef flag lay attlst exlst)
    (setq blkdef (vla-item blocks (vlax-get blkref 'Name)))
    (if 
      (or 
        (not (vlax-property-available-p blkdef 'Explodable))
        (eq acTrue (vlax-get blkdef 'Explodable))
      )
      (setq flag T)
    )
    (cond
      ((TestZNormal blkref)
        (setq ip (vlax-get blkref 'InsertionPoint))
        (CheckRename ip (ZZeroPoint ip))
        (vlax-put blkref 'InsertionPoint (ZZeroPoint ip))
        (setq attlst (vlax-invoke blkref 'GetAttributes))
        (foreach x attlst (FlatText x))
      )
      ;; Block can be exploded using the explode method and the Explodable property
      ;; is acTrue if that property exists.
      ((and flag (ModBlockScale blkref))    
        (setq lay (vlax-get blkref 'Layer)
              attlst (vlax-invoke blkref 'GetAttributes)
              exlst (vlax-invoke blkref 'Explode)
        )
        (if exlst
          (progn
            (setq renameflag T)
            (setq expblkcnt (1+ expblkcnt))
            (AttributesToText attlst)
            (vla-delete blkref)
            (foreach x exlst
              (if (eq "AcDbAttributeDefinition" (vlax-get x 'ObjectName))
                (vla-delete x)
              )
            )
            (setq exlst (vl-remove-if 'vlax-erased-p exlst))
            (foreach x exlst
              (if (eq "0" (vlax-get x 'Layer))
                (vlax-put x 'Layer lay)
              )
              (if (zerop (vlax-get x 'Color))
                (vlax-put x 'Color 256)
              )
            )
            (ProcessList exlst)
          )
          (progn
            (setq cnt (1+ cnt))
            (if (not (vl-position "AcDbBlockReference" notflatlst))
              (setq notflatlst (cons "AcDbBlockReference" notflatlst))
            )
          )
        )
      )
      ;; Otherwise use command because the block is not uniformly scaled.
      ;; Which the Exlpode method can't handle.
      (T (CommandExplode blkref))
    );cond
  );end
  ;; The types of objects which may be exploded with this function:
  ;; A hatch with an odd normal which can't be recreated because
  ;; the hatch pattern isn't available.
  ;; Dimensions with an odd normal.
  ;; AcDb3dSolid and AcDbBody objects. Some can be exploded, others can't.
  ;; Block references when the ExpBlockMethod function above can't do it 
  ;; because the reference is not uniformly scaled.
  (defun CommandExplode (obj / lay mark objname attlst name exlst)
    (setq mark (entlast)
          objname (vlax-get obj 'ObjectName)
    )
    (cond
      ((or 
         (eq "AcDb3dSolid" objname)
         (eq "AcDbBody" objname)
         (eq "AcDbSurface" objname)
        
         (eq "AcDbZombieEntity" objname)
       
         (wcmatch objname "AeccDb*")
        )
        (command "._explode" (vlax-vla-object->ename obj))
        (if (not (eq mark (entlast)))
          (setq exlst (SSVLAList (ssget "p")))
        )
      )
      ((or 
         (eq "AcDbHatch" objname)
         (wcmatch objname "*Dimension")
        )
        (command "._explode" (vlax-vla-object->ename obj))
        (if (not (eq mark (entlast)))
          (setq exlst (SSVLAList (ssget "p")))
        )
      )
    
      ((wcmatch objname "AecDb*,AecsDb*")
        (command "._explode" (vlax-vla-object->ename obj))
        (if (not (eq mark (entlast)))
          (setq exlst (SSVLAList (ssget "p")))
        )
        (if
          (and
            (= 1 (length exlst))
            (eq "AcDbBlockReference" (vlax-get (car exlst) 'ObjectName))
            (wcmatch (setq name (vlax-get (car exlst) 'Name)) "`**")
          )
          (setq blknamelst (cons name blknamelst))
        )
      )
      ((eq "AcDbBlockReference" objname)
         (setq lay (vlax-get obj 'Layer)
               attlst (vlax-invoke obj 'GetAttributes)
         )
         (command "._explode" (vlax-vla-object->ename obj))
         ;; Had some problems here with blocks which cannot be exploded.
         ;; The following test seems to fix it.
         (if 
           (and 
             (not (eq mark (entlast)))
             (setq exlst (SSVLAList (ssget "p")))
             ;(not (eq mark (entlast)))
           )
           (progn
             (setq expblkcnt (1+ expblkcnt))
             (AttributesToText attlst);seems OK here
             (foreach x exlst
               (if (eq "AcDbAttributeDefinition" (vlax-get x 'ObjectName))
                 (vla-delete x)
               )
             )
             (setq exlst (vl-remove-if 'vlax-erased-p exlst))
             ;If an exlpoded object is on layer 0, put it on the
             ;layer of the exploded object. If its color is byBlock, 
             ;change color to byLayer.
             (foreach x exlst
               (if (eq "0" (vlax-get x 'Layer))
                 (vlax-put x 'Layer lay)
               )
               (if (zerop (vlax-get x 'Color))
                 (vlax-put x 'Color 256)
               )
             )
           )
         )
       )
    );cond
    (if exlst
      (progn
        (setq renameflag T)
        (ProcessList exlst)
      )
      ;Else set count of objects not processed and the ObjectName.
      (progn
        (setq cnt (1+ cnt))
        (if (not (vl-position objname notflatlst))
          (setq notflatlst (cons objname notflatlst))
        )
      )
    )
  );end
  ;; Arguments: vla-object and a normal vector.
  ;; Called from FlatMtext, FlatText, FlatXref and FlatShape.
  ;; The check for the normal Z value approaching 1 or -1 is because
  ;; it seems within that range the display of the object simply
  ;; shows its rotation. There's an example of this in Ken Luk's
  ;; test file from customer files.
  ;; Note, put rotation could be like this.
  ;; (vlax-put obj 'Rotation (+ (* pi 0.5) (atan (cadr n) (car n))))
  (defun RotateToNormal (obj n)
    (if
      (and
        (not (equal 1.0 (caddr n) 1e-5))
        (not (equal -1.0 (caddr n) 1e-5))
      )
      (vlax-put obj 'Rotation 
        (+ (vlax-get obj 'Rotation) (+ (* pi 0.5) (angle '(0 0) n)))
      )
    )
  );end
  ;;; TRACE FUNCTION ;;;
  (defun TraceObject (obj / typlst typ ZZeroList TracePline TraceACE 
                               TraceType1Pline TraceType23Pline)
    ;;;; start trace sub-functions ;;;;
    ;; Argument: 2D or 3D point list.
    ;; Returns: 3D point list with zero Z values.
    (defun ZZeroList (lst)
      (mapcar '(lambda (p) (list (car p) (cadr p) 0.0)) lst)
    )
    ;; Argument: vla-object, a heavy or lightweight pline.
    ;; Returns: WCS point list if successful.
    ;; Notes: Duplicate adjacent points are removed.
    ;;        The last closing point is included given a closed pline.
    (defun TracePline (obj / param endparam anginc tparam pt blg 
                             ptlst delta inc arcparam flag)
      (setq param (vlax-curve-getStartParam obj)
            endparam (vlax-curve-getEndParam obj)
            anginc (* pi (/ 7.5 180.0))
      )
      (while (<= param endparam)
        (setq pt (vlax-curve-getPointAtParam obj param))
        ;Avoid duplicate points between start and end.
        (if (not (equal pt (car ptlst) 1e-12))
          (setq ptlst (cons pt ptlst))
        )
        ;A closed pline returns an error (invalid index) 
        ;when asking for the bulge of the end param.
        (if 
          (and 
            (/= param endparam)
            (setq blg (abs (vlax-invoke obj 'GetBulge param)))
            (/= 0 blg)
          )
          (progn
            (setq delta (* 4 (atan blg));included angle
                  inc (/ 1.0 (1+ (fix (/ delta anginc))))
                  arcparam (+ param inc)
            )
            (while (< arcparam (1+ param))
              (setq pt (vlax-curve-getPointAtParam obj arcparam)
                    ptlst (cons pt ptlst)
                    arcparam (+ inc arcparam)
              )
            )
          )
        )
        (setq param (1+ param))
      );while
      (if (> (length ptlst) 1)
        (progn
          (setq ptlst (vl-remove nil ptlst))
          (ZZeroList (reverse ptlst))
        )
      )
    );end
    ;; Argument: vla-object, an arc, circle or ellipse.
    ;; Returns: WCS point list if successful.
    (defun TraceACE (obj / startparam endparam anginc 
                           delta div inc pt ptlst)
      ;start and end angles
      ;circles don't have StartAngle and EndAngle properties.
      (setq startparam (vlax-curve-getStartParam obj)
            endparam (vlax-curve-getEndParam obj)
            ;anginc (* pi (/ 7.5 180.0))
            anginc (* pi (/ 2.5 180.0))
      )
      (if (equal endparam (* pi 2) 1e-6)
        (setq delta endparam)
        
        (setq delta (abs (- endparam startparam)))
      )
      ;Divide delta (included angle) into an equal number of parts.
      (setq div (1+ (fix (/ delta anginc)))
            inc (/ delta div)
      )
      ;Or statement allows the last point on an open ellipse
      ;rather than using (<= startparam endparam) which sometimes
      ;fails to return the last point. Not sure why.
      (while
        (or
          (< startparam endparam)
          (equal startparam endparam 1e-12)
          ;(equal startparam endparam)
        )
        (setq pt (vlax-curve-getPointAtParam obj startparam)
              ptlst (cons pt ptlst)
              startparam (+ inc startparam)
        )
      )
      (ZZeroList (reverse ptlst))
    );end
    ;; Explode curve fit pline and gather point list from arcs.
    ;; This sub-function deletes objects.
    (defun TraceType1Pline (obj / ptlst objlst lst)
      (setq ptlst (list (vlax-curve-getStartPoint obj))
            objlst (vlax-invoke obj 'Explode)
      )
      (foreach x objlst 
        (setq lst (TraceACE x))
        (if (not (equal (car lst) (last ptlst) 1e-8))
          (setq lst (reverse lst))
        )
        (setq ptlst (append ptlst (cdr lst)))
        (vla-delete x)
      )
      (ZZeroList ptlst)
    );end
    ;; Explode quadratic and cubic plines and gather point list from lines.
    ;; Produces an exact trace.
    ;; This sub-function deletes objects.
    (defun TraceType23Pline (obj / objlst ptlst lastpt)
      (setq objlst (vlax-invoke obj 'Explode)
            lastpt (vlax-get (last objlst) 'EndPoint)
      )
      (foreach x objlst
        (setq ptlst (cons (vlax-get x 'StartPoint) ptlst))
        (vla-delete x)
      )
      (ZZeroList (reverse (cons lastpt ptlst)))
    );end
    ;;;; end trace sub-functions ;;;;
    ;;;; primary trace function ;;;;
    (setq typlst '("AcDb2dPolyline" "AcDbPolyline"  
                   "AcDbCircle" "AcDbArc" "AcDbEllipse")
    )
    (or 
      (eq (type obj) 'VLA-OBJECT)
      (setq obj (vlax-ename->vla-object obj))
    )
    (setq typ (vlax-get obj 'ObjectName))
    (if (vl-position typ typlst)
      (cond
         ((or (eq typ "AcDb2dPolyline") (eq typ "AcDbPolyline")) 
            (cond
              ((or
                 (not (vlax-property-available-p obj 'Type))
                 (= 0 (vlax-get obj 'Type))
                )
                (TracePline obj)
              )
              ((or (= 3 (vlax-get obj 'Type)) (= 2 (vlax-get obj 'Type)))
                (TraceType23Pline obj)
              )
              ((= 1 (vlax-get obj 'Type))
                (TraceType1Pline obj)
              )
            )
         )
         ((or (eq typ "AcDbCircle") (eq typ "AcDbArc") (eq typ "AcDbEllipse"))
           (TraceACE obj)
         )
      )
    )
  );end TraceObject
  ;;; TRACE FUNCTION ;;;
  ;; Based on code by Luis Esquivel.
  ;; Returns a list of pattern names from acad.pat.
  (defun LstACADPAT ( / file line tmp lst )
    (setq file (open (findfile "acad.pat") "r"))
    (while (setq line (read-line file))
      (setq tmp (cons line tmp))
    )
    (close file)
    (setq tmp (reverse tmp))
    (setq lst (vl-remove-if-not
      '(lambda (string)
        (if (eq (substr string 1 1) "*") string)) tmp))

    (mapcar
      '(lambda (string)
        (substr string 2 (- (vl-string-search "," string) 1))) lst)
  );end
 
  (defun UnlockLayers (doc / laylst)
    (vlax-for x (vla-get-Layers doc)
      ;filter out xref layers
      (if 
        (and 
          (not (vl-string-search "|" (vlax-get x 'Name)))
          (eq :vlax-true (vla-get-lock x))
        )
        (progn
          (setq laylst (cons x laylst))
          (vla-put-lock x :vlax-false)
        )
      )
    )
    laylst
  );end
  (defun RelockLayers (lst)
    (foreach x lst
      (vl-catch-all-apply 'vla-put-lock (list x :vlax-true))
    )
  );end
  (defun SSVLAList (ss / obj lst i)
    (setq i 0)
    (if ss
      (repeat (sslength ss)
        (setq obj (vlax-ename->vla-object (ssname ss i))
              lst (cons obj lst)
              i (1+ i)
        )
      )
    )
    (reverse lst)
  );end
  ;; Filter out sub-entities and entities not in current space.
  ;; Returns a selection set of primary entities after ename ent
  ;; or nil if ent equals entlast.
  (defun SSAfterEnt (ent / ss entlst)
    (and
      (setq ss (ssadd))
      (while (setq ent (entnext ent))
        (setq entlst (entget ent))
        (if 
          (and
            (not (wcmatch (cdr (assoc 0 entlst)) "ATTRIB,VERTEX,SEQEND"))
            (eq (cdr (assoc 410 entlst)) (getvar "ctab"))
          )
          (ssadd ent ss)
         )
       )
     )
    (if (> (sslength ss) 0) ss)
  );end
  ;; Revised to eliminate duplicate block names
  (defun GetNestedNames (blkcol blkname / name namelst temp1 temp2)
    ;first nested level
    (vlax-for x (vla-item blkcol blkname)
      (if 
        (and
          (= "AcDbBlockReference" (vlax-get x 'ObjectName))
          (not (vl-position (setq name (vlax-get x 'Name)) namelst))
        )
        (setq namelst (cons name namelst))
      )
    )
    ;nested deeper
    (setq temp1 namelst)
    (while temp1
      (foreach x temp1
        (vlax-for x (vla-item blkcol x)
          (if 
            (and
              (= "AcDbBlockReference" (vlax-get x 'ObjectName))
              (not (vl-position (setq name (vlax-get x 'Name)) namelst))
            )
            (setq namelst (cons name namelst)
                  temp2 (cons name temp2)
            )
          )
        )
      )
      (setq temp1 temp2 temp2 nil)
    )
    (reverse namelst)
  );end
  (defun ClosestPoint ( pt ptlst / range dist res )
    (setq range (* (distance pt (car ptlst)) 1.1))
    (foreach p ptlst
      (setq dist (distance p pt))
      (if (< dist range)
        (setq range dist res p)
      )
    )
    res
  );end
  ;; Arguments - a point and a point list.
  ;; Returns - the point farthest from point.
  (defun FarthestPoint (pt ptlst / x dist res)
    (setq x 0)
    (foreach p ptlst
      (setq dist (distance p pt)) 
      ;added equal to avoid errors elsewhere
      (if (>= dist x)
        (setq x dist res p)
      )
    )
    res
  );end
  ;; Argument: a point list.
  ;; Returns: the farthest two points in point list.
  (defun Farthest2Points (ptlst / pt)
    (list
      (setq pt (FarthestPoint (AveragePts ptlst) ptlst))
      (FarthestPoint pt ptlst)
    )
  );end
  ;; Average point from point list.
  (defun AveragePts (ptlist / lst)
    (if (= (length (car ptlist)) 2);2D point list
      (setq lst 
        (list
          (apply '+ (mapcar '(lambda (x) (car x)) ptlist))
          (apply '+ (mapcar '(lambda (x) (cadr x)) ptlist))
        )
      )
      (setq lst ;3D point list
        (list
          (apply '+ (mapcar '(lambda (x) (car x)) ptlist))
          (apply '+ (mapcar '(lambda (x) (cadr x)) ptlist))
          (apply '+ (mapcar '(lambda (x) (caddr x)) ptlist))
        )
      )
    )
    (mapcar '(lambda (x) (/ x (length ptlist) 1.0)) lst)
  );end
  
  (defun Round (value to)
    (if (zerop to) value
      (* (atoi (rtos (/ (float value) to) 2 0)) to)))
  ;;;;;;;; START FLATTEN SUB-FUNCTIONS ;;;;;;;;;
  (defun FlatPointObj (obj / coord)
    ; no reason for renameflag here?
    (if (not (TestZNormal obj))
      (vlax-put obj 'Normal '(0.0 0.0 1.0))
    )
    (setq coord (vlax-get obj 'Coordinates))
    (CheckRename coord (ZZeroPoint coord))
    (vlax-put obj 'Coordinates (ZZeroPoint coord))
    (CheckRename (vlax-get obj 'Thickness) 0)
    (vlax-put obj 'Thickness 0.0)
  );end
  (defun FlatLine (obj / stpt enpt)
    (if (not (TestZNormal obj))
      (progn
        (vlax-put obj 'Normal '(0.0 0.0 1.0))
        (setq renameflag T)
      )
    )
    (setq stpt (vlax-get obj 'StartPoint))
    (CheckRename stpt (ZZeroPoint stpt))
    (vlax-put obj 'StartPoint (ZZeroPoint stpt))
    (setq enpt (vlax-get obj 'EndPoint))
    (CheckRename enpt (ZZeroPoint enpt))
    (vlax-put obj 'EndPoint (ZZeroPoint enpt))
    (CheckRename (vlax-get obj 'Thickness) 0)
    (vlax-put obj 'Thickness 0.0)
    ;; If flattening made the length very short, delete line. 
    (if (equal 0.0 (vlax-get obj 'Length) 1e-6)
      (vla-delete obj)
    )
  );end
  (defun FlatMText (obj / ip nrml)  
    (setq ip (vlax-get obj 'InsertionPoint))
    (CheckRename ip (ZZeroPoint ip))
    (vlax-put obj 'InsertionPoint (ZZeroPoint ip))
    (if (not (TestZNormal obj))
      (progn
        (setq nrml (vlax-get obj 'Normal))
        (vlax-put obj 'Normal '(0.0 0.0 1.0))
        (RotateToNormal obj nrml)
        (setq renameflag T)
      )
    )
  );end
  (defun FlatText (obj / nrml pt ip ap)
    (CheckRename (vlax-get obj 'Thickness) 0)
    (vlax-put obj 'Thickness 0.0)
    (setq nrml (vlax-get obj 'Normal))
    (if (TestZNormal obj)
      (if (= 0 (vlax-get obj 'Alignment))
        (progn
          (setq ip (vlax-get obj 'InsertionPoint))
          (CheckRename ip (ZZeroPoint ip))
          (vlax-put obj 'InsertionPoint (ZZeroPoint ip))
        )
        (progn
          (setq ap (vlax-get obj 'TextAlignmentPoint))
          (CheckRename ap (ZZeroPoint ap))
          (vlax-put obj 'TextAlignmentPoint (ZZeroPoint ap))
        )
      )
      (progn
        (if (= 0 (vlax-get obj 'Alignment))
          (setq pt (vlax-get obj 'InsertionPoint))
          (setq pt (vlax-get obj 'TextAlignmentPoint))
        )
        (setq pt (ZZeroPoint pt))
        (vlax-put obj 'Normal '(0.0 0.0 1.0))
        (if (= 0 (vlax-get obj 'Alignment))
          (vlax-put obj 'InsertionPoint pt)
          (vlax-put obj 'TextAlignmentPoint pt)
        )
        (RotateToNormal obj nrml)
        (setq renameflag T)
      )
    )
  );end
  ;; Convert a circle with odd normal to an ellipse or otherwise.
  (defun FlatCircle (obj / ratio cen pt rad newobj)
    (cond
      ((TestZNormal obj)
        (setq cen (vlax-get obj 'Center))
        (CheckRename cen (ZZeroPoint cen))
        (vlax-put obj 'Center (ZZeroPoint cen))
        (CheckRename (vlax-get obj 'Thickness) 0)
        (vlax-put obj 'Thickness 0.0)
      )
      ((TestXYNormal obj)
        (TwoPointObj obj)
      )
      (T
        (setq ratio (abs (caddr (vlax-get obj 'Normal)))
              cen (ZZeroPoint (vlax-get obj 'Center))
              pt (ZZeroPoint (vlax-curve-getPointAtParam obj 0))
              rad (vlax-get obj 'Radius)
        )
        (cond
          ((equal ratio 0.0 1e-4)
            (FlatACE obj)
          ) 
          ((equal ratio 1.0 1e-4)
            (if (setq newobj (vlax-invoke (GetBlock) 'AddCircle cen rad))
              (ApplyProps obj newobj)
            )
          )
          (T
            (setq newobj (vlax-invoke (GetBlock) 
              'AddEllipse cen (mapcar '- cen pt) (abs ratio))
            )
            (ApplyProps obj newobj)
          )
        )
      )
    )
  );end
  ;; Convert an arc with odd normal to an ellipse or otherwise.
  (defun FlatArc (obj / ratio cen pt stpt enpt pt rad
                        newobj stparam enparam flag)
    (cond
      ((TestZNormal obj)
        (setq cen (vlax-get obj 'Center))
        (CheckRename cen (ZZeroPoint cen))
        (vlax-put obj 'Center (ZZeroPoint cen))
        (CheckRename (vlax-get obj 'Thickness) 0)
        (vlax-put obj 'Thickness 0.0)
      )
      ((TestXYNormal obj)
        (TwoPointObj obj)
      )
      (T
        (setq ratio (caddr (vlax-get obj 'Normal))
              cen (ZZeroPoint (vlax-get obj 'Center))
              stpt (ZZeroPoint (vlax-get obj 'StartPoint))
              enpt (ZZeroPoint (vlax-get obj 'EndPoint))
              rad (vlax-get obj 'Radius)
        )
        (if (minusp ratio)
          (setq ratio (abs ratio) flag T)
        )
        (cond
          ((< ratio 1e-4)
            (FlatACE obj)
          )
          ((equal ratio 1.0 1e-4)
            (if
              (setq newobj (vlax-invoke (GetBlock)
                'AddArc cen rad (angle cen stpt) (angle cen enpt))
              )
              (ApplyProps obj newobj)
            )
          )
          (T
            (vlax-put obj 'StartAngle 0.0)
            (setq pt (ZZeroPoint (vlax-curve-getStartPoint obj)))
            (setq newobj (vlax-invoke (GetBlock)
              'AddEllipse cen (mapcar '- cen pt) ratio)
            )
            ;; This idea from BreakMethod seems to do the trick.
            (setq pt (vlax-curve-getClosestPointTo newobj stpt)
                  stparam (vlax-curve-getParamAtPoint newobj pt)
                  pt (vlax-curve-getClosestPointTo newobj enpt)
                  enparam (vlax-curve-getParamAtPoint newobj pt)
            )
            ;; If the ratio (last value of normal) 
            ;; was negative which param goes where is reversed.
            (if flag
              (progn
                (vlax-put newobj 'StartParameter enparam)
                (vlax-put newobj 'EndParameter stparam)
              )
              (progn
                (vlax-put newobj 'StartParameter stparam)
                (vlax-put newobj 'EndParameter enparam)
              )
            )
            (ApplyProps obj newobj)
          )
        );cond
      );progn
    );if
  );end
  ;; An ellipse with an
  ;; odd normal which fails the first two conditions is traced.
  ;; It avoids potential "degenerate geometry" errors which are
  ;; not worth the risk invloved trying to preserve an ellipse.
  (defun FlatEllipse (obj / cen)  
    (cond
      ((TestZNormal obj)
        (setq cen (vlax-get obj 'Center))
        (CheckRename cen (ZZeroPoint cen))
        (vlax-put obj 'Center (ZZeroPoint cen))
      )
      ((TestXYNormal obj)
        (TwoPointObj obj)
      )
      (T (FlatACE obj))
    )
  );end
  ;; Trace an object when there's
  ;; no other safe way to flatten it.
  (defun FlatACE (obj / ptlst newobj objname)
    (setq ptlst (TraceObject obj))
    (if (setq newobj (MakeLWpolyline ptlst 0.0))
      (ApplyProps obj newobj)
      (progn
        (setq objname (vlax-get obj 'ObjectName)
              cnt (1+ cnt)
        )
        (if (not (vl-position objname notflatlst))
          (setq notflatlst (cons objname notflatlst))
        )
      )
    )
  );end
  ;; Heavy and lightweight plines.
  ;; A heavy pline is converted to lightweight if it is 
  ;; traced using TraceObject.
  (defun FlatPline (obj / width ptlst newobj)
    (cond 
      ((TestZNormal obj)
        (CheckRename (vlax-get obj 'Elevation) 0)
        (vlax-put obj 'Elevation 0.0)
        (CheckRename (vlax-get obj 'Thickness) 0)
        (vlax-put obj 'Thickness 0.0)
      )
      ((TestXYNormal obj)
        (TwoPointObj obj)
      )
      (T   
        ;; If a pline had various widths, the new width is zero.
        ;; Seems nothing can be done about that.
        (if 
          (vl-catch-all-error-p 
            (setq width 
              (vl-catch-all-apply 'vlax-get (list obj 'ConstantWidth))
            )
          )
          (setq width 0.0)
        )
        (setq ptlst (TraceObject obj))
        (if (setq newobj (MakeLWpolyline ptlst width))
          (ApplyProps obj newobj)
        )
      )
    )
  );end
  ;; A PolyFaceMesh object with one face needs to be exploded to a 
  ;; 3D Face before FlatCoordinates below can process it.
  (defun FlatPolyFaceMesh (obj / mark)
    (if (/= 1 (vlax-get obj 'NumberOfFaces))
      (FlatCoordinates obj)
      (progn
        (setq mark (entlast))
        (command "._explode" (vlax-vla-object->ename obj))
        (if (not (eq mark (entlast)))
          (FlatCoordinates (vlax-ename->vla-object (entlast)))
        )
      )
    )
  );end
  ;; Handles 3DPoly, 3DFace, PolyFaceMesh, PolygonMesh and Leader objects.
  ;; A PolyFaceMesh object may need pre-processing. See the above function.
  ;; Note, it seems changing the coordinates of a leader when not
  ;; in WCS can change its normal. One reason the program flattens in WCS.
  (defun FlatCoordinates (obj / coord objname)
    (setq coord (vlax-get obj 'Coordinates))
    (if 
      (vl-catch-all-error-p
        (vl-catch-all-apply
          '(lambda () (vlax-put obj 'Coordinates (ZZeroCoord coord)))
        )
      )
      (progn
        (setq cnt (1+ cnt)
              objname (vlax-get obj 'ObjectName)
        )
        (if (not (vl-position objname notflatlst))
          (setq notflatlst (cons objname notflatlst))
        )
      )
    )
    (CheckRename (vlax-get obj 'Coordinates) coord)
  );end
  ;; The normal of a spline is not exposed under Active X.
  ;; There is no normal if the spline is not planar.
  ;; See the IsPlanar property. So if it is planar and the
  ;; third value in the coordinate list is zero, then the
  ;; spline does not need to be modified.
  ;; If it is modified the spline should not change shape.
  ;; What will happen is any fit points may be lost.
  ;; Seems OK since fit points are sometimes removed during
  ;; spline edit operations anyway. Or it may not have 
  ;; fit points in the first place.
  (defun FlatSpline (obj / ctrlpts kts)
    (setq ctrlpts (vlax-get obj 'ControlPoints))
    (if
      (not
        (and
          (= -1 (vlax-get obj 'IsPlanar))
          (zerop (caddr ctrlpts))
        )
      )
      (progn
        (setq kts (vlax-get obj 'Knots))
        (vlax-put obj 'ControlPoints (ZZeroCoord ctrlpts))
        (vlax-put obj 'Knots kts)
        (setq renameflag T)
      )
    )
  );end
  ;; The explode method doesn't work with dimension objects.
  ;; Spent some time with this one. Explode dims with odd normals
  ;; seems the best approach for now.
  (defun FlatDimension (obj / z pt)
    (if (TestZNormal obj)
      (progn
        (setq z (caddr (vlax-get obj 'TextPosition)))
        (CheckRename z 0)
        (if (not (zerop z))
          (vlax-invoke obj 'Move (list 0.0 0.0 z) '(0.0 0.0 0.0))
        )
        ;; Added the following if statements 8/8/2007
        (if (vlax-property-available-p obj 'ExtLine1Point)
          (progn
            (setq pt (vlax-get obj 'ExtLine1Point))
            (CheckRename pt (ZZeroPoint pt))
            (vlax-put obj 'ExtLine1Point (ZZeroPoint pt))
          )
        )
        (if (vlax-property-available-p obj 'ExtLine2Point)
          (progn
            (setq pt (vlax-get obj 'ExtLine2Point))
            (CheckRename pt (ZZeroPoint pt))
            (vlax-put obj 'ExtLine2Point (ZZeroPoint pt))
          )
        )
        (if (vlax-property-available-p obj 'ExtLine1StartPoint)
          (progn
            (setq pt (vlax-get obj 'ExtLine1StartPoint))
            (CheckRename pt (ZZeroPoint pt))
            (vlax-put obj 'ExtLine1StartPoint (ZZeroPoint pt))
          )
        )
        (if (vlax-property-available-p obj 'ExtLine2StartPoint)
          (progn
            (setq pt (vlax-get obj 'ExtLine2StartPoint))
            (CheckRename pt (ZZeroPoint pt))
            (vlax-put obj 'ExtLine2StartPoint (ZZeroPoint pt))
          )
        )
        (if (vlax-property-available-p obj 'ExtLine1EndPoint)
          (progn
            (setq pt (vlax-get obj 'ExtLine1EndPoint))
            (CheckRename pt (ZZeroPoint pt))
            (vlax-put obj 'ExtLine1EndPoint (ZZeroPoint pt))
          )
        )
        (if (vlax-property-available-p obj 'ExtLine2EndPoint)
          (progn
            (setq pt (vlax-get obj 'ExtLine2EndPoint))
            (CheckRename pt (ZZeroPoint pt))
            (vlax-put obj 'ExtLine2EndPoint (ZZeroPoint pt))
          )
        )
      )
      (CommandExplode obj)
    )
  );end
  ;; Change the normal first and then the IP.
  (defun FlatXref (obj / ip nrml)
    (setq ip (vlax-get obj 'InsertionPoint)
          nrml (vlax-get obj 'Normal)
    )
    (if (not (TestZNormal obj))
      (progn 
        (vlax-put obj 'Normal '(0.0 0.0 1.0))
        (RotateToNormal obj nrml)
      )
    )
    (vlax-put obj 'InsertionPoint (ZZeroPoint ip))
  );end
  (defun FlatTolerance (obj / ip nrml)
    (setq ip (vlax-get obj 'InsertionPoint)
          nrml (vlax-get obj 'Normal)
    ) 
    (if (not (TestZNormal obj))
      (progn
        (vlax-put obj 'Normal '(0.0 0.0 1.0))
        (setq renameflag T)
      )
    )
    (CheckRename ip (ZZeroPoint ip))
    (vlax-put obj 'InsertionPoint (ZZeroPoint ip))
  );end
  ;; Formerly named FlatBlockReference.
  (defun FlatMInsert (obj / nrml blkip ip attlst flag ip ap)
    (setq nrml (vlax-get obj 'Normal)
          blkip (vlax-get obj 'InsertionPoint)
    )
    (if (not (TestZNormal obj))
      (progn
        (vlax-put obj 'Normal '(0.0 0.0 1.0))
        (setq flag T
              renameflag T
        )
      )
    )
    (setq attlst (vlax-invoke obj 'GetAttributes))   
    (foreach x attlst
      (CheckRename (vlax-get x 'Thickness) 0)
      (vlax-put x 'Thickness 0.0)
      (if (not (TestZNormal x))
        (progn
          (vlax-put x 'Normal '(0.0 0.0 1.0))
          (setq renameflag T)
        )
      )
      (if (= 0 (vlax-get x 'Alignment))
        (progn
          (setq ip (vlax-get x 'InsertionPoint))
          (CheckRename ip (ZZeroPoint ip))
          (vlax-put x 'InsertionPoint (ZZeroPoint ip))
        )
        (progn
          (setq ap (vlax-get x 'TextAlignmentPoint))
          (CheckRename ap (ZZeroPoint ap))
          (vlax-put x 'TextAlignmentPoint (ZZeroPoint ap))
        )
      )
    )
    (CheckRename blkip (ZZeroPoint blkip))
    (vlax-put obj 'InsertionPoint (ZZeroPoint blkip))
    ;; Doing this twice seems screwy but it works.
    (foreach x attlst
      (if (= 0 (vlax-get x 'Alignment))
        (vlax-put x 'InsertionPoint (ZZeroPoint (vlax-get x 'InsertionPoint)))
        (vlax-put x 'TextAlignmentPoint (ZZeroPoint (vlax-get x 'TextAlignmentPoint)))
      )
    )
    ;; not calling RotateToNormal here because the Rotate method
    ;; needs to be used
    (if
      (and
        flag
        (not (equal 1.0 (caddr nrml) 1e-5))
        (not (equal -1.0 (caddr nrml) 1e-5))
      )
      (progn
        (vlax-invoke obj 'Rotate 
          (vlax-get obj 'InsertionPoint) (+ (* pi 0.5) (angle '(0 0) nrml))
        )
        (setq renameflag T)
      )
    )
  );end
  ;; The explode method doesn't work with hatch objects.
  ;; The patlst var is local in primary function.
  ;; Need to look at gradient hatches.
  ;; If a hatch has an odd normal and the hatch pattern is
  ;; available, the hatch is recreated to flatten it.
  ;; If the pattern isn't available, the hatch is exploded
  ;; and the result is flattened.
  ;; The HatchObjectType property specifies either a regular
  ;; hatch (zero) or a gradient hatch (one). Gradient hatch
  ;; was new in ACAD 2004. Like a solid hatch, a gradient hatch
  ;; cannot be exploded. If a gradient hatch has an odd normal
  ;; it's converted to a solid hatch to allow flattening.
  ;; The -hatchedit command does not work with a gradient hatch.
  ;; Gradients must be edited using the hatchedit dialog.
  ;; The HatchStyle style property determines Normal, Outer, Ignore.
  ;; The Style of the argument object is applied to the new hatch
  ;; if one is created.
  ;; Fixed a problem here when the hatch spacing of the existing
  ;; hatch is too dense so new hatch (or recreate boundary) fails.
  ;; Due to someone changed a standard hatch pattern?
  (defun FlatHatch (obj / rtd patname mark ss sset newobj)
    ;radians to degrees
    (defun rtd (radians)
       (/ (* radians 180.0) pi)
    );end
    (cond 
      ((TestZNormal obj)
        (CheckRename (vlax-get obj 'Elevation) 0)
        (vlax-put obj 'Elevation 0.0)
      )
      ((TestXYNormal obj)
        (vla-delete obj)
        (setq renameflag T)
      )
      
      ;; A gradient hatch can be changed to a solid.
      ((and
         (vlax-property-available-p obj 'HatchObjectType)
         (= 1 (vlax-get obj 'HatchObjectType))
        )
        (vlax-put obj 'HatchObjectType 0)
        (ProcessList (list obj))
      )
      ;; Attempting to recreate the boundary and create a new hatch.
      ((and
         
         (>= (atoi (getvar "AcadVer")) 16)
         (or patlst (setq patlst (LstACADPAT)))
         (setq patname (vlax-get obj 'PatternName))
         (vl-position patname patlst)
         (setq mark (entlast))
         (not (command "._hatchedit" (vlax-vla-object->ename obj) "b" "p" "n"))
         ;; Selection set of the boundary object(s).
         (setq sset (SSAfterEnt mark))
         
         ;; The hatch command includes an object which is not part of the
         ;; selection set when zoomed way out. Seems like an ACAD bug.
         (not (command "zoom" "object" sset ""))
         (setvar "hpassoc" 1) 
         ;(setvar "hpassoc" 0)
         (not (command "._hatch" patname 
                (vlax-get obj 'PatternScale)
                (rtd (vlax-get obj 'PatternAngle)) "s" sset ""
              )
         )
         ;; Restore previous zoom.
         (not (command "zoom" "previous"))
         ;; Delete boundary objects here rather than later.
         (if sset
           (mapcar 'vla-delete (SSVLAList sset))
         )
         (setq newobj (vlax-ename->vla-object (entlast)))
         (eq "AcDbHatch" (vlax-get newobj 'ObjectName))
         ;; updates the hatch
         (not (vl-catch-all-error-p 
           (vl-catch-all-apply 'vlax-invoke 
             (list newobj 'Evaluate))))
       );and
        (vlax-put newobj 'HatchStyle (vlax-get obj 'HatchStyle))
        (vlax-put newobj 'AssociativeHatch 0)
        (ApplyProps obj newobj)
      )
      (T (CommandExplode obj))
    );cond
  );end
  ;; AcDbSolid or AcDbTrace
  ;; Though Properties shows an Elevation value for a solid,
  ;; the vla-object does not have an elevation property.
  ;; Get the coord first, then change the normal, then put zzerocoord.
  (defun FlatSolidOrTrace (obj / coord)
    (CheckRename (vlax-get obj 'Thickness) 0)
    (vlax-put obj 'Thickness 0.0)
    (setq coord (vlax-get obj 'Coordinates))
    (cond
      ((TestZNormal obj)
        (CheckRename coord (ZZeroCoord coord))
        (vlax-put obj 'Coordinates (ZZeroCoord coord))
      )
      ((TestXYNormal obj)
        (TwoPointObj obj)
      )
      (T
        (vlax-put obj 'Normal '(0.0 0.0 1.0))
        (vlax-put obj 'Coordinates (ZZeroCoord coord))
      )
    )
  );end
  (defun FlatShape (obj / ip nrml)
    (CheckRename (vlax-get obj 'Thickness) 0)
    (vlax-put obj 'Thickness 0.0)
    (setq ip (vlax-get obj 'InsertionPoint)
          nrml (vlax-get obj 'Normal)
    )
    (if (not (TestZNormal obj))
      (progn 
        (vlax-put obj 'Normal '(0.0 0.0 1.0))
        (RotateToNormal obj nrml)
        (setq renameflag T)
      )
    )
    (CheckRename ip (ZZeroPoint ip))
    (vlax-put obj 'InsertionPoint (ZZeroPoint ip))
  );end
  (defun FlatRayOrXline (obj / bp sp dv)
    (setq bp (vlax-get obj 'BasePoint))
    (CheckRename bp (ZZeroPoint bp))
    (vlax-put obj 'BasePoint (ZZeroPoint bp))
    (setq sp (vlax-get obj 'SecondPoint))
    (CheckRename sp (ZZeroPoint sp))
    (vlax-put obj 'SecondPoint (ZZeroPoint sp))
    (setq dv (vlax-get obj 'DirectionVector))
    (CheckRename dv (ZZeroPoint dv))
    (vlax-put obj 'DirectionVector (ZZeroPoint dv))
  );end
  ;; AcDbRasterImage or AcDbWipeout
  ;; Flatten raster (image) objects and wipeouts which are not 
  ;; parallel to WCS. Discovered by accident, changing the rotation 
  ;; property flattens ones which are not parallel to WCS.
  (defun FlatWipeoutOrRaster (obj / org)
    (vlax-put obj 'Rotation (vlax-get obj 'Rotation))
    (setq org (vlax-get obj 'Origin))
    (CheckRename org (ZZeroPoint org))
    (vlax-put obj 'Origin (ZZeroPoint org))
  );end
  ;; Like a Table object the Normal property is not exposed.
  ;; Modify the normal using entmod.
  (defun FlatMline (obj / ename elst mark lst ptlst pts z line)
    (setq ename (vlax-vla-object->ename obj))
    (cond
      ;; Flatten to a single line.
      ((TestXYNormal ename)
         ;; Could use CommandExplode if that function was changed to
         ;; return the exploded objects list rather than passing that
         ;; list to ProcessList. Other functions would have to be modified.
         ;(setq lst (CommandExplode obj))
         (setq mark (entlast))
         (command "._explode" ename)
         ;; Test object was exploded.
         (if (setq lst (SSVLAList (SSAfterEnt mark)))
           (progn
             (foreach x lst
               (setq ptlst (cons (ZZeroPoint (vlax-get x 'StartPoint)) ptlst))
               (setq ptlst (cons (ZZeroPoint (vlax-get x 'EndPoint)) ptlst))
             )
             (setq pts (Farthest2Points ptlst))
             (setq line (car lst))
             (vlax-put line 'StartPoint (car pts))
             (vlax-put line 'EndPoint (cadr pts))
             (mapcar 'vla-delete (cdr lst))
             (setq renameflag T)
           )
         )
       )
      ;; Flatten mline with an odd normal.
      ((not (TestZNormal ename))
        (setq elst (entget ename))
        (entmod (subst (cons 210 '(0.0 0.0 1.0)) (assoc 210 elst) elst))
        ;; This is needed to flatten, though not at Z zero. Strange.
        (vlax-put obj 'Coordinates (ZZeroCoord (vlax-get obj 'Coordinates)))
        ;; All the Z values should be the same at this point.
        (setq z (caddr (vlax-get obj 'Coordinates)))
        (if (not (zerop z))
          (vlax-invoke obj 'Move (list 0.0 0.0 z) '(0.0 0.0 0.0))
        )
        (setq renameflag T)
      )
      ;; Flatten to Z zero coordinates. Move because this
      ;; (vlax-put obj 'Coordinates (ZZeroCoord (vlax-get obj 'Coordinates)))
      ;; does not work to change the Z vlaues.
      (T
        (setq z (caddr (vlax-get obj 'Coordinates)))
        (CheckRename z 0)
        (if (not (zerop z))
          (vlax-invoke obj 'Move (list 0.0 0.0 z) '(0.0 0.0 0.0))
        )
      )
    )
  );end
  ;; The Direction property is similar to angle or rotation property.
  ;; The normal isn't exposed under Active X, but is
  ;; available using entget. Use entmod to change it.
  (defun FlatTable (obj / ename elst nrml ip dir)
    (setq ename (vlax-vla-object->ename obj)
          elst (entget ename)
          nrml (cdr (assoc 210 elst))
          ;The original ip for case where the normal is modified.
          ip (vlax-get obj 'InsertionPoint)
          dir (vlax-get obj 'Direction)
    )
    (if 
      (not
        (or
          ;; removed fuzz 6/6/2007
          (equal nrml '(0.0 0.0 1.0))
          (equal nrml '(0.0 0.0 -1.0))
        )
      )
      (progn
        (entmod (subst (cons 210 '(0.0 0.0 1.0)) (assoc 210 elst) elst))
        (setq renameflag T)
      )
    )
    (CheckRename ip (ZZeroPoint ip))
    (vlax-put obj 'InsertionPoint (ZZeroPoint ip))
    (CheckRename dir (ZZeroPoint dir))
    ;; Fix case when direction Z value is like this (0.569751 0.0 0.821818).
    (vlax-put obj 'Direction (ZZeroPoint dir))
    (vlax-invoke obj 'RecomputeTableBlock acTrue)
  );end
  ;; Regions are exploded. Seems there's no other way to deal with them.
  (defun FlatRegion (obj / lst)
    (if (setq lst (vlax-invoke obj 'Explode))
      (progn
        (vla-delete obj)
        (setq renameflag T)
        (ProcessList lst)
      )
      ;Else set count of objects not processed and the ObjectName.
      (progn
        (setq cnt (1+ cnt))
        (if (not (vl-position "AcDbRegion" notflatlst))
          (setq notflatlst (cons "AcDbRegion" notflatlst))
        )
      )
    )
  );end
  ;;;;;;;; END FLATTEN SUB-FUNCTIONS ;;;;;;;;;;;;;
  ;; ProcessList
  ;; Argument: a list of vla-objects.
  ;; It's primary function is send vla-objects to other sub-functions
  ;; for processing. All objects pass through this function.
  ;; It handles the progress indicator Spinbar. 
  ;; It also checks for objects passed which may be erased elsewhere.
  ;; And it does some pre-processing to check for very small objects,
  ;; which are deteted.
  (defun ProcessList (lst / objname)
    ;; Report either block definitions are being 
    ;; flattened or the selection set.
    (if inoutlst
      (princ 
        (strcat "\rFlattening blocks, please do not Cancel... " 
          (setq *sbar (Spinbar *sbar)) "\t")
      )    
      (princ 
        (strcat "\rFlattening selection... " 
          (setq *sbar (Spinbar *sbar)) "\t")
      )
    )
    (foreach x lst
      (if (not (vlax-erased-p x))
        (progn
          (setq objname (vlax-get x 'ObjectName))
          (cond
            ((eq "AcDbLine" objname)
              (if (< (vlax-get x 'Length) 1e-6)
                (vla-delete x)
                (FlatLine x)
              )
            )
            ((eq "AcDbCircle" objname)
              (if (< (vlax-get x 'Radius) 1e-6)
                (vla-delete x)
                (FlatCircle x)
              )
            )
            ((eq "AcDbArc" objname)
              (if 
                (or
                  (< (vlax-get x 'TotalAngle) 1e-6)
                  (< (vlax-get x 'Radius) 1e-6)
                )
                (vla-delete x)
                (FlatArc x)
              )
            )
            ((eq "AcDbEllipse" objname)
              (if
                (and
                  (< (vlax-get x 'MajorRadius) 1e-6)
                  (< (vlax-get x 'MinorRadius) 1e-6)
                )
                (vla-delete x)
                (FlatEllipse x)
              )
            )
            ((or
                (eq "AcDbPolyline" objname)
                (eq "AcDb2dPolyline" objname)
              )
              (if (< (vlax-curve-getDistAtParam x (vlax-curve-getEndParam x)) 1e-6)
                (vla-delete x)
                (FlatPLine x)
              )
            )
            ((eq "AcDbSpline" objname)
              (if (< (vlax-curve-getEndParam x) 1e-6)
                (vla-delete x)
                (FlatSpline x)
              )
            )
            ((or
                (eq "AcDb3dPolyline" objname)
                (eq "AcDbFace" objname)
                (eq "AcDbLeader" objname)
                (eq "AcDbPolygonMesh" objname)
              )
              (FlatCoordinates x)
            )
            ((eq "AcDbPolyFaceMesh" objname)
              (FlatPolyFaceMesh x)
            )
            ((eq "AcDbPoint" objname)
              (FlatPointObj x)
            )
            ((and 
                (eq "AcDbBlockReference" objname)
                (vlax-property-available-p x 'Path)
              )
              (FlatXref x)
            )
            
            ;; contains other blocks. It won't work if the block
            ;; reference is NUS beyond what ModBlockScale does.
            ((eq "AcDbBlockReference" objname)
              (vlax-for y (vla-item blocks (vlax-get x 'Name)) 
                (setq templst (cons y templst))
              )
              (if 
                (and 
                  (vl-every '(lambda (z)
                    (eq "AcDbBlockReference" (vlax-get z 'ObjectName))) 
                      templst)
                  (ModBlockScale x)
                )
                (progn
                  (ProcessList (vlax-invoke x 'Explode))
                  (vla-delete x)
                  (setq templst nil)
                )
                (ExpBlockMethod x)
              )
              (setq templst nil)
            )
            ((or
               (eq "AcDbText" objname)
               (eq "AcDbAttribute" objname)
               (eq "AcDbAttributeDefinition" objname)
              )
              (FlatText x)
            )
            ((eq "AcDbMText" objname)
              (FlatMText x)
            )          
            ((eq "AcDbTable" objname)
              (FlatTable x)
            )
            ((eq "AcDbHatch" objname)
              (FlatHatch x)
            )
            ((wcmatch objname "*Dimension")
              (FlatDimension x)
            )
            ((eq "AcDbRegion" objname)
              (FlatRegion x)
            )
            ;; Keep in mind the "flatshot" command 
            ;; for flattening 3D solids.
            ((or
               (eq "AcDb3dSolid" objname) 
               (eq "AcDbBody" objname)
               (eq "AcDbSurface" objname)
              )
              (CommandExplode x)
            )
            ((eq "AcDbShape" objname)
              (FlatShape x)
            )
            ((or
               (eq "AcDbSolid" objname)
               (eq "AcDbTrace" objname)
              )
              (FlatSolidOrTrace x)
            )
            ((or
               (eq "AcDbRay" objname)
               (eq "AcDbXline" objname)
              )
              (FlatRayOrXline x)
            )
            ;; Cannot be exploded.
            ((eq "AcDbMInsertBlock" objname)
              (FlatMInsert x)
            )
            ((eq "AcDbMline" objname)
              (FlatMline x)
            )
            ((or
               (eq "AcDbWipeout" objname)   
               (eq "AcDbRasterImage" objname)
              )
              (FlatWipeoutOrRaster x)
            )
            ((eq "AcDbFcf" objname)
              (FlatTolerance x)
            )
            ((or
               (wcmatch objname "AecDb*,AecsDb*,AeccDb*")
               (eq "AcDbZombieEntity" objname)
              )
              (CommandExplode x)
            )
            ;; Ignore viewports.
            ((eq "AcDbViewport" objname))
            ;; Any object not included above.
            (T 
              (setq cnt (1+ cnt))
              (if (not (vl-position objname notflatlst))
                (setq notflatlst (cons objname notflatlst))
              )
            )
          );cond
        );progn
      );if not erased
    );foreach
  );end
  ;;;;;;; END SuperFlatten SUB-FUNCTIONS ;;;;;;;
  ;;;;;;; START PRIMARY ROUTINE ;;;;;;;
  (setq doc (vla-get-ActiveDocument (vlax-get-acad-object))
        blocks (vla-get-Blocks doc)
        layouts (vla-get-Layouts doc)
        views (vla-get-Views doc);;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
        mspace (vla-get-ModelSpace doc)
        mspacecnt (vlax-get mspace 'Count)
  )
  ;; Delete a temporary saved view if it exists.
  (vl-catch-all-apply '(lambda () (vla-delete (vla-item views "zztemp")))) 
  (vla-StartUndoMark doc)
  (setq locklst (UnlockLayers doc)
        hpa (getvar "hpassoc")
        expm (getvar "explmode")
        ucsfol (getvar "ucsfollow")
        cnt 0
        expblkcnt 0
  )
  (setvar "ucsfollow" 0)
  ;; Get the selection set.
  (if (setq ss (ssget (list (cons 410 (getvar "ctab")))))
    (progn
      ;;; ----- START PROGRAM OPTIONS ----- ;;;
      
      ;; recall previous options for Overkill.
      (or *expans* (setq *expans* "No"))
      (or *overkillans* (setq *overkillans* "No"))
      ;; Moved from above
      (setq optans nil)
      (cond
        ;; pre 2006 and ET is not loaded
        ((and (< (atof (getvar "AcadVer")) 16.2) (not acet-ss-remove-dups))
          (while optans
            (if presufstr 
              (princ (strcat "\nCurrent options: Rename=" renameans "> " presufstr))
              (princ (strcat "\nCurrent options: Rename=Unspecified"))
            )
            (initget "Rename")
            (setq optans
              (getkword 
                "\nSuperFlatten options [Rename blocks] < >: ")
            )
            (cond 
              ((eq optans "Rename")
                (initget "Prefix Suffix")
                (setq renameans 
                  (getkword "\nBlock name options: [Prefix/Suffix] <S>: ")
                )
                (if (not renameans) (setq renameans "Suffix"))
                (cond
                  ((eq renameans "Prefix")
                    (setq presufstr (PrefixSuffix "prefix"))
                  )
                  ((eq renameans "Suffix")
                    (setq presufstr (PrefixSuffix "suffix"))
                  )
                )
              )
            )
          )
        )
        ;; pre 2006 and ET is loaded
        ((and (< (atof (getvar "AcadVer")) 16.2) acet-ss-remove-dups)
          (while optans
            (if presufstr 
              (princ (strcat "\nCurrent options: Rename=" renameans "> " presufstr))
              (princ (strcat "\nCurrent options: Rename=Unspecified"))
            )
            (princ (strcat "  Overkill=" *overkillans*))
            (initget "Rename Overkill")
            (setq optans
              (getkword 
                "\nSuperFlatten options [Rename blocks/Overkill] < >: ")
            )
            (cond 
              ((eq optans "Rename")
                (initget "Prefix Suffix")
                (setq renameans 
                  (getkword "\nBlock name options: [Prefix/Suffix] <S>: ")
                )
                (if (not renameans) (setq renameans "Suffix"))
                (cond
                  ((eq renameans "Prefix")
                    (setq presufstr (PrefixSuffix "prefix"))
                  )
                  ((eq renameans "Suffix")
                    (setq presufstr (PrefixSuffix "suffix"))
                  )
                )
              )
              ((eq optans "Overkill")
                (initget "Yes No")
                (setq *overkillans* 
                  (getkword "\nRun Overkill after flattening? [Yes/No] <N>: ")
                )
                (if (not *overkillans*) (setq *overkillans* "No"))
              )
            )
          )
        )
        ;; 2006 or later and ET is not loaded
        ((and (>= (atof (getvar "AcadVer")) 16.2) (not acet-ss-remove-dups))
          (while optans
            (if presufstr 
              (princ (strcat "\nCurrent options: Rename=" renameans "> " presufstr))
              (princ (strcat "\nCurrent options: Rename=Unspecified"))
            )            
            (princ (strcat "  Explodable=" *expans*))
            (initget "Rename Explodable")
            (setq optans
              (getkword 
                "\nSuperFlatten options [Rename blocks/Explodable blocks] < >: ")
            )
            (cond 
              ((eq optans "Rename")
                (initget "Prefix Suffix")
                (setq renameans 
                  (getkword "\nBlock name options: [Prefix/Suffix] <S>: ")
                )
                (if (not renameans) (setq renameans "Suffix"))
                (cond
                  ((eq renameans "Prefix")
                    (setq presufstr (PrefixSuffix "prefix"))
                  )
                  ((eq renameans "Suffix")
                    (setq presufstr (PrefixSuffix "suffix"))
                  )
                )
              )
              ((eq optans "Explodable")
                (initget "Yes No")
                (setq *expans* 
                  (getkword 
                    "\nTemporarily set all blocks explodable? [Yes/No] <N>: ")
                )
                (if (not *expans*) (setq *expans* "No"))
              )
            )
          )
        )
        ;; 2006 or later and ET is loaded
        ((and (>= (atof (getvar "AcadVer")) 16.2) acet-ss-remove-dups)
          (while optans            
            (if presufstr 
              (princ (strcat "\nCurrent options: Rename=" renameans "> " presufstr))
              (princ (strcat "\nCurrent options: Rename=Unspecified"))
            )
            (princ (strcat "  Explodable=" *expans*
                           "  Overkill=" *overkillans*
                   )
            )
            (initget "Rename Explodable Overkill")
            (setq optans
              (getkword 
                "\nSuperFlatten options [Rename blocks/Explodable blocks/Overkill] < >: ")
            )
            (cond 
              ((eq optans "Rename")
                (initget "Prefix Suffix")
                (setq renameans 
                  (getkword "\nBlock name options: [Prefix/Suffix] <S>: ")
                )
                (if (not renameans) (setq renameans "Suffix"))
                (cond
                  ((eq renameans "Prefix")
                    (setq presufstr (PrefixSuffix "prefix"))
                  )
                  ((eq renameans "Suffix")
                    (setq presufstr (PrefixSuffix "suffix"))
                  )
                )
              )
              ((eq optans "Explodable")
                (initget "Yes No")
                (setq *expans* 
                  (getkword 
                    "\nTemporarily set all blocks explodable? [Yes/No] <N>: ")
                )
                (if (not *expans*) (setq *expans* "No"))
              )
              ((eq optans "Overkill")
                (initget "Yes No")
                (setq *overkillans* 
                  (getkword "\nRun Overkill after flattening? [Yes/No] <N>: ")
                )
                (if (not *overkillans*) (setq *overkillans* "No"))
              )
            )
          )
        )
      ); end options cond
      ;;; ----- END PROGRAM OPTIONS ----- ;;;
      ;; Added to deal with the Explodable blocks option.
      ;; It might be smarter by looking at selected
      ;; blocks and then decide whether anything needs to be done.
      ;; But that seems a bit of overkill since in most cases the
      ;; user will select all. The following seems sufficient.
      (if (eq "Yes" *expans*)
        (vlax-for x blocks 
          (if 
            (and
              (vlax-property-available-p x 'Explodable)
              (eq acFalse (vlax-get x 'Explodable))
            )
            (progn
              (setq expblklst (cons x expblklst))
              (vlax-put x 'Explodable acTrue)
            )
          )
        )
      )
      ;(starttimer)
      (setvar "cmdecho" 0)
      (setvar "explmode" 1)
      ;; Flattening needs to be done in WCS due to how some
      ;; objects behave while interacting with the code.
      ;; An isometric view like SW can be used without 
      ;; triggering the following.
      ;; There's a small speed penalty if the current view
      ;; has to be saved and restored.
      ;; The UCS/view can be whatever when the code is run 
      ;; and if not WCS, it will be restored as needed.
      (if (zerop (getvar "worlducs"))
        (progn
          (command "._view" "s" "zztemp")
          (command "._ucs" "w")
          (if (zerop (getvar "ucsfollow"))
            (command "._plan" "w")
          )
        )
      )
      ;; Convert the selection set to a list of vla-objects.
      ;; Might use the ActiveSelectionSet here.
      (setq lst (SSVLAList ss))
      ;; Make a list of block names selected including nested names.
      (foreach x lst
        (if 
          (and 
            (eq "AcDbBlockReference" (vlax-get x 'ObjectName))
            (not (vlax-property-available-p x 'Path))
          )
          (progn
            (setq name (vlax-get x 'Name))
            (if (not (vl-position name blknamelst))
              (setq blknamelst (cons name blknamelst))
            )
            (foreach i (GetNestedNames blocks name)
              (if (not (vl-position i blknamelst))
                (setq blknamelst (cons i blknamelst))
              )
            )
          )
        )
      )
      ;; Process the selected objects before flattening block defintions.
      ;; It needs to be here rather than
      ;; after flatten definitions so the condition for block references
      ;; in ProcessList does what it should. Explode blocks which only
      ;; contain other blocks.
      (ProcessList lst)
      ;; Check for for empty blocks.
      ;; Causes an error with copy objects.
      ;; Empty block named "CIRCULAR STAIRS"
      ;; customer files example file.
      (if blknamelst
        (progn
          ;; Delete the temporary layout if it already exists.
          (vl-catch-all-apply '(lambda () (vla-delete (vla-item layouts "SuperFlatten layout"))))
          (setq actlayout (vlax-get doc 'ActiveLayout)
                templayout (vlax-invoke layouts 'Add  "SuperFlatten layout")
                layoutblk (vlax-get templayout 'Block)
          )
          (vlax-put doc 'ActiveLayout templayout)
          (foreach x blknamelst
            (setq blkdef (vla-item blocks x)
                  inoutlst nil
                  renameflag nil
            )
      
            (setq orig (vlax-get blkdef 'Origin))
            (CheckRename orig (ZZeroPoint orig))
            (vlax-put blkdef 'Origin (ZZeroPoint (vlax-get blkdef 'Origin)))
            ;; List objects in source block and filter out viewports.
            (vlax-for i blkdef
              (or
                (eq "AcDbViewport" (vlax-get i 'ObjectName))
                (setq inoutlst (cons i inoutlst))
              )
            )
            (if inoutlst
              (progn
                ;; Copy list to the layout block.
                (setq inoutlst (vlax-invoke doc 'CopyObjects inoutlst layoutblk))
                ;; Empty the source block, except for viewports.
                (vlax-for i blkdef
                  (or
                    (eq "AcDbViewport" (vlax-get i 'ObjectName))
                    (vla-delete i)
                  )
                )
                ;; Flatten objects in layout.
                (ProcessList inoutlst)
                (setq inoutlst nil)
                ;; List the flattened objects, filter out viewports.
                (vlax-for i layoutblk
                  (or
                    (eq "AcDbViewport" (vlax-get i 'ObjectName))
                    (setq inoutlst (cons i inoutlst))
                  )
                )
                ;; Copy the flattened objects in the layout back into
                ;; the block definition and delete objects in the layout.
                (if inoutlst
                  (progn
                    (vlax-invoke doc 'CopyObjects inoutlst blkdef)
                    (mapcar 'vla-delete inoutlst)
                  )
                )
              )
            )
            (if 
              (and 
                ;; Cannot rename anonymous blocks.
                (not (vl-string-search "*" x))
                renameflag 
                renameans
                presufstr
              )
              (cond
                ((and
                   (eq renameans "Prefix")
                   (setq newname (strcat presufstr x))
                  )
                  ;; Added existing block name check 8/9/2007.
                  (if (ValidItem blocks newname)
                    (setq notrenamedlst (cons x notrenamedlst))
                    (progn
                      (vlax-put blkdef 'Name newname)
                      (setq newnamelst (cons newname newnamelst))
                    )
                  )
                )
                ((and
                   (eq renameans "Suffix")
                   (setq newname (strcat x presufstr))
                  )
                  ;; Added existing block name check 8/9/2007.
                  (if (ValidItem blocks newname)
                    (setq notrenamedlst (cons x notrenamedlst))
                    (progn
                      (vlax-put blkdef 'Name newname)
                      (setq newnamelst (cons newname newnamelst))
                    )
                  )
                )
              )
            )
          );foreach
          (vlax-put doc 'ActiveLayout actlayout)
          ;templayout is deleted in the error handler.
        );progn
      );if blknamelst
      (if blknamelst
        (vla-regen doc acActiveViewport)
      )
      (if 
        (and 
          (eq "Yes" *overkillans*)
          (setq ss 
            (cadr 
              (acet-ss-remove-dups 
                (ssget "x" '((410 . "Model"))) 1e-6 nil)
            )
          )
        )
        (command "._erase" ss "")
      )
      (if (tblsearch "view" "zztemp")
        (command "._view" "restore" "zztemp" "._view" "delete" "zztemp")
      )
      (if (or newnamelst notrenamedlst)
        (textscr)
      )
      (if newnamelst
        (progn
          (princ "\nThe following blocks were renamed: ")
          (foreach x newnamelst
            (print x)
          )
        )
      )
      (if notrenamedlst
        (progn
          (princ "\nThe following blocks were not renamed due to existing block name conflict: ")
          (foreach x notrenamedlst
            (print x)
          )
        )
      )
      (if (> expblkcnt 0)
        (princ (strcat "\nNumber of blocks exploded: " (itoa expblkcnt)))
      )
      (princ 
        (strcat "\nNumber of objects in model space before: " 
          (itoa mspacecnt) " after: " (itoa (vlax-get mspace 'Count)) " \n"
        )
      )
      (if (> cnt 0)
        (progn
          (princ 
            (strcat "\nNumber of objects not processed or flattened: " (itoa cnt) " \n")
          )
          (if notflatlst
            (progn
              (princ "\nObject types not flattened: ")
              (foreach x notflatlst
                (if(vl-string-search "Db" x)
                  (progn
                    (setq pos (+ 3 (vl-string-search "Db" x)))
                    (princ (strcat (substr x pos) " "))
                  );progn
                );end if
              )
              (print)
            )
          )
        )
      )
      ;(endtimer)
    );progn
    (princ "\nNothing selected. ")
  );if
  (*error* nil)
);end SuperFlatten
;**************************************************************************************************************************************************
(defun HOUSEKEEPING (extent / )
  (if(= extent "STATIC")
    (STATIC_VARIABLE_CLEANUP)
    (if(= extent "DYNAMIC")
      (PROPERTY_CLEANUP)
      (if(= extent "ALL")
        (progn
          (STATIC_VARIABLE_CLEANUP)
          (PROPERTY_CLEANUP)
        );end progn
      );end if
    );end if
  );end if
);end defun
(defun STATIC_VARIABLE_CLEANUP ()
  (setq clock nil
        year nil
        month nil
        day nil
        hour nil
        minute nil
        second nil
        milliSecond nil
        dwgName nil
        dwgDirectory nil
        dwgLink nil
        dwgLink nil
        dwgDirectory nil
        appDataDirectory nil
        aliasLink nil
        aliasDirectory nil
        aliasDirectory nil
        aliasName nil
        aliasLink nil
        ACADRegistryPath nil
        currentVersion1 nil
        currentVersion2 nil
        acadVersionPath nil
        currentProfile nil
        acadVersionYear nil
        startupSuiteDirectory nil
        1stStartupLoaded nil
        LocationLCC nil
        excel nil
        SeismicBlock nil
        Grille nil
        vbCode nil
        curFabVer nil
        fabPath nil
        curFabPath nil
        mapINILoc nil
        Backup nil
        Database nil
        Project nil
        Reports nil
        Images nil
        Items nil
        Scripts nil
        Profiles nil
        Download nil
        Common nil
        Textures nil
        Main nil
        extentsUR nil
        extentsLL nil
        doc nil
        limit nil
  );end setq
);end defun
(defun PROPERTY_CLEANUP ()
  (setq entNextVar nil
        entPrevious nil
        nth0 nil
        nth1 nil
        nth2 nil
        nth3 nil
        nth4 nil
        nth5 nil
        nth6 nil
        nth7 nil
        nth8 nil
        nth9 nil
        nth10 nil
        nth11 nil
        nth12 nil
        nth13 nil
        nth14 nil
        nth15 nil
        nth16 nil
        nth17 nil
        nth18 nil
        nth19 nil
        nth20 nil
        nth21 nil
        nth22 nil
        nth23 nil
        nth24 nil
        nth25 nil
        ItemCID nil
        lineCenterPoint nil
        CentralPosUp nil
        CentralPosDown nil
        CentralPosLeft nil
        CentralPosRight nil
        side1 nil
        side2 nil
        side1Pos1 nil
        side1Pos2 nil
        side1Pos3 nil
        side2Pos1 nil
        side2Pos2 nil
        side2Pos3 nil
        corner1 nil
        corner2 nil
        corner3 nil
        corner4 nil
        corner1Inset nil
        corner2Inset nil
        corner3Inset nil
        corner4Inset nil
  );end setq
;COORDINATE BLOCK NIL
(setq
c1xPrevious nil c1yPrevious nil c1zPrevious nil 
c2xPrevious nil c2yPrevious nil c2zPrevious nil 
c3xPrevious nil c3yPrevious nil c3zPrevious nil 
c4xPrevious nil c4yPrevious nil c4zPrevious nil  
c5xPrevious nil c5yPrevious nil c5zPrevious nil  
c6xPrevious nil c6yPrevious nil c6zPrevious nil 
c7xPrevious nil c7yPrevious nil c7zPrevious nil  
c8xPrevious nil c8yPrevious nil c8zPrevious nil  
c9xPrevious nil c9yPrevious nil c9zPrevious nil
c10xPrevious nil c10yPrevious nil c10zPrevious nil c10NamePrevious nil
c11xPrevious nil c11yPrevious nil c11zPrevious nil c11NamePrevious nil
c12xPrevious nil c12yPrevious nil c12zPrevious nil c12NamePrevious nil
c13xPrevious nil c13yPrevious nil c13zPrevious nil c13NamePrevious nil
c14xPrevious nil c14yPrevious nil c14zPrevious nil c14NamePrevious nil
c15xPrevious nil c15yPrevious nil c15zPrevious nil c15NamePrevious nil
c16xPrevious nil c16yPrevious nil c16zPrevious nil c16NamePrevious nil
c17xPrevious nil c17yPrevious nil c17zPrevious nil c17NamePrevious nil
c18xPrevious nil c18yPrevious nil c18zPrevious nil c18NamePrevious nil
c19xPrevious nil c19yPrevious nil c19zPrevious nil c19NamePrevious nil
c20xPrevious nil c20yPrevious nil c20zPrevious nil c20NamePrevious nil
c21xPrevious nil c21yPrevious nil c21zPrevious nil c21NamePrevious nil
c22xPrevious nil c22yPrevious nil c22zPrevious nil c22NamePrevious nil
c23xPrevious nil c23yPrevious nil c23zPrevious nil c23NamePrevious nil
c24xPrevious nil c24yPrevious nil c24zPrevious nil c24NamePrevious nil
c25xPrevious nil c25yPrevious nil c25zPrevious nil c25NamePrevious nil
c1x nil c1y nil c1z nil c1Name nil c1Width nil c1Depth nil c1xNext nil c1yNext nil c1zNext nil c1NameNext nil c1WidthNext nil c1DepthNext nil c1NamePrevious nil c1WidthPrevious nil c1DepthPrevious nil 
c2x nil c2y nil c2z nil c2Name nil c2Width nil c2Depth nil c2xNext nil c2yNext nil c2zNext nil c2NameNext nil c2WidthNext nil c2DepthNext nil c2NamePrevious nil c2WidthPrevious nil c2DepthPrevious nil 
c3x nil c3y nil c3z nil c3Name nil c3Width nil c3Depth nil c3xNext nil c3yNext nil c3zNext nil c3NameNext nil c3WidthNext nil c3DepthNext nil c3NamePrevious nil c3WidthPrevious nil c3DepthPrevious nil 
c4x nil c4y nil c4z nil c4Name nil c4Width nil c4Depth nil c4xNext nil c4yNext nil c4zNext nil c4NameNext nil c4WidthNext nil c4DepthNext nil c4NamePrevious nil c4WidthPrevious nil c4DepthPrevious nil 
c5x nil c5y nil c5z nil c5Name nil c5Width nil c5Depth nil c5xNext nil c5yNext nil c5zNext nil c5NameNext nil c5WidthNext nil c5DepthNext nil c5NamePrevious nil c5WidthPrevious nil c5DepthPrevious nil 
c6x nil c6y nil c6z nil c6Name nil c6Width nil c6Depth nil c6xNext nil c6yNext nil c6zNext nil c6NameNext nil c6WidthNext nil c6DepthNext nil c6NamePrevious nil c6WidthPrevious nil c6DepthPrevious nil 
c7x nil c7y nil c7z nil c7Name nil c7Width nil c7Depth nil c7xNext nil c7yNext nil c7zNext nil c7NameNext nil c7WidthNext nil c7DepthNext nil c7NamePrevious nil c7WidthPrevious nil c7DepthPrevious nil 
c8x nil c8y nil c8z nil c8Name nil c8Width nil c8Depth nil c8xNext nil c8yNext nil c8zNext nil c8NameNext nil c8WidthNext nil c8DepthNext nil c8NamePrevious nil c8WidthPrevious nil c8DepthPrevious nil 
c9x nil c9y nil c9z nil c9Name nil c9Width nil c9Depth nil c9xNext nil c9yNext nil c9zNext nil c9NameNext nil c9WidthNext nil c9DepthNext nil c9NamePrevious nil c9WidthPrevious nil c9DepthPrevious nil 
c10x nil c10y nil c10z nil c10Name nil c10Width nil c10Depth nil c10xNext nil c10yNext nil c10zNext nil c10NameNext nil c10WidthNext nil c10DepthNext nil c10NamePrevious nil c10WidthPrevious nil c10DepthPrevious nil 
c11x nil c11y nil c11z nil c11Name nil c11Width nil c11Depth nil c11xNext nil c11yNext nil c11zNext nil c11NameNext nil c11WidthNext nil c11DepthNext nil c11NamePrevious nil c11WidthPrevious nil c11DepthPrevious nil 
c12x nil c12y nil c12z nil c12Name nil c12Width nil c12Depth nil c12xNext nil c12yNext nil c12zNext nil c12NameNext nil c12WidthNext nil c12DepthNext nil c12NamePrevious nil c12WidthPrevious nil c12DepthPrevious nil 
c13x nil c13y nil c13z nil c13Name nil c13Width nil c13Depth nil c13xNext nil c13yNext nil c13zNext nil c13NameNext nil c13WidthNext nil c13DepthNext nil c13NamePrevious nil c13WidthPrevious nil c13DepthPrevious nil 
c14x nil c14y nil c14z nil c14Name nil c14Width nil c14Depth nil c14xNext nil c14yNext nil c14zNext nil c14NameNext nil c14WidthNext nil c14DepthNext nil c14NamePrevious nil c14WidthPrevious nil c14DepthPrevious nil 
c15x nil c15y nil c15z nil c15Name nil c15Width nil c15Depth nil c15xNext nil c15yNext nil c15zNext nil c15NameNext nil c15WidthNext nil c15DepthNext nil c15NamePrevious nil c15WidthPrevious nil c15DepthPrevious nil 
c16x nil c16y nil c16z nil c16Name nil c16Width nil c16Depth nil c16xNext nil c16yNext nil c16zNext nil c16NameNext nil c16WidthNext nil c16DepthNext nil c16NamePrevious nil c16WidthPrevious nil c16DepthPrevious nil 
c17x nil c17y nil c17z nil c17Name nil c17Width nil c17Depth nil c17xNext nil c17yNext nil c17zNext nil c17NameNext nil c17WidthNext nil c17DepthNext nil c17NamePrevious nil c17WidthPrevious nil c17DepthPrevious nil 
c18x nil c18y nil c18z nil c18Name nil c18Width nil c18Depth nil c18xNext nil c18yNext nil c18zNext nil c18NameNext nil c18WidthNext nil c18DepthNext nil c18NamePrevious nil c18WidthPrevious nil c18DepthPrevious nil 
c19x nil c19y nil c19z nil c19Name nil c19Width nil c19Depth nil c19xNext nil c19yNext nil c19zNext nil c19NameNext nil c19WidthNext nil c19DepthNext nil c19NamePrevious nil c19WidthPrevious nil c19DepthPrevious nil 
c20x nil c20y nil c20z nil c20Name nil c20Width nil c20Depth nil c20xNext nil c20yNext nil c20zNext nil c20NameNext nil c20WidthNext nil c20DepthNext nil c20NamePrevious nil c20WidthPrevious nil c20DepthPrevious nil 
c21x nil c21y nil c21z nil c21Name nil c21Width nil c21Depth nil c21xNext nil c21yNext nil c21zNext nil c21NameNext nil c21WidthNext nil c21DepthNext nil c21NamePrevious nil c21WidthPrevious nil c21DepthPrevious nil 
c22x nil c22y nil c22z nil c22Name nil c22Width nil c22Depth nil c22xNext nil c22yNext nil c22zNext nil c22NameNext nil c22WidthNext nil c22DepthNext nil c22NamePrevious nil c22WidthPrevious nil c22DepthPrevious nil 
c23x nil c23y nil c23z nil c23Name nil c23Width nil c23Depth nil c23xNext nil c23yNext nil c23zNext nil c23NameNext nil c23WidthNext nil c23DepthNext nil c23NamePrevious nil c23WidthPrevious nil c23DepthPrevious nil 
c24x nil c24y nil c24z nil c24Name nil c24Width nil c24Depth nil c24xNext nil c24yNext nil c24zNext nil c24NameNext nil c24WidthNext nil c24DepthNext nil c24NamePrevious nil c24WidthPrevious nil c24DepthPrevious nil 
c25x nil c25y nil c25z nil c25Name nil c25Width nil c25Depth nil c25xNext nil c25yNext nil c25zNext nil c25NameNext nil c25WidthNext nil c25DepthNext nil c25NamePrevious nil c25WidthPrevious nil c25DepthPrevious nil 
    );end setq
    (setq
;DIMENSION BLOCK NIL
dim1 nil dim1Next nil dim1Previous nil dim26 nil dim26Next nil dim26Previous nil dim51 nil dim51Next nil dim51Previous nil dim76 nil dim76Next nil dim76Previous nil dim101 nil dim101Next nil dim101Previous nil dim126 nil dim126Next nil dim126Previous nil dim151 nil dim151Next nil dim151Previous nil dim176 nil dim176Next nil dim176Previous nil 
dim2 nil dim2Next nil dim2Previous nil dim27 nil dim27Next nil dim27Previous nil dim52 nil dim52Next nil dim52Previous nil dim77 nil dim77Next nil dim77Previous nil dim102 nil dim102Next nil dim102Previous nil dim127 nil dim127Next nil dim127Previous nil dim152 nil dim152Next nil dim152Previous nil dim177 nil dim177Next nil dim177Previous nil 
dim3 nil dim3Next nil dim3Previous nil dim28 nil dim28Next nil dim28Previous nil dim53 nil dim53Next nil dim53Previous nil dim78 nil dim78Next nil dim78Previous nil dim103 nil dim103Next nil dim103Previous nil dim128 nil dim128Next nil dim128Previous nil dim153 nil dim153Next nil dim153Previous nil dim178 nil dim178Next nil dim178Previous nil 
dim4 nil dim4Next nil dim4Previous nil dim29 nil dim29Next nil dim29Previous nil dim54 nil dim54Next nil dim54Previous nil dim79 nil dim79Next nil dim79Previous nil dim104 nil dim104Next nil dim104Previous nil dim129 nil dim129Next nil dim129Previous nil dim154 nil dim154Next nil dim154Previous nil dim179 nil dim179Next nil dim179Previous nil 
dim5 nil dim5Next nil dim5Previous nil dim30 nil dim30Next nil dim30Previous nil dim55 nil dim55Next nil dim55Previous nil dim80 nil dim80Next nil dim80Previous nil dim105 nil dim105Next nil dim105Previous nil dim130 nil dim130Next nil dim130Previous nil dim155 nil dim155Next nil dim155Previous nil dim180 nil dim180Next nil dim180Previous nil 
dim6 nil dim6Next nil dim6Previous nil dim31 nil dim31Next nil dim31Previous nil dim56 nil dim56Next nil dim56Previous nil dim81 nil dim81Next nil dim81Previous nil dim106 nil dim106Next nil dim106Previous nil dim131 nil dim131Next nil dim131Previous nil dim156 nil dim156Next nil dim156Previous nil dim181 nil dim181Next nil dim181Previous nil 
dim7 nil dim7Next nil dim7Previous nil dim32 nil dim32Next nil dim32Previous nil dim57 nil dim57Next nil dim57Previous nil dim82 nil dim82Next nil dim82Previous nil dim107 nil dim107Next nil dim107Previous nil dim132 nil dim132Next nil dim132Previous nil dim157 nil dim157Next nil dim157Previous nil dim182 nil dim182Next nil dim182Previous nil 
dim8 nil dim8Next nil dim8Previous nil dim33 nil dim33Next nil dim33Previous nil dim58 nil dim58Next nil dim58Previous nil dim83 nil dim83Next nil dim83Previous nil dim108 nil dim108Next nil dim108Previous nil dim133 nil dim133Next nil dim133Previous nil dim158 nil dim158Next nil dim158Previous nil dim183 nil dim183Next nil dim183Previous nil 
dim9 nil dim9Next nil dim9Previous nil dim34 nil dim34Next nil dim34Previous nil dim59 nil dim59Next nil dim59Previous nil dim84 nil dim84Next nil dim84Previous nil dim109 nil dim109Next nil dim109Previous nil dim134 nil dim134Next nil dim134Previous nil dim159 nil dim159Next nil dim159Previous nil dim184 nil dim184Next nil dim184Previous nil 
dim10 nil dim10Next nil dim10Previous nil dim35 nil dim35Next nil dim35Previous nil dim60 nil dim60Next nil dim60Previous nil dim85 nil dim85Next nil dim85Previous nil dim110 nil dim110Next nil dim110Previous nil dim135 nil dim135Next nil dim135Previous nil dim160 nil dim160Next nil dim160Previous nil dim185 nil dim185Next nil dim185Previous nil 
dim11 nil dim11Next nil dim11Previous nil dim36 nil dim36Next nil dim36Previous nil dim61 nil dim61Next nil dim61Previous nil dim86 nil dim86Next nil dim86Previous nil dim111 nil dim111Next nil dim111Previous nil dim136 nil dim136Next nil dim136Previous nil dim161 nil dim161Next nil dim161Previous nil dim186 nil dim186Next nil dim186Previous nil 
dim12 nil dim12Next nil dim12Previous nil dim37 nil dim37Next nil dim37Previous nil dim62 nil dim62Next nil dim62Previous nil dim87 nil dim87Next nil dim87Previous nil dim112 nil dim112Next nil dim112Previous nil dim137 nil dim137Next nil dim137Previous nil dim162 nil dim162Next nil dim162Previous nil dim187 nil dim187Next nil dim187Previous nil 
dim13 nil dim13Next nil dim13Previous nil dim38 nil dim38Next nil dim38Previous nil dim63 nil dim63Next nil dim63Previous nil dim88 nil dim88Next nil dim88Previous nil dim113 nil dim113Next nil dim113Previous nil dim138 nil dim138Next nil dim138Previous nil dim163 nil dim163Next nil dim163Previous nil dim188 nil dim188Next nil dim188Previous nil 
dim14 nil dim14Next nil dim14Previous nil dim39 nil dim39Next nil dim39Previous nil dim64 nil dim64Next nil dim64Previous nil dim89 nil dim89Next nil dim89Previous nil dim114 nil dim114Next nil dim114Previous nil dim139 nil dim139Next nil dim139Previous nil dim164 nil dim164Next nil dim164Previous nil dim189 nil dim189Next nil dim189Previous nil 
dim15 nil dim15Next nil dim15Previous nil dim40 nil dim40Next nil dim40Previous nil dim65 nil dim65Next nil dim65Previous nil dim90 nil dim90Next nil dim90Previous nil dim115 nil dim115Next nil dim115Previous nil dim140 nil dim140Next nil dim140Previous nil dim165 nil dim165Next nil dim165Previous nil dim190 nil dim190Next nil dim190Previous nil 
dim16 nil dim16Next nil dim16Previous nil dim41 nil dim41Next nil dim41Previous nil dim66 nil dim66Next nil dim66Previous nil dim91 nil dim91Next nil dim91Previous nil dim116 nil dim116Next nil dim116Previous nil dim141 nil dim141Next nil dim141Previous nil dim166 nil dim166Next nil dim166Previous nil dim191 nil dim191Next nil dim191Previous nil 
dim17 nil dim17Next nil dim17Previous nil dim42 nil dim42Next nil dim42Previous nil dim67 nil dim67Next nil dim67Previous nil dim92 nil dim92Next nil dim92Previous nil dim117 nil dim117Next nil dim117Previous nil dim142 nil dim142Next nil dim142Previous nil dim167 nil dim167Next nil dim167Previous nil dim192 nil dim192Next nil dim192Previous nil 
dim18 nil dim18Next nil dim18Previous nil dim43 nil dim43Next nil dim43Previous nil dim68 nil dim68Next nil dim68Previous nil dim93 nil dim93Next nil dim93Previous nil dim118 nil dim118Next nil dim118Previous nil dim143 nil dim143Next nil dim143Previous nil dim168 nil dim168Next nil dim168Previous nil dim193 nil dim193Next nil dim193Previous nil 
dim19 nil dim19Next nil dim19Previous nil dim44 nil dim44Next nil dim44Previous nil dim69 nil dim69Next nil dim69Previous nil dim94 nil dim94Next nil dim94Previous nil dim119 nil dim119Next nil dim119Previous nil dim144 nil dim144Next nil dim144Previous nil dim169 nil dim169Next nil dim169Previous nil dim194 nil dim194Next nil dim194Previous nil 
dim20 nil dim20Next nil dim20Previous nil dim45 nil dim45Next nil dim45Previous nil dim70 nil dim70Next nil dim70Previous nil dim95 nil dim95Next nil dim95Previous nil dim120 nil dim120Next nil dim120Previous nil dim145 nil dim145Next nil dim145Previous nil dim170 nil dim170Next nil dim170Previous nil dim195 nil dim195Next nil dim195Previous nil 
dim21 nil dim21Next nil dim21Previous nil dim46 nil dim46Next nil dim46Previous nil dim71 nil dim71Next nil dim71Previous nil dim96 nil dim96Next nil dim96Previous nil dim121 nil dim121Next nil dim121Previous nil dim146 nil dim146Next nil dim146Previous nil dim171 nil dim171Next nil dim171Previous nil dim196 nil dim196Next nil dim196Previous nil 
dim22 nil dim22Next nil dim22Previous nil dim47 nil dim47Next nil dim47Previous nil dim72 nil dim72Next nil dim72Previous nil dim97 nil dim97Next nil dim97Previous nil dim122 nil dim122Next nil dim122Previous nil dim147 nil dim147Next nil dim147Previous nil dim172 nil dim172Next nil dim172Previous nil dim197 nil dim197Next nil dim197Previous nil 
dim23 nil dim23Next nil dim23Previous nil dim48 nil dim48Next nil dim48Previous nil dim73 nil dim73Next nil dim73Previous nil dim98 nil dim98Next nil dim98Previous nil dim123 nil dim123Next nil dim123Previous nil dim148 nil dim148Next nil dim148Previous nil dim173 nil dim173Next nil dim173Previous nil dim198 nil dim198Next nil dim198Previous nil 
dim24 nil dim24Next nil dim24Previous nil dim49 nil dim49Next nil dim49Previous nil dim74 nil dim74Next nil dim74Previous nil dim99 nil dim99Next nil dim99Previous nil dim124 nil dim124Next nil dim124Previous nil dim149 nil dim149Next nil dim149Previous nil dim174 nil dim174Next nil dim174Previous nil dim199 nil dim199Next nil dim199Previous nil 
    );end setq
    (setq
        xDist nil
        yDist nil
        smlWidth nil
        lrgWidth nil
        conn# nil
        preservedC1x nil
        preservedC1y nil
        onlyC1 nil
        allHanger nil
        gravity nil
        seismic nil
        singleGravity nil
        singleGravitySeismic nil
        doubleSupportAll nil
        textAdjustmentWarranted nil
        slopedItem nil
        itemElevationDifference nil
        addSE nil
        addLength nil
        addOffset nil
        addAlias nil
        notVerticalPiece nil
        TopRight nil
        TopLeft nil
        BotLeft nil
        BotRight nil
        Up nil
        Down nil
        Left nil
        Right nil
        angledToGrid nil
        sqtoGrid nil
        numbTransOffset nil
        offsetTransOffset nil
        aliasTransOffset nil
        numbLongOffset nil
        offsetLongOffset nil
        aliasLongOffset nil
        tinyOrShort nil
        smallSized nil
        mediumSized nil
        largeSized nil
        rodSupport nil
        strapSupport nil
        angleSupport nil
        seismic nil
        itemLength nil
        itemHalfLength nil
        xDist nil
        yDist nil
        xItmCntr nil
        yItmCntr nil
        rotAngle nil
        c# nil
        NumberActive nil
        SizeActive nil
        ElevationActive nil
        AliasActive nil
        OffsetActive nil
        LengthActive nil
        NumberToggle nil
        SizeToggle nil
        ElevationToggle nil
        AliasToggle nil
        OffsetToggle nil
        LengthToggle nil
        dxfClass nil
        SSentity nil
        entListPrevious nil
        vlaPrevious nil
        ItemSourceFileNamePrevious nil
        ItemServiceTypePrevious nil
        ItemPointsPrevious nil
        entListNext nil
        vlaNext nil
        ItemSourceFileNameNext nil
        vlaxItemServiceNameNext nil
        ItemPointsNext nil
   );end setq
);end defun
;**************************************************************************************************************************************************
(defun CHANGE_ALL_BLOCKS_ATTRIBUTES (blockName tagName newText / aDoc ss)
  (vl-load-com)
  (setq aDoc (vla-get-ActiveDocument (vlax-get-acad-object)))
  (cond
    ((and(ssget "_x" (list '(0 . "INSERT") (cons 2 (strcat blockName ",`*U*"))));end ssget
      (vlax-for element (setq ss (vla-get-ActiveSelectionSet aDoc))
        (if(and(eq (strcase (vla-get-EffectiveName element)) (strcase blockName))
          (setq element (assoc(strcase tagName)
                 (mapcar
                   (function
                     (lambda (j)
                       (list
                         (vla-get-tagstring j)
                         (vla-get-textstring j)
                         j
                       );end list
                     );end lamba
                   );end function
                   (vlax-invoke element 'GetAttributes)
                 );end mapcar
                 );end assoc
          );end setq
          );and
          (vla-put-textstring (last element) newText);action
        );end if
      );end for
    (vla-delete ss)
    );and
    );close
  );cond
);end defun
;**************************************************************************************************************************************************
(defun CHANGE_ENTLAST_ATTRIBUTE (tagName newText / aDoc ss tagInfo)
  (vl-load-com)
  (setq activeTag (vlax-ename->vla-object (entlast))
        tagInfo (assoc(strcase tagName)
                  (mapcar
                    (function
                      (lambda (j)
                        (list 
                          (vla-get-tagstring j)
                          (vla-get-textstring j)
                          j
                        );end list
                      );end lamba
                    );end function
                    (vlax-invoke activeTag 'GetAttributes)
                  );end mapcar
                );end assoc
  );end setq

;(tblobjname "Equipment Tag" (vla-get-EffectiveName activeTag))
  
  (vla-put-textstring (last tagInfo) newText);action
);end defun
;**************************************************************************************************************************************************
(defun SET_ENTLAST_PROPERTY (property value)
  (setq property (strcase property))
  (vl-some
    '(lambda(j)
      (if(= property (strcase(vla-get-propertyname j)))
        (progn
          (vla-put-value j (vlax-make-variant value (vlax-variant-type(vla-get-value j))))
        );end progn
      );end if
    );end lam
    (vlax-invoke(vlax-ename->vla-object(entlast)) 'getdynamicblockproperties)
  );end some
);end defun
;**************************************************************************************************************************************************
(defun C:BlockPropertiesTable (/ blnOut entBlock entItem entSelection lstENtity lstEntity2 objSelection )
(if (setq ssSelection (ssget ":S:E" (list (cons 0 "INSERT"))))
(progn
(setq entSelection (ssname ssSelection 0)
objSelection (vlax-ename->vla-object entSelection)
strBlockName (vla-get-name objSelection)
entBlock (tblobjname "block" strBlockName)
entItem entBlock
)
(while (and (setq entItem (entnext entItem))(not blnOut))
(setq lstEntity (entget entItem))
(if (and (assoc 102 lstEntity)
(setq dprPair (assoc 330 lstEntity))
(setq lstEntity2 (entget (cdr dprPair))) 
(= (cdr (assoc 0 lstEntity2)) "BLOCKPROPERTIESTABLE")
)
(progn
(setq blnOut T)b
(print lstEntity2)
)
)
)
)
)
(princ)
)
;**************************************************************************************************************************************************
(defun SS_BBOX ( ss / i leftX lowerY rightX upperY a b pntA pntB)
  (setq i 0);end setq
  (while(< i (sslength ss))
    (INSIDE_LOOP_VARIABLES ss i)
    (TRIG_MY_POINTS PrimaryPoint c1Width c1Depth SecondaryPoint c2Width c2Depth elevationTagWidth elevationTagDepth sizeTagWidth sizeTagDepth)
    (if(= leftX nil)
      (setq leftX (car corner1))
      (if(> leftX (car corner1))
        (setq leftX (car corner1))))
    (if(> leftX (car corner2))
      (setq leftX (car corner2)))
    (if(> leftX (car corner3))
      (setq leftX (car corner3)))
    (if(> leftX (car corner4))
      (setq leftX (car corner4)))
    (if(= lowerY nil)
      (setq lowerY (cadr corner1))
      (if(> lowerY (cadr corner1))
        (setq lowerY (cadr corner1))))
    (if(> lowerY (cadr corner2))
      (setq lowerY (cadr corner2)))
    (if(> lowerY (cadr corner3))
      (setq lowerY (cadr corner3)))
    (if(> lowerY (cadr corner4))
      (setq lowerY (cadr corner4)))
    (if(= rightX nil)
      (setq rightX (car corner1))
      (if(< rightX (car corner1))
        (setq rightX (car corner1))))
    (if(< rightX (car corner2))
      (setq rightX (car corner2)))
    (if(< rightX (car corner3))
      (setq rightX (car corner3)))
    (if(< rightX (car corner4))
      (setq rightX (car corner4)))
    (if(= upperY nil)
      (setq upperY (cadr corner1))
      (if(< upperY (cadr corner1))
        (setq upperY (cadr corner1))))
    (if(< upperY (cadr corner2))
      (setq upperY (cadr corner2)))
    (if(< upperY (cadr corner3))
      (setq upperY (cadr corner3)))
    (if(< upperY (cadr corner4))
      (setq upperY (cadr corner4)))
    (setq i (1+ i))
  );end while
  (setq i 0)
  (while(< i (sslength ss))
    (INSIDE_LOOP_VARIABLES ss i)
    (if(and(vlax-method-applicable-p vla 'getboundingbox)(not(vl-catch-all-error-p (vl-catch-all-apply 'vla-getboundingbox (list vla 'a 'b)))))
      (setq pntA (mapcar 'min (vlax-safearray->list a) (cond (pntA) ((vlax-safearray->list a))))
            pntB (mapcar 'max (vlax-safearray->list b) (cond (pntB) ((vlax-safearray->list b)))));end setq
    );end if
    (setq i (1+ i))
  );end while
  (if(>(car pntA) leftX)
    (setq leftx (car pntA)))
  (if(>(cadr pntA) lowerY)
    (setq lowerY (cadr pntA)))
  (if(>(car pntB) rightX)
    (setq rightX (car pntB)))
  (if(>(cadr pntB) upperY)
    (setq upperY (cadr pntB)))
  (setq xyLL (list leftX lowerY)
        xyUR (list rightX upperY));end setq
);end defun
;**************************************************************************************************************************************************
(defun COMPARE_SSETS (sset1 sset2 / i ssSmall ItemHandleLarge ItemHandleSmall)
  (if(>(sslength sset1)(sslength sset2))
    (setq ssLarge sset1
          ssSmall sset2)
    (setq ssLarge sset2
          ssSmall sset1)
  );end if
  (setq i 0)
  (while(> (sslength ssSmall) 0)
    (setq ItemHandleLarge (cdr(nth 3 (entget (ssname ssLarge i))))
          ItemHandleSmall (cdr(nth 3 (entget (ssname ssSmall 0)))));end setq
    (if(= ItemHandleSmall ItemHandleLarge)
      (progn
        (ssdel (ssname ssLarge i) ssLarge)
        (ssdel (ssname ssSmall 0) ssSmall)
        (setq i 0);end setq
      );end progn
      (setq i (1+ i))
    );end if
  );end while
  (sslength ssLarge)
);end defun
;**************************************************************************************************************************************************
(defun STRING_SPLIT (delim str / sublimit delimPos strLst j strSection)
  (setq lst nil)
  (cond
    ((/= (type str)(type delim) str))
    ((= str delim)'(""))
      (progn
        (setq j 0 ;where j is equal to the search index location
              strSection (strlen delim)
              str (strcat str delim)
              sublimit (strlen str));end setq
        (while (< j sublimit)
          (setq delimPos (vl-string-search delim str j)
                strLst (cons(substr str (1+ j)(- delimPos j)) strLst)
                j (+ delimPos strSection));end setq
        );end while
          (setq lst (reverse (cons (substr str (1+ j)) strLst))));end setq / end progn
  );end cond
  (LIST_CONCATENATE "@@@" lst)
  (setq junkCount 0);end setq
  (while (< junkCount (length lst))
    (if(not(or(= (nth junkCount lst) "")(= (nth junkCount lst) " ")(= (nth junkCount lst) nil)))
      (setq newLst (append newLst (list (nth junkCount lst))));end setq
    );end if
    (setq junkCount (1+ junkCount));ent setq
  );end while
    (setq lst newLst
          newLst nil
          strLst nil
     );end setq
          (setq nth0 nil nth1 nil nth2 nil nth3 nil nth4 nil nth5 nil nth6 nil nth7 nil nth8 nil nth9 nil nth10 nil nth11 nil nth12 nil nth13 nil nth14 nil nth15 nil nth16 nil nth17 nil nth18 nil nth19 nil nth20 nil nth21 nil nth22 nil nth23 nil nth24 nil nth25 nil)
          (if(and(not(= lst nil))(not(= (nth 0 lst) nil))) (setq nth0 (nth 0 lst)))
          (if(and(not(= lst nil))(not(= (nth 1 lst) nil))) (setq nth1 (nth 1 lst)))
          (if(and(not(= lst nil))(not(= (nth 2 lst) nil))) (setq nth2 (nth 2 lst)))
          (if(and(not(= lst nil))(not(= (nth 3 lst) nil))) (setq nth3 (nth 3 lst)))
          (if(and(not(= lst nil))(not(= (nth 4 lst) nil))) (setq nth4 (nth 4 lst)))
          (if(and(not(= lst nil))(not(= (nth 5 lst) nil))) (setq nth5 (nth 5 lst)))
          (if(and(not(= lst nil))(not(= (nth 6 lst) nil))) (setq nth6 (nth 6 lst)))
          (if(and(not(= lst nil))(not(= (nth 7 lst) nil))) (setq nth7 (nth 7 lst)))
          (if(and(not(= lst nil))(not(= (nth 8 lst) nil))) (setq nth8 (nth 8 lst)))
          (if(and(not(= lst nil))(not(= (nth 9 lst) nil))) (setq nth9 (nth 9 lst)))
          (if(and(not(= lst nil))(not(= (nth 10 lst) nil))) (setq nth10 (nth 10 lst)))
          (if(and(not(= lst nil))(not(= (nth 11 lst) nil))) (setq nth11 (nth 11 lst)))
          (if(and(not(= lst nil))(not(= (nth 12 lst) nil))) (setq nth12 (nth 12 lst)))
          (if(and(not(= lst nil))(not(= (nth 13 lst) nil))) (setq nth13 (nth 13 lst)))
          (if(and(not(= lst nil))(not(= (nth 14 lst) nil))) (setq nth14 (nth 14 lst)))
          (if(and(not(= lst nil))(not(= (nth 15 lst) nil))) (setq nth15 (nth 15 lst)))
          (if(and(not(= lst nil))(not(= (nth 16 lst) nil))) (setq nth16 (nth 16 lst)))
          (if(and(not(= lst nil))(not(= (nth 17 lst) nil))) (setq nth17 (nth 17 lst)))
          (if(and(not(= lst nil))(not(= (nth 18 lst) nil))) (setq nth18 (nth 18 lst)))
          (if(and(not(= lst nil))(not(= (nth 19 lst) nil))) (setq nth19 (nth 19 lst)))
          (if(and(not(= lst nil))(not(= (nth 20 lst) nil))) (setq nth20 (nth 20 lst)))
          (if(and(not(= lst nil))(not(= (nth 21 lst) nil))) (setq nth21 (nth 21 lst)))
          (if(and(not(= lst nil))(not(= (nth 22 lst) nil))) (setq nth22 (nth 22 lst)))
          (if(and(not(= lst nil))(not(= (nth 23 lst) nil))) (setq nth23 (nth 23 lst)))
          (if(and(not(= lst nil))(not(= (nth 24 lst) nil))) (setq nth24 (nth 24 lst)))
          (if(and(not(= lst nil))(not(= (nth 25 lst) nil))) (setq nth25 (nth 25 lst)))
          (if(and(not(= lst nil))(not(= (nth(-(length lst)1)lst) nil))) (setq nthLast (nth(-(length lst)1)lst)))
  (princ)
 );end defun
;**************************************************************************************************************************************************
  (defun ROUNDDOWN (num fact /)
    (setq num (- num (rem num fact)))
    (if(and (= (type fact) 'INT) (= (type num) 'REAL))
      (fix num)
      num
    );end if
  );end defun
  (defun ROUNDUP (num fact /)
    (+ (RoundDown num fact) (abs fact))
  );end defun
(defun ROUND (num fact / n1 n2 d1 d2)
  (defun RoundDown (num fact /)
    (setq num (- num (rem num fact)))
    (if(and (= (type fact) 'INT) (= (type num) 'REAL))
      (fix num)
      num
    );end if
  );end defun
  (defun RoundUp (num fact /)
    (+ (RoundDown num fact) (abs fact))
  );end defun
  (setq fact (abs fact)
        n1 (RoundDown num fact)
        n2 (+ n1 fact)
        d1 (abs (- num n1))
        d2 (abs (- num n2))
  );end setq
  (if (< d1 d2)
    n1
    n2
  );end if
);end defun
;**************************************************************************************************************************************************
(defun DELIMITER_COUNT (char str / position)
  (vl-load-com)
  (setq position 0
        cnt 0
        nthCount nil);end setq
  (while(not(= (vl-string-search char str) nil))
    (setq position (vl-string-search char str)
          str (vl-string-subst "" char str position)
          cnt (1+ cnt))
  );end while
  (setq nthCnt (1- cnt))
);end defun
;**************************************************************************************************************************************************
(defun REMOVE_LIST_JUNK (junkLst / junkCount newLst)
  (vl-load-com)
  (setq junkCount 0);end setq
  (while (< junkCount (length junkLst))
    (if(not(or(= (nth junkCount junkLst) "")(= (nth junkCount junkLst) " ")(= (nth junkCount junkLst) nil)))
      (setq newLst (append newLst (list (nth junkCount junkLst))));end setq
    );end if
    (setq junkCount (1+ junkCount));ent setq
  );end while
    (setq lst newLst
          newLst nil);ent setq
);end defun
;**************************************************************************************************************************************************
(defun LIST_CONCATENATE (delim lst / str)
  (vl-load-com)
  (setq strcatLst (car lst))
  (foreach elmt (cdr lst)(setq strcatLst (strcat strcatLst delim elmt)))
);end defun
;**************************************************************************************************************************************************
(defun FORCE_POSITIVE (num / strNum)
  (if(or(= (type num) 'REAL)(= (type num) 'INT))
    (progn
      (setq strnum (rtos num 2))
      (STRING_SPLIT "-" strnum)
      (setq posNum (distof(nth 0 lst)))
    );end progn
  );end if
);end defun
;**************************************************************************************************************************************************
(defun CONNECTOR_PARSE (connector# localEndSize localPoints / nthConnector# requestedConnector j)
  ;(setq connector# 2)
  (setq cName nil
        cWidth nil
        cDepth nil
        cDia nil
        shape nil
        xyz nil
        cX nil
        cY nil
        cZ nil
        strcatLst nil
        nthConnector# (1- connector#));end setq
  (DELIMITER_COUNT "," localEndSize)
  (if(and(<= connector# cnt)(> connector# 0))
    (progn
      (setq keepLst T)
      (STRING_SPLIT ", " localEndSize)
      (setq requestedConnector (nth nthConnector# lst))
      (DELIMITER_COUNT "  " requestedConnector)
      (setq cTDF# cnt)
      (STRING_SPLIT "  " requestedConnector)
      (DELIMITER_COUNT " " strcatLst)
      (setq cnt (+ cnt cTDF#))
      (STRING_SPLIT " " strcatLst)
      (STRING_SPLIT "@@@" strcatLst)
      (setq j 0
            cName "")
      (while (< j cnt)
        (setq cName (strcat cName (nth j lst)))
        (if(< j nthCnt)(setq cName (strcat cName " ")))
          (setq j (1+ j))
      );end while
      (STRING_SPLIT "x" (nth cnt lst))
      (if(> (length lst) 1)
        (setq cWidth (atoi(nth 0 lst))
              cDepth (atoi(nth 1 lst))
              shape "Rectangular");end setq
        (setq cWidth (atoi(nth 0 lst))
              cDepth (atoi(nth 0 lst))
              shape "Round");end setq
      );end if
      (if(not(or(= ItemCID "838")(= ItemCID "902")))
        (progn
          (DELIMITER_COUNT ";" localPoints)
          (STRING_SPLIT "ENDPOINTS: " localPoints)
          (STRING_SPLIT ";" nth0)
          (STRING_SPLIT "," (nth nthConnector# lst))
          (if(not(= lst nil))(setq xyz (progn(setq xyz nil)(foreach elmt lst (setq xyz (append xyz (list(distof elmt))))))))
          (if(and(not(= lst nil))(not(= (nth 0 lst))))(setq cX (distof(nth 0 lst))))
          (if(and(not(= lst nil))(not(= (nth 1 lst))))(setq cY (distof(nth 1 lst))))
          (if(and(not(= lst nil))(not(= (nth 2 lst))))(setq cZ (distof(nth 2 lst))))
        );end progn
      );end if
    );end progn
  );end if
  (if(= cX nil)(setq cX 0))
  (if(= cY nil)(setq cY 0))
  (if(= cZ nil)(setq cZ 0))
  (setq keepLst nil
        cnt nil
        nthCnt nil
        lst nil
        ctest nil
  );end setq
;|
  (if(= shape "Rectangular")(progn(princ (strcat "Requested Connector Shape = " shape))(terpri)(princ (strcat "Requested Connector Width = " (rtos cWidth)))(terpri)(princ (strcat "Requested Connector Depth = " (rtos cDepth)))(terpri))
    (if(= shape "Round")(progn(princ (strcat "Requested Connector Shape = " shape))(terpri)(princ (strcat "Requested Connector Diameter = " (rtos cWidth)))(terpri))));end if
  (if(not(and(= cX nil)(= cY nil)(= cZ nil)))
    (progn
      (princ (strcat "Requested Connector Coordinate List = " (rtos cX 2) " " (rtos cY 2) " " (rtos cZ 2)))(terpri)(princ)
      (princ (strcat "Requested Connector X Coordinate = " (rtos cX 2)))(terpri)(princ)
      (princ (strcat "Requested Connector Y Coordinate = " (rtos cY 2)))(terpri)(princ)
      (princ (strcat "Requested Connector Z Coordinate = " (rtos cZ 2)))(terpri)(princ)
    );end progn
    (princ "Requested connector index invalid")
  );end if
|;
  (princ)
);end defun
;|                                                                                                                                         |;
(defun c:Auto_Text (/)
  (setvar "cmdecho" 0)  
  (print "SELECT - Select your own items.")(princ)(terpri)
  (print "ALL - Auto-selects all items in the current drawing.")(princ)(terpri)
  (initget 0 "Select All")
  (setq decision (getkword "\nChoose: [Select/All] <All>?:"))
  (if(= decision nil)
    (setq decision "All"))
  (if(= decision "Select")
    (progn
      (terpri)(princ "Select items.")(princ)
      (setq i 0
            sset (ssget '((0 . "MAPS_SOLID"))
             ));end setq
    );end progn
    (if(= decision "All")
      (progn
        (setq i 0
              sset (ssget "_X" '((0 . "MAPS_SOLID"))
             ));end setq
        (if(not(= sset nil))
          (progn(terpri)(princ "All drawing items selected; Please choose:")(princ))
        );end if
      );end progn
    );end if
  );end ifs
  (if(= sset nil)
    (progn(terpri)(princ "No items were selected.")(princ))
    (progn
      (terpri)(princ "All - Wipe the slate clean and reset all text.")(princ)
      (terpri)(princ "Reset - Reorganize existing text while adding new text.")(princ)
      (terpri)(princ "New - Leave existing text untouched while adding only new text.")(princ)
      (initget 0 "All Reset New")
      (setq choice (getkword "\nChoose: [All/Reset/New] <New>"))
      (if(= choice nil)
        (setq choice "New"))
    (OUTSIDE_LOOP_VARIABLES sset)
    (if(= choice "All")(removemaptext sset 127));end if
      (while (< i limit);Start the Loop
        (INSIDE_LOOP_VARIABLES sset i)
        (setq coordinateList (list c1x c1y c1z c2x c2y c2z c3x c3y c3z)
              position 1)
        (foreach el coordinateList
          (if(= position 1)(setq varName "c1x")
            (if(= position 2)(setq varName "c1y")
              (if(= position 3)(setq varName "c1z")
                (if(= position 4)(setq varName "c2x")
                  (if(= position 5)(setq varName "c2y")
                    (if(= position 6)(setq varName "c2z")
                      (if(= position 7)(setq varName "c3x")
                        (if(= position 8)(setq varName "c3y")
                          (if(= position 9)(setq varName "c3z")
          ) ) ) ) ) ) ) ) );end ifs
          (if(= el nil)
            (set(read varName)1)
          );end if
          (setq position (1+ position))
	  (princ)
        );foreach
      (if(= c1Width nil)(setq c1Width 1));end if
      (if(= c2Width nil)(setq c2Width 1));end if
      (if(or
        (and(wcmatch ItemSourceFileName "*Rnd*")(wcmatch ItemSourceFileName "*CFSD*"))
        (and(wcmatch ItemSourceFileName "*Round*")(wcmatch ItemSourceFileName "*CFSD*"))
        (and(wcmatch ItemSourceFileName "*Round*")(wcmatch ItemSourceFileName "*Fire Damper*")))
        (setq c1Width (+ c1Width 2)
              c2Width (+ c2Width 2))
      );end if
      (TRIG_MY_POINTS PrimaryPoint c1Width c1Depth SecondaryPoint c2Width c2Depth elevationTagWidth elevationTagDepth sizeTagWidth sizeTagDepth)
    (if(and(or(= choice "All")(= choice "Reset")(and(= choice "New") newItem))(and(or textAdjustmentWarranted) notVerticalPiece (not(= c2x nil))))
      (progn
        (if 2PntSupport
          (setq c1x c3x
                c1y c3y));end setq/if
        (if 1PntSupport
            (setq xDist 0
                  yDist 0));end if
        (if tinyOrShort
          (setq xyzNumb CentralPosDown
                xyzSize side1Pos1
                xyzElev side1Pos3
                xyzAlia corner4Inset
                xyzOffs side1Pos2
                xyzLeng corner1Inset
          );end setq
          (if smallSized
            (setq xyzNumb side2Pos1
                  xyzSize lineCenterPoint
                  xyzElev side1Pos2
                  xyzAlia corner4Inset
                  xyzOffs side1Pos1
                  xyzLeng corner1Inset
            );end setq
            (if mediumSized
              (setq xyzNumb side1Pos1
                    xyzSize CentralPosRight
                    xyzElev CentralPosLeft
                    xyzAlia corner4Inset
                    xyzOffs CentralPosUp
                    xyzLeng corner1Inset
              );end setq
              (if largeSized
                (setq xyzNumb side1Pos1
                      xyzSize CentralPosDown
                      xyzElev CentralPosUp
                      xyzAlia corner4Inset
                      xyzOffs CentralPosUp
                      xyzLeng corner1Inset
                );end setq
        ) ) ) );end ifs
      (if textAdjustmentWarranted
        (progn
          (removemaptext SSentity 127)
          (addtextatpoint 1 ent xyzNumb)
          (addtextatpoint 2 ent xyzSize)
          (addtextatpoint 3 ent xyzElev)
          (addtextatpoint 4 ent xyzAlia)
          (addtextatpoint 5 ent xyzOffs)
          (addtextatpoint 6 ent xyzLeng)
          (settext SSentity 63 "off")
        );end progn
      );end if
    );end progn
  );end if
    (if(or(= choice "All")(and(= choice "New") newItem)(and(= choice "Reset") newItem))
      (progn
      (if(wcmatch (strcase ItemSourceFileName) "FLEX")
        (progn
          (addtextatpoint 2 ent (list (1+ (car SecondaryPoint)) (1+ (cadr SecondaryPoint)) (caddr SecondaryPoint)));Size
          (settext SSentity 2 "on");Size
        );progn
      );end if
      (if addSE
        ;(progn
          (settext SSentity 6 "on")
          ;(command "._circle" xyzElev "1" "")
        ;);progn
	);Size & Elevation Text
        
      (if addLength
        (settext SSentity 32 "on"));Length Text
      (if addOffset
        (settext SSentity 16 "on"));Length & Offset Text
      (if addAlias
        (settext SSentity 8 "on"));Alias Text
      );end progn
    );end if
      (if(and(= choice "Reset")(not newItem))
        (progn
        (if (= NumberToggle "On")
          (settext SSentity 1 "On")
          (settext SSentity 1 "Off"));end if
        (if (= SizeToggle "On")
          (settext SSentity 2 "On")
          (settext SSentity 2 "Off"));end if
        (if (= ElevationToggle "On")
          (settext SSentity 4 "On")
          (settext SSentity 4 "Off"));end if
        (if (= AliasToggle "On")
          (settext SSentity 8 "On")
          (settext SSentity 8 "Off"));end if
        (if (= OffsetToggle "On")
          (settext SSentity 16 "On")
          (settext SSentity 16 "Off"));end if
        (if (= LengthToggle "On")
          (settext SSentity 32 "On")
          (settext SSentity 32 "Off"));end if
        );end progn
      );end if
      ;(command "-mtext" xyzElev (list (car xyzElev)(cadr xyzElev)(caddr xyzElev)) (itoa i) "" "")
      (setq i (1+ i)
            SSentity nil);increment loop by 1
    );end while
  );end progn
);end if
    (if (= choice "All")
      (progn(princ "Applied default text positions to all items in drawing.")(princ)(terpri))
      (if (= choice "Reset")
        (progn(princ "Reset existing text & added text to new items.")(princ)(terpri))
        (if (= choice "New")
          (progn(princ "Ignored existing text & added text to new items.")(princ)(terpri))
  ) ) );end if
  (princ)
(END_ROUTINE));end defun
;|***********************************************************************************************************************************************************************************************************************
FUTURE ADDITIONS:***********************************************************************************************************************************************************************************************************
Square throat lengths
Radius throat size
Elbow angle -- Show if up/down
Explanation of the Trigonometry:
                                                                                                                                                                                            :
                                                            /\                                                                                                                              :
                                                          / 2  \                                                                                                                            :
                                                        /        \                                                                                                                          :
                                                      /            \                            A)Theta                                                                                     :
                                                    /                \                           -Found using arctangent of parent triangle                                                 :
                                                  /                    \                         -With careful use of the laws of Sine, Cosine & Tangent we can exploit the fact that the   :
                                                /                        \                        angle Theta repeats itself in multiple locations on our evaluated item as it's potential  :
                                              /    Offset Distance----> /` \(xyz)                 orientation changes.                                                                      :
                                            /                         /`    |\                  B)Theta complimentary angle - be careful not to associate trig functions with this angle.   :
                                          /                     (4),/`     /|  \                1)xDist** - X value of parent triangle.                                                     :
                                        /                          \,    /  |    \              2)yDist** - Y value of parent triangle.                                                     :
                                      /                              \,  (B)|      \            3)itemLength - Hypontenuse of parent triangle & item length.                               :
                                    /                                /[\    |        \          4)endOffset - Length text offset from right end.                                            :
                                  /                                (B)[  \  |          \        5)lengthTransOffset - Baby triangle hypontenuse; found via a formula based off of width.              :
                                /                                /    [(A) \|            \       -We exploit our knowledge that the width object value will always be                       :
                              /        Baby Triangle----------------> [     |\ (5)         \      perpendicular to the length (or parent hypotenuse).                                       :
                            /                                /     (7)[_    |  \          1/    6)xDistBabyTri - X value of baby triangle (finds actual length drop location).              :
                          /                                           [_|___|____\       /      7)yDistBabyTri - Y value of baby triangle (finds actual length drop location).              :
                        /                                /            *  (6)|    (xy)  /        8)xDistMidTri - X value of the middle triangle (finds origin of the baby triangle).         :
                      /                                               *     |        /          9)yDistMidTri - Y value of the middle triangle (finds origin of the baby triangle).         :
                    /                                /                *     |      /                                                                                                        :
                  /                           (3)                     *     |    /                                                                                                          :
                /                                /                    *     |  /                                                                                                            :
              /                                                    (8)*     |/                                                                                                              :
            /                                /                        *    /|                                                                                                               :
          /                                                           *  /  |(2)                                                                                                            :
        /                                /                            */    |                                                                                                               :
      /                                                              /*     |                                                                                                               :
    /                                /                             /  *     |                                                                                                               :
  /                                                              /    *     |                        Now that we have our foundational variables set, we apply them to the absolute         :
/                                /                             /      *     |                   coordinate system.  Adding and subtracting these values from the absolute c1 & c2           :
\3                                                           /        *     |                   coordinates values provided by the map gives us our desired drop point locations.  With     :
  \                          /                             /          *     |                   these fundamental mathematical principles implemented we can consistently establish a       :
    \                                                    /            *     |                   destination coordinate value that is relative to any item location, position & orientation. :
      \                  /                             /              *     |                                                                                                               :
        \                                            /    Mid Triangle*     |                                                                                                               :
          \          /                             /                  *  ___|Parent Triangle                                                                                                :
            \                                    /                    * |   |                                                                                                               :
              \  / (A)             (9)         /                      * |   |                                                                                                               :
           (xyz)\-*-*-*-*-*-*-*-*-*-*-*-*-*-*/*-*-*-*-*-*-*-*-*-*-*-*-*------                                                                                                               :
                  \                        /   (1)                                                                                                                                          :
                    \                    /                                                                                                                                                  :
                      \                /                                                                                                                                                    :
                        \            /                                                                                                                                                      :
                          \        /                                                                                                                                                        :
                            \ 4  /                                                                                                                                                          :
                              \/                                                                                                                             :
|;
;**************************************************************************************************************************************************
(defun c:3D ()
  (setq sset (ssget '((0 . "MAPS_SOLID"))))
  (command "pselect" sset "")
  );end defun;**************************************************************************************************************************************************
(defun c:Entlast ()
  (command "pselect" (entlast) "")
  );end defun;**************************************************************************************************************************************************
(defun c:SSET ()
  (if(not(= sset nil))
    (command "pselect" sset "")
    (progn(terpri)(princ "No selection set currently defined")(princ))
  );end if
);end defun
;**************************************************************************************************************************************************
(defun c:Auto_Hatch_FSD ()
  (setq sset (ssget "X" '((0 . "HATCH"))));end setq
  (if (not(= sset nil))
    (command "erase" sset "")
  );end if
  (setq i 0
        sset (ssget "_X" '((0 . "MAPS_SOLID")
                               (-4 . "<OR")
                                 (300 . "Greenheck FSD-212 CFSD (21in Sleeve)")
                                 (300 . "Greenheck FSD-212 CFSD Rnd (21in Product List)")
                                 (300 . "Greenheck FSD-212 CFSD (ADJ Sleeve)")
                                 (300 . "Greenheck FSD-212 CFSD Rnd (ADJ Sleeve)")
                                 (300 . "Fire Damper (Rectangular)")
                                 (300 . "Fire Damper (Round)")
                               (-4 . "OR>"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
        (setq oldOSMode (getvar 'osmode))
        (setvar 'osmode 0)
  (while (< i limit);Start the Loop
    (INSIDE_LOOP_VARIABLES sset i)
      (command "CAL" "translatedC1=w2u(c1xyz)")
      (command "CAL" "translatedC2=w2u(c2xyz)")
      (if(or(wcmatch itemSourceFileName "*Rnd*")(wcmatch itemSourceFileName "*Round*"))
        (setq c1Width (+ c1Width 2)
              c2Width (+ c2Width 2))
      );end if
      (TRIG_MY_POINTS translatedC1 c1Width c1Depth translatedC2 c2Width c2Depth nil nil nil nil)
      (command "pline" corner1 corner2 corner3 corner4 "Close")
      (setq hatchPLine (entlast))
      (command "-hatch" "P" "ANSI37" "18" ThetaDegrees "CO" "4" "." "S" hatchPLine "" "")
      (command "erase" hatchPLine "")
      (setq i (1+ i))
  );end while
      (setq hatchPLine nil)
      (setvar 'osmode oldOSMode)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Rotate_Around_Center ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
    (command "ucs" "world")
  (while(< i limit)
    (INSIDE_LOOP_VARIABLES sset i)
    (TRIG_MY_POINTS PrimaryPoint c1Width c1Depth SecondaryPoint c2Width c2Depth elevationTagWidth elevationTagDepth sizeTagWidth sizeTagDepth)
    (if(not onlyC1)
      (progn
        (initcommandversion 1)
        (command "._rotate" ent "" (strcat(rtos xMidpoint 2) "," (rtos yMidpoint 2) "," (rtos pointZ 2)) "180")
        (initcommandversion 2)
        (setq i (1+ i))
      );end progn
      (command "._rotate" ent "" (strcat(rtos c1x 2) "," (rtos c1y 2) "," (rtos entCAvg 2)) "180")
    );end if
  );end while
  (RESET_UCS)
);end defun
;**************************************************************************************************************************************************
(defun c:Layer_Make_Current ()
  (command "laymcur")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Layer_Off ()
  (command "layoff")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Layer_On ()
  (command "layon")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Layer_Unlock ()
  (command "layulk")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Layer_Match ()
  (command "laymch")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Layer_Isolate ()
  (command "layiso")
  (princ)
(END_ROUTINE));end defun
;*************************************************************************************************************************************************************
(defun c:Get_Entity_List ();Get Entity Lists
(setq entSS (ssget)
      i 0
      limit (sslength entSS));end setq
  (while (< i limit)
    (INSIDE_LOOP_VARIABLES entSS i)
    (setq ent (ssname entSS i)
          entlist (entget ent)
          i (1+ i));end setq
    (princ (strcat "\n " "------------------------------------------------"))(terpri)
    (princ (strcat "\n Item " (rtos i 2 0) " = "))(terpri)
    (princ entlist)(terpri)
    (foreach item '("Area" "CustomData" "Description"
                    "Elevation" "EndSize" "ItemNumber"
                    "LengthAngle" "Notes" "Points"
                    "Section" "ServiceName" "Status"
                    "Weight");end item list
    (princ (strcat "\n " item " = "))
    (princ (vlax-get-property vla item))
    );end foreach
    (princ)
  );end while
  (princ (strcat "\n " "------------------------------------------------"))(terpri)
  (textscr)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Select_Entity ();Get Entity Lists
(command "pselect" ent "")
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun ESC ()
(vl-load-com)
(setq doc (vla-get-ActiveDocument (vlax-get-acad-object)))
(vla-SendCommand doc (chr 27))
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Attacher_On ()
  (command "attacher")
  (princ)
(END_ROUTINE));end defun


;**************************************************************************************************************************************************
;**************************************************************************************************************************************************
;**************************************************************************************************************************************************
;**************************************************************************************************************************************************
;**************************************************************************************************************************************************
;**************************************************************************************************************************************************
;**************************************************************************************************************************************************
;**************************************************************************************************************************************************
(defun AUTO_ATTACHER_ON_C1 ()
  (setq i 0
        sset (ssget))
  (INSIDE_LOOP_VARIABLES sset i)
  (command "attacher" (list c1x c1y c1z))
  (REDRAW)
  
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
;**************************************************************************************************************************************************
;**************************************************************************************************************************************************
;**************************************************************************************************************************************************
;**************************************************************************************************************************************************
;**************************************************************************************************************************************************
;**************************************************************************************************************************************************
;**************************************************************************************************************************************************

;**************************************************************************************************************************************************
(defun c:Attacher_On ()
  (command "attacher")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Attacher_Off ()
  (command "attachoff")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Attacher_Off ()
  (command "attachoff")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Toggle_Z_Snaplock ()
  (setq curZ (getvar 'osnapz))
    (if(= curZ 1)
      (progn
	(setvar 'osnapz 0)
	(princ "Z snap lock turned off")
	(princ)
	)
      (if(= curZ 0)
	(progn
	  (setvar 'osnapz 1)
	  (princ "Z snap lock turned on")
	  (princ)
	  )
	)
      );end if
      (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Execute_Script ()
  (command "executescript")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Rotate_3D ()
  (command "ROTATE3D")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Copy_Rotate ( / pt1 pt2 pt3)
  (*push-error-using-command*)
  (setq old-error *ERROR*)
  (OUTSIDE_LOOP_VARIABLES nil)
  (prompt "\nSelect items:")
  (setq sset (ssget)
        oldHighlight (getvar 'highlight))
  (setvar 'highlight 0)
  (defun CR_=1_ERROR ( msg );********************************************************
    (princ "error: ")
    (princ msg)
    (setq *ERROR* old-error
          old-error nil)
    (if oldHighlight (progn(setvar 'highlight oldHighlight)(setq oldHighlight nil)))
    (if itemsWereCopied
      (progn
        (command "erase" newItem "")
        (setq itemsWereCopied nil
              newItem nil)
      );end progn
    );end if
    (princ)
  );end defun************************************************************************
  (defun CR_2-10_ERROR ( msg );******************************************************
    (princ "error: ")
    (princ msg)
    (setq *ERROR* old-error
          old-error nil)
    (if oldHighlight (progn(setvar 'highlight oldHighlight)(setq oldHighlight nil)))
    (if UCSmadeWorld
      (progn
        (setq UCSmadeWorld nil)
        (if(not(or(= UCSname nil)(= UCSname "")))
          (command "_.UCS" "Named" "Restore" UCSname "")
          (command "_.UCS" originalUCSOrigin originalUCSx originalUCSy "")
        );end if
      );end progn
    );end if
    (if itemsWereCopied
      (progn
        (command "erase" ssLarge "")
        (setq itemsWereCopied nil
              ssLarge nil)
      );end progn
    );end if
    (princ)
  );end defun************************************************************************
  (defun CR_>1_ERROR ( msg );*******************************************************
    (if itemsWereCopied
      (progn
        (command "undo" "3")
        (setq itemsWereCopied nil)
      );end progn
    );end if
    (princ "error: ")
    (princ msg)
    (setq *ERROR* old-error
          old-error nil)
    (if oldHighlight (progn(setvar 'highlight oldHighlight)(setq oldHighlight nil)))
    
    (princ)
  );end defun************************************************************************
  (if(=(sslength sset)1)
    (progn
        (setq *ERROR* CR_=1_ERROR)
      (setq pt1 (getpoint "\nEnter Base Point:"))
      (setvar "LastPoint" pt1)
      (command ".copy" sset "" pt1 pt1)
      (setq itemsWereCopied T)
      (setq newItem (entlast))
      (command ".move" newItem "" pt1 PAUSE)
      (PROMPT "\nEnter Rotation angle:")
      (command ".rotate" newItem "" (getvar "LastPoint") PAUSE)
      (command ".REDRAW")
    );progn
    ;|
    (if(and(>(sslength sset)1)(<(sslength sset)11))
      (progn
        (setq *ERROR* CR_2-10_ERROR)
        (setq originalUCSOrigin (getvar "UCSORG")
              originalUCSx (getvar "UCSXDIR")
              originalUCSy (getvar "UCSYDIR")
              UCSname (getvar "UCSNAME"))
        (command "_.UCS" "World" "")
        (setq UCSmadeWorld T)
        (SS_BBOX sset)
        (setq ssetCompare1 (ssget "W" (list(-(car xyLL)100)(-(cadr xyLL)100))(list(+(car xyUR)100)(+(cadr xyUR)100))))
        (setq pt1 (getpoint "\nEnter Base Point:"))
        (command ".copy" sset "" pt1 pt1)
        (setq itemsWereCopied T)
        (setq ssetCompare2 (ssget "W" (list(-(car xyLL)100)(-(cadr xyLL)100))(list(+(car xyUR)100)(+(cadr xyUR)100))))
        (COMPARE_SSETS ssetCompare1 ssetCompare2)
        (command ".move" ssLarge "" pt1 pause)
        (setq pt2 (getvar 'lastpoint))
        (prompt "\nEnter Rotation angle:")
        (command ".rotate" ssLarge "" pt2 pause)
        (setq pt3 (getvar 'lastpoint))
        (setq ssLarge nil
              ssetCompare1 nil
              ssetCompare2 nil)
        (if(not(or(= UCSname nil)(= UCSname "")))
          (command "_.UCS" "Named" "Restore" UCSname "")
          (command "_.UCS" originalUCSOrigin originalUCSx originalUCSy "")
        );end if
      );progn
        (setq originalUCSOrigin (getvar "UCSORG")
              originalUCSx (getvar "UCSXDIR")
              originalUCSy (getvar "UCSYDIR")
              UCSname (getvar "UCSNAME"))
        (command "_.UCS" "World" "")
        (if(not(or(= UCSname nil)(= UCSname "")))
          (command "_.UCS" "Named" "Restore" UCSname "")
          (command "_.UCS" originalUCSOrigin originalUCSx originalUCSy "")
        );end if
      |;
      (if(>(sslength sset)1)
        (progn
          (setq *ERROR* CR_>1_ERROR)
          (setq pt1 (getpoint "\nEnter Base Point:"))
          (setvar "LastPoint" pt1)
          (command ".copy" sset "" pt1 pt1)
          (setq itemsWereCopied T)
          (command ".move" sset "" pt1 PAUSE)
          (prompt "\nEnter Rotation angle:")
          (command ".rotate" sset "" (getvar "LastPoint") PAUSE)
          (command ".REDRAW")
        );end progn
      );end if
    );end if
;  );end if
  (setvar "HighLight" oldHighlight)
  (setq *ERROR* old-error
        old-error nil
        itemsWereCopied nil)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Select_Similar_SourceFileName ()
  (prompt "\nSelect source item:")
  (setq i 0
        sset (ssget ":S"))
  (OUTSIDE_LOOP_VARIABLES nil)
  (INSIDE_LOOP_VARIABLES sset i)
  (if(and(wcmatch entGraphicID "INSERT")(wcmatch(cdr(nth 10 entlist))"*TAGS*"))
    (setq sset (ssget "_X" '((0 . "INSERT")
                            (-4 . "<OR")
                              (8 . "M-AMC-TAGS-RTRN")
                              (8 . "M-AMC-TAGS-BLCK")
                              (8 . "M-AMC-TAGS-CBST")
                              (8 . "M-AMC-TAGS-EQPM")
                              (8 . "M-AMC-TAGS-EWLD")
                              (8 . "M-AMC-TAGS-EXHA")
                              (8 . "M-AMC-TAGS-OUTA")
                              (8 . "M-AMC-TAGS-SPLY")
                              (8 . "M-AMC-TAGS-XFER")
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
;**************************************************************************************************************************************************
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
;**************************************************************************************************************************************************
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
;**************************************************************************************************************************************************
(defun c:Select_Similar_Activity# ()
  (setq i 0
        Activity#Select (getstring T "n/Enter the activity # you'd like to use as a filter: ")
        sset (ssget "X" (list (cons 300 Activity#Select)))
        activitySSet (ssadd));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (while(< i limit)
    (INSIDE_LOOP_VARIABLES sset i)
    (if(= Activity_# Activity#Select)
      (setq activitySSet (ssadd ent activitySSet))
    );end if
    (setq i (1+ i))
  );end while
  (command "pselect" activitySSet "")
  (princ)
);end defun
;**************************************************************************************************************************************************
(defun c:HangerCommand () 
   (command "hangercommand")
   (princ) 
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
;multirotate is a multiple rotating utility used to rotate several
;items by one rotate factor and many reference points
;1-7-92
(defun c:Move_Rotate_Repeat ()
  (Prompt "\n\nMulti-Rotate")
  (PROMPT "\n Multi-Rotate")
  (if (not rotateref) (setq rotateref 0))
  (setq l t)
  (INITGET (+ 1 2))
  (setq temp 
	(getdist (strcat "\nEnter Rotation <" (rtos rotateref 2 2) ">: ") ) )
  (if temp (setq rotateref temp))
  (while l
    (prompt "\nSelect objects: ")
    (setq ss1 (ssget))
    (IF SS1
     (PROGN
      (INITGET (+ 1 2 4))
      (setq p1 (getpoint "\nSelect Base Point: "))
      (command "rotate" ss1 "" p1 rotateref)
     )
    )
  )
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Move_Rotate ( / sset pt1 pt2)    ; move and rotate at the same time!
  (SETQ oldError *ERROR*)
  (defun *ERROR* (s) 
   ;YOUR COMMANDS HERE
   (SETVAR "HighLight" oldHighlight)
   (setq *ERROR* oldError)
   (SETQ oldError NIL)
   (princ)
  (END_ROUTINE));end defun err
  (SETQ oldHighlight (GETVAR "Highlight"))
  (PROMPT "\nSelect Entities to Move Rotate:")
  (SETQ sset (SSGET))
  (SETVAR "HighLight" 0)
  (SETQ Pt1 (getpoint "\nEnter Base Point:"))
  (COMMAND "move" sset "" Pt1 PAUSE)
  (PROMPT "\nEnter Rotation angle:")
  (COMMAND "ROTATE" sset "" (GETVAR "LASTPOINT") PAUSE)
  (SETVAR "HighLight" oldHighlight)
  (setq *ERROR* oldError)
  (SETQ oldError NIL)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Move_Along_Z ()
;;;; Move in the Z axis only
(setq ob (ssget)
      dis '(0.0 0.0 0.0)
      elv (getstring "Type required Z elevation <0>:")
      pt  (strcat "@0,0," elv))
(command "move" ob "" dis pt )
(princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Connection_Cycle ()
;;;; CC = CALLS UP THE CONNECTION CYCLING FILE
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if item.connector[1].value = \"TDF \" and item.connector[2].value = \"TDF \" then" writeToVBCode)
(write-line "REM ==== BEGIN JF STEP DOWN & TDF FUNCTION ====" writeToVBCode)
(write-line "dim c1Num = 1" writeToVBCode)
(write-line "dim c1Name = \"JF 1\"+qt+\" + qt + \" DD\"" writeToVBCode)
(write-line "dim c1Grp = \"Duct - Flg Connector\"" writeToVBCode)
(write-line "dim c2Num = 2" writeToVBCode)
(write-line "dim c2Name = \"TDF \"" writeToVBCode)
(write-line "dim c2Grp = \"Duct - Flg Connector\"" writeToVBCode)
(write-line "function connFind(cnum,cgrp,cnam)" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "while item.connector[cnum].group <> cgrp" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "while item.connector[cnum].value <> cnam" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "item.connector[c1Num].value = c1Name" writeToVBCode)
(write-line "item.connector[c1Num].locked = true" writeToVBCode)
(write-line "item.connector[c2Num].value = c2Name" writeToVBCode)
(write-line "item.connector[c2Num].locked = true" writeToVBCode)
(write-line "if item.connector[c1Num].group <> c1Grp then" writeToVBCode)
(write-line "connFind(c1Num,c1Grp,c1Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.connector[c2Num].group <> c2Grp then" writeToVBCode)
(write-line "connFind(c2Num,c2Grp,c2Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "REM ==== END JF STEP DOWN & TDF FUNCTION ====" writeToVBCode)
(write-line "elseif item.connector[1].value = \"JF 1\"+qt+\" + qt + \" DD\" and item.connector[2].value = \"TDF \" then" writeToVBCode)
(write-line "REM ==== BEGIN JF STEP DOWN & TDF FUNCTION ====" writeToVBCode)
(write-line "dim c1Num = 1" writeToVBCode)
(write-line "dim c1Name = \"TDF \"" writeToVBCode)
(write-line "dim c1Grp = \"Duct - Flg Connector\"" writeToVBCode)
(write-line "dim c2Num = 2" writeToVBCode)
(write-line "dim c2Name = \"JF 1\"+qt+\" + qt + \" DD\"" writeToVBCode)
(write-line "dim c2Grp = \"Duct - Flg Connector\"" writeToVBCode)
(write-line "function connFind(cnum,cgrp,cnam)" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "while item.connector[cnum].group <> cgrp" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "while item.connector[cnum].value <> cnam" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "item.connector[c1Num].value = c1Name" writeToVBCode)
(write-line "item.connector[c1Num].locked = true" writeToVBCode)
(write-line "item.connector[c2Num].value = c2Name" writeToVBCode)
(write-line "item.connector[c2Num].locked = true" writeToVBCode)
(write-line "if item.connector[c1Num].group <> c1Grp then" writeToVBCode)
(write-line "connFind(c1Num,c1Grp,c1Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.connector[c2Num].group <> c2Grp then" writeToVBCode)
(write-line "connFind(c2Num,c2Grp,c2Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "REM ==== END JF STEP DOWN & TDF FUNCTION ====" writeToVBCode)
(write-line "elseif item.connector[1].value = \"TDF \" and item.connector[2].value = \"JF 1\"+qt+\" + qt + \" DD\" then" writeToVBCode)
(write-line "REM ==== BEGIN TDF FUNCTION ====" writeToVBCode)
(write-line "dim c1Num = 1" writeToVBCode)
(write-line "dim c1Name = \"TDF \"" writeToVBCode)
(write-line "dim c1Grp = \"Duct - Flg Connector\"" writeToVBCode)
(write-line "dim c2Num = 2" writeToVBCode)
(write-line "dim c2Name = \"TDF \"" writeToVBCode)
(write-line "dim c2Grp = \"Duct - Flg Connector\"" writeToVBCode)
(write-line "function connFind(cnum,cgrp,cnam)" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "while item.connector[cnum].group <> cgrp" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "while item.connector[cnum].value <> cnam" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "item.connector[c1Num].value = c1Name" writeToVBCode)
(write-line "item.connector[c1Num].locked = true" writeToVBCode)
(write-line "item.connector[c2Num].value = c2Name" writeToVBCode)
(write-line "item.connector[c2Num].locked = true" writeToVBCode)
(write-line "if item.connector[c1Num].group <> c1Grp then" writeToVBCode)
(write-line "connFind(c1Num,c1Grp,c1Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.connector[c2Num].group <> c2Grp then" writeToVBCode)
(write-line "connFind(c2Num,c2Grp,c2Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "REM ==== END TDF FUNCTION ====" writeToVBCode)
(write-line "elseif item.connector[1].value = \"Flat S&D\" and item.connector[2].value = \"Flat S&D\" then" writeToVBCode)
(write-line "REM ==== BEGIN S&D STEP DOWN & FLAT S&D FUNCTION ====" writeToVBCode)
(write-line "dim c1Num = 1" writeToVBCode)
(write-line "dim c1Name = \"SD 1 SD\"" writeToVBCode)
(write-line "dim c1Grp = \"Duct - S&D\"" writeToVBCode)
(write-line "dim c2Num = 2" writeToVBCode)
(write-line "dim c2Name = \"Flat S&D\"" writeToVBCode)
(write-line "dim c2Grp = \"Duct - S&D\"" writeToVBCode)
(write-line "function connFind(cnum,cgrp,cnam)" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "while item.connector[cnum].group <> cgrp" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "while item.connector[cnum].value <> cnam" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "item.connector[c1Num].value = c1Name" writeToVBCode)
(write-line "item.connector[c1Num].locked = true" writeToVBCode)
(write-line "item.connector[c2Num].value = c2Name" writeToVBCode)
(write-line "item.connector[c2Num].locked = true" writeToVBCode)
(write-line "if item.connector[c1Num].group <> c1Grp then" writeToVBCode)
(write-line "connFind(c1Num,c1Grp,c1Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.connector[c2Num].group <> c2Grp then" writeToVBCode)
(write-line "connFind(c2Num,c2Grp,c2Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "REM ==== END S&D STEP DOWN & FLAT S&D FUNCTION ====" writeToVBCode)
(write-line "elseif item.connector[1].value = \"SD 1 SD\" and item.connector[2].value = \"Flat S&D\" then" writeToVBCode)
(write-line "REM ==== BEGIN S&D STEP DOWN & FLAT S&D FUNCTION ====" writeToVBCode)
(write-line "dim c1Num = 1" writeToVBCode)
(write-line "dim c1Name = \"Flat S&D\"" writeToVBCode)
(write-line "dim c1Grp = \"Duct - S&D\"" writeToVBCode)
(write-line "dim c2Num = 2" writeToVBCode)
(write-line "dim c2Name = \"SD 1 SD\"" writeToVBCode)
(write-line "dim c2Grp = \"Duct - S&D\"" writeToVBCode)
(write-line "function connFind(cnum,cgrp,cnam)" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "while item.connector[cnum].group <> cgrp" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "while item.connector[cnum].value <> cnam" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "item.connector[c1Num].value = c1Name" writeToVBCode)
(write-line "item.connector[c1Num].locked = true" writeToVBCode)
(write-line "item.connector[c2Num].value = c2Name" writeToVBCode)
(write-line "item.connector[c2Num].locked = true" writeToVBCode)
(write-line "if item.connector[c1Num].group <> c1Grp then" writeToVBCode)
(write-line "connFind(c1Num,c1Grp,c1Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.connector[c2Num].group <> c2Grp then" writeToVBCode)
(write-line "connFind(c2Num,c2Grp,c2Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "REM ==== END S&D STEP DOWN & FLAT S&D FUNCTION ====" writeToVBCode)
(write-line "elseif item.connector[1].value = \"Flat S&D\" and item.connector[2].value = \"SD 1 SD\" then" writeToVBCode)
(write-line "REM ==== BEGIN S&D STEP DOWN & FLAT S&D FUNCTION ====" writeToVBCode)
(write-line "dim c1Num = 1" writeToVBCode)
(write-line "dim c1Name = \"Flat S&D\"" writeToVBCode)
(write-line "dim c1Grp = \"Duct - S&D\"" writeToVBCode)
(write-line "dim c2Num = 2" writeToVBCode)
(write-line "dim c2Name = \"Flat S&D\"" writeToVBCode)
(write-line "dim c2Grp = \"Duct - S&D\"" writeToVBCode)
(write-line "function connFind(cnum,cgrp,cnam)" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "while item.connector[cnum].group <> cgrp" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "while item.connector[cnum].value <> cnam" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "item.connector[c1Num].value = c1Name" writeToVBCode)
(write-line "item.connector[c1Num].locked = true" writeToVBCode)
(write-line "item.connector[c2Num].value = c2Name" writeToVBCode)
(write-line "item.connector[c2Num].locked = true" writeToVBCode)
(write-line "if item.connector[c1Num].group <> c1Grp then" writeToVBCode)
(write-line "connFind(c1Num,c1Grp,c1Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.connector[c2Num].group <> c2Grp then" writeToVBCode)
(write-line "connFind(c2Num,c2Grp,c2Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "REM ==== END S&D STEP DOWN & FLAT S&D FUNCTION ====" writeToVBCode)
(write-line "elseif item.connector[1].value = \"Stand S&D\" and item.connector[2].value = \"Stand S&D\" then" writeToVBCode)
(write-line "REM ==== BEGIN S&D STEP DOWN & STAND S&D FUNCTION ====" writeToVBCode)
(write-line "dim c1Num = 1" writeToVBCode)
(write-line "dim c1Name = \"SD 1 SD\"" writeToVBCode)
(write-line "dim c1Grp = \"Duct - S&D\"" writeToVBCode)
(write-line "dim c2Num = 2" writeToVBCode)
(write-line "dim c2Name = \"Stand S&D\"" writeToVBCode)
(write-line "dim c2Grp = \"Duct - S&D\"" writeToVBCode)
(write-line "function connFind(cnum,cgrp,cnam)" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "while item.connector[cnum].group <> cgrp" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "while item.connector[cnum].value <> cnam" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "item.connector[c1Num].value = c1Name" writeToVBCode)
(write-line "item.connector[c1Num].locked = true" writeToVBCode)
(write-line "item.connector[c2Num].value = c2Name" writeToVBCode)
(write-line "item.connector[c2Num].locked = true" writeToVBCode)
(write-line "if item.connector[c1Num].group <> c1Grp then" writeToVBCode)
(write-line "connFind(c1Num,c1Grp,c1Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.connector[c2Num].group <> c2Grp then" writeToVBCode)
(write-line "connFind(c2Num,c2Grp,c2Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "REM ==== END S&D STEP DOWN & STAND S&D FUNCTION ====" writeToVBCode)
(write-line "elseif item.connector[1].value = \"SD 1 SD\" and item.connector[2].value = \"Stand S&D\" then" writeToVBCode)
(write-line "REM ==== BEGIN S&D STEP DOWN & STAND S&D FUNCTION ====" writeToVBCode)
(write-line "dim c1Num = 1" writeToVBCode)
(write-line "dim c1Name = \"Stand S&D\"" writeToVBCode)
(write-line "dim c1Grp = \"Duct - S&D\"" writeToVBCode)
(write-line "dim c2Num = 2" writeToVBCode)
(write-line "dim c2Name = \"SD 1 SD\"" writeToVBCode)
(write-line "dim c2Grp = \"Duct - S&D\"" writeToVBCode)
(write-line "function connFind(cnum,cgrp,cnam)" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "while item.connector[cnum].group <> cgrp" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "while item.connector[cnum].value <> cnam" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "item.connector[c1Num].value = c1Name" writeToVBCode)
(write-line "item.connector[c1Num].locked = true" writeToVBCode)
(write-line "item.connector[c2Num].value = c2Name" writeToVBCode)
(write-line "item.connector[c2Num].locked = true" writeToVBCode)
(write-line "if item.connector[c1Num].group <> c1Grp then" writeToVBCode)
(write-line "connFind(c1Num,c1Grp,c1Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.connector[c2Num].group <> c2Grp then" writeToVBCode)
(write-line "connFind(c2Num,c2Grp,c2Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "REM ==== END S&D STEP DOWN & STAND S&D FUNCTION ====" writeToVBCode)
(write-line "elseif item.connector[1].value = \"Stand S&D\" and item.connector[2].value = \"SD 1 SD\" then" writeToVBCode)
(write-line "REM ==== BEGIN S&D STEP DOWN & STAND S&D FUNCTION ====" writeToVBCode)
(write-line "dim c1Num = 1" writeToVBCode)
(write-line "dim c1Name = \"Stand S&D\"" writeToVBCode)
(write-line "dim c1Grp = \"Duct - S&D\"" writeToVBCode)
(write-line "dim c2Num = 2" writeToVBCode)
(write-line "dim c2Name = \"Stand S&D\"" writeToVBCode)
(write-line "dim c2Grp = \"Duct - S&D\"" writeToVBCode)
(write-line "function connFind(cnum,cgrp,cnam)" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "while item.connector[cnum].group <> cgrp" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "while item.connector[cnum].value <> cnam" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "item.connector[c1Num].value = c1Name" writeToVBCode)
(write-line "item.connector[c1Num].locked = true" writeToVBCode)
(write-line "item.connector[c2Num].value = c2Name" writeToVBCode)
(write-line "item.connector[c2Num].locked = true" writeToVBCode)
(write-line "if item.connector[c1Num].group <> c1Grp then" writeToVBCode)
(write-line "connFind(c1Num,c1Grp,c1Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.connector[c2Num].group <> c2Grp then" writeToVBCode)
(write-line "connFind(c2Num,c2Grp,c2Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "REM ==== END S&D STEP DOWN & STAND S&D FUNCTION ====" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
  (close writeToVBCode)
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (prompt "Cycled to the next appropriate common connection option...")(princ)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Insulation_Reset ()
;;;; IR = SETS/RESETS INSULATION PER SERVICE
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "dim supplyGauge = inputbox(\"Enter SUPPLY service insulation thickness:\")" writeToVBCode)
(write-line "dim returnGauge = inputbox(\"Enter RETURN service insulation thickness:\")" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if (wildcard(item.service, \"*SUPPLY*\") = 1) and item.insulation.status <> \"INSIDE\" and (wildcard(item.description, \"*CFSD*\") = 0) and ((wildcard(supplyGauge, \"F*\") = 0) and (wildcard(supplyGauge, \"N/A\") = 0)) then" writeToVBCode)
(write-line "item.ispeclock = false" writeToVBCode)
(write-line "item.insspec = \"None\"" writeToVBCode)
(write-line "item.ispeclock = true" writeToVBCode)
(write-line "item.insulation.status = \"OUTSIDE\"" writeToVBCode)
(write-line "item.insulation.material = \"HVAC Liner: Duct Wrap\"" writeToVBCode)
(write-line "item.insulation.gauge = supplyGauge" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service, \"*RETURN*\") = 1) and item.insulation.status <> \"INSIDE\" and (wildcard(item.description, \"*CFSD*\") = 0) and ((wildcard(returnGauge, \"F*\") = 0) and (wildcard(returnGauge, \"N/A\") = 0)) then" writeToVBCode)
(write-line "item.ispeclock = false" writeToVBCode)
(write-line "item.insspec = \"None\"" writeToVBCode)
(write-line "item.ispeclock = true" writeToVBCode)
(write-line "item.insulation.status = \"OUTSIDE\"" writeToVBCode)
(write-line "item.insulation.material = \"HVAC Liner: Duct Wrap\"" writeToVBCode)
(write-line "item.insulation.gauge = returnGauge" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service, \"*EXHAUST*\") = 1) or (wildcard(item.description, \"*CFSD*\") = 1) or ((wildcard(item.service, \"*OUTSIDE*\") = 1) and item.insulation.status <> \"INSIDE\") then" writeToVBCode)
(write-line "item.ispeclock = false" writeToVBCode)
(write-line "item.insspec = \"None\"" writeToVBCode)
(write-line "item.ispeclock = true" writeToVBCode)
(write-line "item.insulation.status = \"OFF\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
  (close writeToVBCode)
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (prompt "Insulation set/reset to default.")(princ)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Insulation_Specification_NotSet ()
;;;; IR = SETS/RESETS INSULATION PER SERVICE
(OUTSIDE_LOOP_VARIABLES nil)
(setq sset (ssget "_X" '((0 . "MAPS_SOLID"))));end setq
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "item.ispeclock = false" writeToVBCode)
(write-line "item.insspec = \"None\"" writeToVBCode)
(write-line "item.ispeclock = true" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
  (close writeToVBCode)
  (Executescript vbCode sset)
  (vl-file-delete vbCode)
  (terpri)(princ "Insulation specification set to \"Not Set\".")(princ)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Connection_Fix ()
;CF = Fixes connections based on dimension standards
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (while(< i limit)
    (INSIDE_LOOP_VARIABLES sset i)
    (if(= c1Spec "TDF")
      (setq newConnection1 "TDF ")
      (if(= c1Spec "Stand S&D")
        (setq newConnection1 "Stand S&D")
      (if(= c1Spec "Flat S&D")
        (setq newConnection1 "Flat S&D")
    ) ) )
      (if(= c1Spec "TDF")
        (setq connectionGroup1 "Duct - Flg Connector")
        (if(or(= c1Spec "Stand S&D")(= c1Spec "Flat S&D"))
          (setq connectionGroup1 "Duct - S&D")
      ) )
    (if(= c2Spec "TDF")
      (setq newConnection2 "TDF ")
      (if(= c2Spec "Stand S&D")
        (setq newConnection2 "Stand S&D")
      (if(= c2Spec "Flat S&D")
        (setq newConnection2 "Flat S&D")
    ) ) )
      (if(= c2Spec "TDF")
        (setq connectionGroup2 "Duct - Flg Connector")
        (if(or(= c2Spec "Stand S&D")(= c1Spec "Flat S&D"))
          (setq connectionGroup2 "Duct - S&D")
      ) )
(write-line "dim c1Num = 1" writeToVBCode)
(write-line (strcat "dim c1Name = \"" newConnection1 "\"") writeToVBCode)
(write-line (strcat "dim c1Grp = \"" connectionGroup1 "\"") writeToVBCode)
(write-line "dim c2Num = 2" writeToVBCode)
(write-line (strcat "dim c2Name = \"" newConnection2 "\"") writeToVBCode)
(write-line (strcat "dim c2Grp = \"" connectionGroup2 "\"") writeToVBCode)
(write-line "function connFind(cnum,cgrp,cnam)" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "while item.connector[cnum].group <> cgrp" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "while item.connector[cnum].value <> cnam" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "item.connector[c1Num].value = c1Name" writeToVBCode)
(write-line "item.connector[c1Num].locked = true" writeToVBCode)
(write-line "item.connector[c2Num].value = c2Name" writeToVBCode)
(write-line "item.connector[c2Num].locked = true" writeToVBCode)
(write-line "if item.connector[c1Num].group <> c1Grp then" writeToVBCode)
(write-line "connFind(c1Num,c1Grp,c1Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.connector[c2Num].group <> c2Grp then" writeToVBCode)
(write-line "connFind(c2Num,c2Grp,c2Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(if(and(= connectionGroup1 "Duct - Flg Connector")(= ItemCID "2"))
  (progn
    (write-line "if item.dim[6].value < 1.5 then" writeToVBCode)
    (write-line "item.dim[6].value = 1.5" writeToVBCode)
    (write-line "item.update()" writeToVBCode)
    (write-line "end if" writeToVBCode)
  );progn
);end if
(if(and(= connectionGroup2 "Duct - Flg Connector")(= ItemCID "2"))
  (progn
    (write-line "if item.dim[7].value < 1.5 then" writeToVBCode)
    (write-line "item.dim[7].value = 1.5" writeToVBCode)
    (write-line "item.update()" writeToVBCode)
    (write-line "end if" writeToVBCode)
  );progn
);end if
(write-line "item.update()" writeToVBCode)
    (close writeToVBCode)
    (executescript vbCode sset)
    (princ (strcat "Connections are now " newConnection1 " & " newConnection2))(terpri)
    (setq i (1+ i))
  );end while
  (command "pselect" sset "")
  (command "regen")
  
  ;(command "pselect" sset "")
  ;(vla-highlight vla 1)
  ;(setq thisdrawing(vla-get-activedocument(vlax-get-acad-object)))
  ;(vla-Regen thisdrawing acAllViewports)
  (princ)
(END_ROUTINE))
;|CF = Fixes connections based on dimension standards
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (while(< i limit)
    (INSIDE_LOOP_VARIABLES sset i)
(if(not(wcmatch itemCutType "Equipment"))
  (progn
    (if(= c1Spec "TDF")
      (setq newConnection1 "TDF ")
      (if(= c1Spec "Stand S&D")
        (setq newConnection1 "Stand S&D")
      (if(= c1Spec "Flat S&D")
        (setq newConnection1 "Flat S&D")
    ) ) )
      (if(= c1Spec "TDF")
        (setq connectionGroup1 "Duct - Flg Connector")
        (if(or(= c1Spec "Stand S&D")(= c1Spec "Flat S&D"))
          (setq connectionGroup1 "Duct - S&D")
      ) )
    (if(= c2Spec "TDF")
      (setq newConnection2 "TDF ")
      (if(= c2Spec "Stand S&D")
        (setq newConnection2 "Stand S&D")
      (if(= c2Spec "Flat S&D")
        (setq newConnection2 "Flat S&D")
    ) ) )
      (if(= c2Spec "TDF")
        (setq connectionGroup2 "Duct - Flg Connector")
        (if(or(= c2Spec "Stand S&D")(= c1Spec "Flat S&D"))
          (setq connectionGroup2 "Duct - S&D")
      ) )
(write-line "if item.connectors > 1 and (wildcard(item.connector[2].group,\"Round*\") = 1) and item.cuttype <> \"Equipment\" and item.CID <> 8 then" writeToVBCode)
(write-line "if item.CID = 40 then" writeToVBCode)
(write-line "dim c1Num = 1" writeToVBCode)
(write-line "dim c1Name = \"Raw\"" writeToVBCode)
(write-line "dim c1Grp = \"Round Duct\"" writeToVBCode)
(write-line "function connFind(cnum,cgrp,cnam)" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "while item.connector[cnum].group <> cgrp" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "while item.connector[cnum].value <> cnam" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "item.connector[c1Num].value = c1Name" writeToVBCode)
(write-line "item.connector[c1Num].locked = true" writeToVBCode)
(write-line "if item.connector[c1Num].group <> c1Grp then" writeToVBCode)
(write-line "connFind(c1Num,c1Grp,c1Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "dim c2Num = 2" writeToVBCode)
(write-line "dim c2Name = \"Raw\"" writeToVBCode)
(write-line "dim c2Grp = \"Round Duct\"" writeToVBCode)
(write-line "function connFind(cnum,cgrp,cnam)" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "while item.connector[cnum].group <> cgrp" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "while item.connector[cnum].value <> cnam" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "item.connector[c2Num].value = c1Name" writeToVBCode)
(write-line "item.connector[c2Num].locked = true" writeToVBCode)
(write-line "if item.connector[c2Num].group <> c1Grp then" writeToVBCode)
(write-line "connFind(c2Num,c2Grp,c2Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.connectors > 1 and (wildcard(item.connector[2].group,\"Round*\") = 0) and item.cuttype <> \"Equipment\" and item.CID <> 8 then" writeToVBCode)
(write-line "dim c1Num = 1" writeToVBCode)
(write-line (strcat "dim c1Name = \"" newConnection1 "\"") writeToVBCode)
(write-line (strcat "dim c1Grp = \"" connectionGroup1 "\"") writeToVBCode)
(write-line "dim c2Num = 2" writeToVBCode)
(write-line (strcat "dim c2Name = \"" newConnection2 "\"") writeToVBCode)
(write-line (strcat "dim c2Grp = \"" connectionGroup2 "\"") writeToVBCode)
(write-line "function connFind(cnum,cgrp,cnam)" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "while item.connector[cnum].group <> cgrp" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "while item.connector[cnum].value <> cnam" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "item.connector[c1Num].value = c1Name" writeToVBCode)
(write-line "item.connector[c1Num].locked = true" writeToVBCode)
(write-line "item.connector[c2Num].value = c2Name" writeToVBCode)
(write-line "item.connector[c2Num].locked = true" writeToVBCode)
(write-line "if item.connector[c1Num].group <> c1Grp then" writeToVBCode)
(write-line "connFind(c1Num,c1Grp,c1Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.connector[c2Num].group <> c2Grp then" writeToVBCode)
(write-line "connFind(c2Num,c2Grp,c2Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(if(and(= connectionGroup1 "Duct - Flg Connector")(= ItemCID "2"))
  (progn
    (write-line "if item.dim[6].value < 1.5 then" writeToVBCode)
    (write-line "item.dim[6].value = 1.5" writeToVBCode)
    (write-line "item.update()" writeToVBCode)
    (write-line "end if" writeToVBCode)
  );progn
);end if
(if(and(= connectionGroup2 "Duct - Flg Connector")(= ItemCID "2"))
  (progn
    (write-line "if item.dim[7].value < 1.5 then" writeToVBCode)
    (write-line "item.dim[7].value = 1.5" writeToVBCode)
    (write-line "item.update()" writeToVBCode)
    (write-line "end if" writeToVBCode)
  );progn
);end if
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
    (close writeToVBCode)
    (executescript vbCode ent)
    (setq writeToVBCode nil
          writeToVBCode (open vbCode "w"))
    ;(princ (strcat "Connections are now " newConnection1 " & " newConnection2))(terpri)
    );progn
  );end if
    (setq i (1+ i))
  );end while
  (command "pselect" sset "")
  (command "regen")
  ;(command "pselect" sset "")
  ;(vla-highlight vla 1)
  ;(setq thisdrawing(vla-get-activedocument(vlax-get-acad-object)))
  ;(vla-Regen thisdrawing acAllViewports)
  (princ)
(END_ROUTINE));end defun
|;
;**************************************************************************************************************************************************
(defun c:Damper_Cycle ()
;;;; DC = CYCLES DAMPER OPTIONS WHERE APPROPRIATE
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "rem~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" writeToVBCode)
(write-line "function turnOnTapSqRdDamper ()" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if (((item.CID = 345 or item.CID = 751 or item.CID = 51 or item.CID = 875) and item.dim[2].value <= 12) or (item.CID = 16 and item.dim[1].value <= 12) or (item.CID = 8 and item.dim[3].value <= 12)) then" writeToVBCode)
(write-line "if item.dampers = 1 then" writeToVBCode)
(write-line "if item.CID = 345 and item.damper[1].value = \"NONE\" then" writeToVBCode)
(write-line "if item.dim[9].locked = false then" writeToVBCode)
(write-line "item.dim[9].value = 6" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.damper[1].value = \"KS7L-l\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 16 and item.damper[1].value = \"NONE\" then" writeToVBCode)
(write-line "if item.dim[2].locked = false then" writeToVBCode)
(write-line "item.dim[2].value = 6" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.damper[1].value = \"KS7L-l\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 8 and item.damper[1].value = \"NONE\" then" writeToVBCode)
(write-line "if item.dim[8].locked = false then" writeToVBCode)
(write-line "item.dim[8].value = 6" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.damper[1].value = \"KS7L-l\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dampers = 2 then" writeToVBCode)
(write-line "if item.CID = 51 and item.damper[2].value = \"NONE\" then" writeToVBCode)
(write-line "if item.dim[2].value >= 4 and item.dim[2].value <= 6 then" writeToVBCode)
(write-line "if item.dim[3].locked = false then" writeToVBCode)
(write-line "item.dim[3].value = 6" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dim[2].value >= 7 and item.dim[2].value <= 10 then" writeToVBCode)
(write-line "if item.dim[3].locked = false then" writeToVBCode)
(write-line "item.dim[3].value = 10" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dim[2].value >= 11 and item.dim[2].value <= 12 then" writeToVBCode)
(write-line "if item.dim[3].locked = false then" writeToVBCode)
(write-line "item.dim[3].value = 12" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.damper[2].value = \"KS7L-l\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dampers = 3 then" writeToVBCode)
(write-line "if item.CID = 875 and item.damper[3].value = \"NONE\" then" writeToVBCode)
(write-line "if item.description = \"*saddle*\" then" writeToVBCode)
(write-line "if item.dim[3].locked = false then" writeToVBCode)
(write-line "item.dim[3].value = 6" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.description <> \"*saddle*\" then" writeToVBCode)
(write-line "if item.dim[3].locked = false then" writeToVBCode)
(write-line "item.dim[3].value = 15" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.damper[3].value = \"KS7L-l\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 751 and item.damper[3].value = \"NONE\" then" writeToVBCode)
(write-line "if item.dim[5].locked = false then" writeToVBCode)
(write-line "item.dim[5].value = 6" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.damper[3].value = \"KS7L-l\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif (((item.CID = 345 or item.CID = 751 or item.CID = 51 or item.CID = 875) and item.dim[2].value > 12) or (item.CID = 16 and item.dim[1].value > 12) or (item.CID = 8 and item.dim[3].value > 12)) then" writeToVBCode)
(write-line "if item.dampers = 1 then" writeToVBCode)
(write-line "if item.CID = 345 and item.damper[1].value = \"NONE\" then" writeToVBCode)
(write-line "if item.dim[9].locked = false then" writeToVBCode)
(write-line "item.dim[9].value = 6" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.damper[1].value = \"3/8\"+qt+\" ROD-L\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "elseif item.CID = 16 and item.damper[1].value = \"NONE\" then" writeToVBCode)
(write-line "if item.dim[2].locked = false then" writeToVBCode)
(write-line "item.dim[2].value = 6" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.damper[1].value = \"3/8\"+qt+\" ROD-L\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 8 and item.damper[1].value = \"NONE\" then" writeToVBCode)
(write-line "if item.dim[8].locked = false then" writeToVBCode)
(write-line "item.dim[8].value = 6" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.damper[1].value = \"3/8\"+qt+\" ROD-L\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dampers = 2 then" writeToVBCode)
(write-line "if item.CID = 51 and item.damper[2].value = \"NONE\" then" writeToVBCode)
(write-line "if item.dim[2].value > 12 and item.dim[2].value <= 14 then" writeToVBCode)
(write-line "if item.dim[3].locked = false then" writeToVBCode)
(write-line "item.dim[3].value = 12" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dim[2].value >= 16 and item.dim[2].value <= 18 then" writeToVBCode)
(write-line "if item.dim[3].locked = false then" writeToVBCode)
(write-line "item.dim[3].value = 15" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dim[2].value >= 20 then" writeToVBCode)
(write-line "if item.dim[3].locked = false then" writeToVBCode)
(write-line "item.dim[3].value = 20" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-L\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dampers = 3 then" writeToVBCode)
(write-line "if item.CID = 875 and item.damper[3].value = \"NONE\" then" writeToVBCode)
(write-line "if item.description = \"*saddle*\" then" writeToVBCode)
(write-line "if item.dim[3].locked = false then" writeToVBCode)
(write-line "item.dim[3].value = 6" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.description <> \"*saddle*\" then" writeToVBCode)
(write-line "if item.dim[3].locked = false then" writeToVBCode)
(write-line "item.dim[3].value = 15" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.damper[3].value = \"3/8\"+qt+\" ROD-L\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 751 and item.damper[3].value = \"NONE\" then" writeToVBCode)
(write-line "if item.dim[9].locked = false then" writeToVBCode)
(write-line "item.dim[5].value = 6" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.damper[3].value = \"3/8\"+qt+\" ROD-L\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "function turnOffTapSqRdDamper ()" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if item.dampers = 1 then" writeToVBCode)
(write-line "if item.CID = 345 and item.damper[1].value <> \"NONE\" then" writeToVBCode)
(write-line "if item.dim[9].locked = false then" writeToVBCode)
(write-line "item.dim[9].value = 0" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.damper[1].value = \"NONE\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 16 and item.damper[1].value <> \"NONE\" then" writeToVBCode)
(write-line "if item.dim[2].locked = false then" writeToVBCode)
(write-line "item.dim[2].value = 6" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.damper[1].value = \"NONE\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 8 and item.damper[1].value <> \"NONE\" then" writeToVBCode)
(write-line "if item.dim[8].locked = false then" writeToVBCode)
(write-line "item.dim[8].value = 3" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.damper[1].value = \"NONE\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dampers = 2 then" writeToVBCode)
(write-line "if item.CID = 51 and item.damper[2].value <> \"NONE\" then" writeToVBCode)
(write-line "if item.dim[3].locked = false then" writeToVBCode)
(write-line "item.dim[3].value = 3.75" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.damper[2].value = \"NONE\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dampers = 3 then" writeToVBCode)
(write-line "if item.CID = 875 and item.damper[3].value <> \"NONE\" then" writeToVBCode)
(write-line "if item.dim[3].locked = false then" writeToVBCode)
(write-line "item.dim[3].value = 6" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.damper[3].value = \"NONE\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 751 and item.damper[3].value <> \"NONE\" then" writeToVBCode)
(write-line "if item.dim[5].locked = false then" writeToVBCode)
(write-line "item.dim[5].value = 0" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.damper[3].value = \"NONE\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "rem~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" writeToVBCode)
(write-line "function turnOnD2 ()" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if (((item.CID = 53 or item.CID = 54 or item.CID = 345 or item.CID = 751 or item.CID = 51 or item.CID = 875) and item.dim[2].value <= 12) or ((item.CID = 807 or item.CID = 812 or item.CID = 16) and item.dim[1].value <= 12) or (item.CID = 8 and item.dim[3].value <= 12)) then" writeToVBCode)
(write-line "if item.CID = 53 or item.CID = 54 then" writeToVBCode)
(write-line "item.dim[5].value = 6" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 807 or item.CID = 812 then" writeToVBCode)
(write-line "item.dim[4].value = 6" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.damper[2].value = \"KS7L-l\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (((item.CID = 53 or item.CID = 54) and item.dim[2].value > 12) or ((item.CID = 807 or item.CID = 812) and item.dim[1].value > 12) or (item.CID = 8 and item.dim[3].value > 12)) then" writeToVBCode)
(write-line "if item.CID = 53 or item.CID = 54 then" writeToVBCode)
(write-line "item.dim[5].value = 6" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 807 or item.CID = 812 then" writeToVBCode)
(write-line "item.dim[4].value = 6" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-L\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "function turnOffD2 ()" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if item.CID = 53 or item.CID = 54 then" writeToVBCode)
(write-line "item.dim[5].value = 0" writeToVBCode)
(write-line "item.damper[2].value = \"NONE\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 807 or item.CID = 812 then" writeToVBCode)
(write-line "item.dim[4].value = 1" writeToVBCode)
(write-line "item.damper[2].value = \"NONE\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "rem~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" writeToVBCode)
(write-line "function turnOnD3 ()" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if (((item.CID = 53 or item.CID = 54) and item.dim[2].value <= 12) or ((item.CID = 807 or item.CID = 812) and item.dim[1].value <= 12)) then" writeToVBCode)
(write-line "if item.CID = 53 or item.CID = 54 then" writeToVBCode)
(write-line "item.damper[3].value = \"KS7L-l\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 807 or item.CID = 812 then" writeToVBCode)
(write-line "item.damper[3].value = \"KS7L-l\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif (((item.CID = 53 or item.CID = 54) and item.dim[2].value > 12) or ((item.CID = 807 or item.CID = 812) and item.dim[1].value > 12)) then" writeToVBCode)
(write-line "if item.CID = 53 or item.CID = 54 then" writeToVBCode)
(write-line "item.damper[3].value = \"3/8\"+qt+\" ROD-L\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 807 or item.CID = 812 then" writeToVBCode)
(write-line "item.damper[3].value = \"3/8\"+qt+\" ROD-L\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "function turnOffD3 ()" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if item.CID = 53 or item.CID = 54 or item.CID = 807 or item.CID = 812 then" writeToVBCode)
(write-line "item.damper[3].value = \"NONE\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "rem~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" writeToVBCode)
(write-line "function turnOnD4 ()" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if (((item.CID = 53 or item.CID = 54) and item.dim[2].value <= 12) or ((item.CID = 807 or item.CID = 812) and item.dim[1].value <= 12)) then" writeToVBCode)
(write-line "if item.CID = 53 or item.CID = 54 then" writeToVBCode)
(write-line "item.damper[4].value = \"KS7L-l\"" writeToVBCode)
(write-line "item.damper[4].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 807 or item.CID = 812 then" writeToVBCode)
(write-line "item.damper[4].value = \"KS7L-l\"" writeToVBCode)
(write-line "item.damper[4].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif (((item.CID = 53 or item.CID = 54) and item.dim[2].value > 12) or ((item.CID = 807 or item.CID = 812) and item.dim[1].value > 12)) then" writeToVBCode)
(write-line "if item.CID = 53 or item.CID = 54 then" writeToVBCode)
(write-line "item.damper[4].value = \"3/8\"+qt+\" ROD-L\"" writeToVBCode)
(write-line "item.damper[4].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 807 or item.CID = 812 then" writeToVBCode)
(write-line "item.damper[4].value = \"3/8\"+qt+\" ROD-L\"" writeToVBCode)
(write-line "item.damper[4].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "function turnOffD4 ()" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if item.CID = 53 or item.CID = 54 or item.CID = 807 or item.CID = 812 then" writeToVBCode)
(write-line "item.damper[4].value = \"NONE\"" writeToVBCode)
(write-line "item.damper[4].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "rem~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" writeToVBCode)
(write-line "function turnOnD2D3 ()" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if (((item.CID = 53 or item.CID = 54) and item.dim[2].value <= 12) or ((item.CID = 807 or item.CID = 812) and item.dim[1].value <= 12)) then" writeToVBCode)
(write-line "if item.CID = 53 or item.CID = 54 then" writeToVBCode)
(write-line "item.dim[5].value = 6" writeToVBCode)
(write-line "item.damper[2].value = \"KS7L-l\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "item.damper[3].value = \"KS7L-l\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 807 or item.CID = 812 then" writeToVBCode)
(write-line "item.dim[4].value = 6" writeToVBCode)
(write-line "item.damper[2].value = \"KS7L-l\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "item.damper[3].value = \"KS7L-l\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif (((item.CID = 53 or item.CID = 54) and item.dim[2].value > 12) or ((item.CID = 807 or item.CID = 812) and item.dim[1].value > 12)) then" writeToVBCode)
(write-line "if item.CID = 53 or item.CID = 54 then" writeToVBCode)
(write-line "item.dim[5].value = 6" writeToVBCode)
(write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-L\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "item.damper[3].value = \"3/8\"+qt+\" ROD-L\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 807 or item.CID = 812 then" writeToVBCode)
(write-line "item.dim[4].value = 6" writeToVBCode)
(write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-L\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "item.damper[3].value = \"3/8\"+qt+\" ROD-L\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "function turnOffD2D3 ()" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if item.CID = 53 or item.CID = 54 then" writeToVBCode)
(write-line "item.dim[5].value = 0" writeToVBCode)
(write-line "item.damper[2].value = \"NONE\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "item.damper[3].value = \"NONE\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 807 or item.CID = 812 then" writeToVBCode)
(write-line "item.dim[4].value = 1" writeToVBCode)
(write-line "item.damper[2].value = \"NONE\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "item.damper[3].value = \"NONE\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "rem~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" writeToVBCode)
(write-line "function turnOnD2D3D4 ()" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if (((item.CID = 53 or item.CID = 54) and item.dim[2].value <= 12) or ((item.CID = 807 or item.CID = 812) and item.dim[1].value <= 12)) then" writeToVBCode)
(write-line "if item.CID = 53 or item.CID = 54 then" writeToVBCode)
(write-line "item.dim[5].value = 6" writeToVBCode)
(write-line "item.damper[2].value = \"KS7L-l\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "item.damper[3].value = \"KS7L-l\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "item.damper[4].value = \"KS7L-l\"" writeToVBCode)
(write-line "item.damper[4].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 807 or item.CID = 812 then" writeToVBCode)
(write-line "item.dim[4].value = 6" writeToVBCode)
(write-line "item.damper[2].value = \"KS7L-l\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "item.damper[3].value = \"KS7L-l\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "item.damper[4].value = \"KS7L-l\"" writeToVBCode)
(write-line "item.damper[4].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif (((item.CID = 53 or item.CID = 54) and item.dim[2].value > 12) or ((item.CID = 807 or item.CID = 812) and item.dim[1].value > 12)) then" writeToVBCode)
(write-line "if item.CID = 53 or item.CID = 54 then" writeToVBCode)
(write-line "item.dim[5].value = 6" writeToVBCode)
(write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-L\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "item.damper[3].value = \"3/8\"+qt+\" ROD-L\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "item.damper[4].value = \"3/8\"+qt+\" ROD-L\"" writeToVBCode)
(write-line "item.damper[4].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 807 or item.CID = 812 then" writeToVBCode)
(write-line "item.dim[4].value = 6" writeToVBCode)
(write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-L\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "item.damper[3].value = \"3/8\"+qt+\" ROD-L\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "item.damper[4].value = \"3/8\"+qt+\" ROD-L\"" writeToVBCode)
(write-line "item.damper[4].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "function turnOffD2D3D4 ()" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if item.CID = 53 or item.CID = 54 then" writeToVBCode)
(write-line "item.dim[5].value = 0" writeToVBCode)
(write-line "item.damper[2].value = \"NONE\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "item.damper[3].value = \"NONE\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "item.damper[4].value = \"NONE\"" writeToVBCode)
(write-line "item.damper[4].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 807 or item.CID = 812 then" writeToVBCode)
(write-line "item.dim[4].value = 1" writeToVBCode)
(write-line "item.damper[2].value = \"NONE\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "item.damper[3].value = \"NONE\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "item.damper[4].value = \"NONE\"" writeToVBCode)
(write-line "item.damper[4].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "rem~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" writeToVBCode)
(write-line "if item.CID = 51 or item.CID = 751 or item.CID = 875 or item.CID = 345 or item.CID = 16 or item.CID = 8 then" writeToVBCode)
(write-line "if item.dampers = 1 then" writeToVBCode)
(write-line "if ((item.CID = 345 or item.CID = 16 or item.CID = 8) and item.damper[1].value = \"NONE\") then" writeToVBCode)
(write-line "turnOnTapSqRdDamper ()" writeToVBCode)
(write-line "elseif ((item.CID = 345 or item.CID = 16 or item.CID = 8) and item.damper[1].value <> \"NONE\") then" writeToVBCode)
(write-line "turnOffTapSqRdDamper ()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dampers = 2 then" writeToVBCode)
(write-line "if item.CID = 51 and item.damper[2].value = \"NONE\" then" writeToVBCode)
(write-line "turnOnTapSqRdDamper ()" writeToVBCode)
(write-line "elseif item.CID = 51 and item.damper[2].value <> \"NONE\" then" writeToVBCode)
(write-line "turnOffTapSqRdDamper ()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dampers = 3 then" writeToVBCode)
(write-line "if ((item.CID = 751 or item.CID = 875) and item.damper[3].value = \"NONE\") then" writeToVBCode)
(write-line "turnOnTapSqRdDamper ()" writeToVBCode)
(write-line "elseif ((item.CID = 751 or item.CID = 875) and item.damper[3].value <> \"NONE\") then" writeToVBCode)
(write-line "turnOffTapSqRdDamper ()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.CID <> 51 and item.CID <> 751 and item.CID <> 875 and item.CID <> 345 and item.CID <> 16 and item.CID <> 8 then" writeToVBCode)
(write-line "if item.dampers = 1 then" writeToVBCode)
(write-line "if item.damper[1].value = \"NONE\" then" writeToVBCode)
(write-line "turnOnD1 ()" writeToVBCode)
(write-line "elseif item.damper[1].value <> \"NONE\" then" writeToVBCode)
(write-line "turnOffD1 ()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dampers = 2 then" writeToVBCode)
(write-line "if item.damper[2].value = \"NONE\" then" writeToVBCode)
(write-line "turnOnD2 ()" writeToVBCode)
(write-line "elseif item.damper[2].value <> \"NONE\" then" writeToVBCode)
(write-line "turnOffD2 ()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dampers = 3 then" writeToVBCode)
(write-line "if item.damper[2].value = \"NONE\" and item.damper[3].value = \"NONE\" then" writeToVBCode)
(write-line "turnOnD3 ()" writeToVBCode)
(write-line "elseif item.damper[2].value = \"NONE\" and item.damper[3].value <> \"NONE\" then" writeToVBCode)
(write-line "turnOffD3 ()" writeToVBCode)
(write-line "turnOnD2 ()" writeToVBCode)
(write-line "elseif item.damper[2].value <> \"NONE\" and item.damper[3].value = \"NONE\" then" writeToVBCode)
(write-line "turnOnD2D3 ()" writeToVBCode)
(write-line "elseif item.damper[2].value <> \"NONE\" and item.damper[3].value <> \"NONE\" then" writeToVBCode)
(write-line "turnOffD2D3 ()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dampers = 4 then" writeToVBCode)
(write-line "if item.damper[2].value = \"NONE\" and item.damper[3].value = \"NONE\" and item.damper[4].value = \"NONE\" then" writeToVBCode)
(write-line "turnOnD3 ()" writeToVBCode)
(write-line "elseif item.damper[2].value = \"NONE\" and item.damper[3].value <> \"NONE\" and item.damper[4].value = \"NONE\" then" writeToVBCode)
(write-line "turnOffD3 ()" writeToVBCode)
(write-line "turnOnD4 ()" writeToVBCode)
(write-line "elseif item.damper[2].value = \"NONE\" and item.damper[3].value = \"NONE\" and item.damper[4].value <> \"NONE\" then" writeToVBCode)
(write-line "turnOffD4 ()" writeToVBCode)
(write-line "turnOnD2 ()" writeToVBCode)
(write-line "elseif item.damper[2].value <> \"NONE\" and item.damper[3].value = \"NONE\" and item.damper[4].value = \"NONE\" then" writeToVBCode)
(write-line "turnOnD3 ()" writeToVBCode)
(write-line "elseif item.damper[2].value <> \"NONE\" and item.damper[3].value <> \"NONE\" and item.damper[4].value = \"NONE\" then" writeToVBCode)
(write-line "turnOffD3 ()" writeToVBCode)
(write-line "turnOnD4 ()" writeToVBCode)
(write-line "elseif item.damper[2].value <> \"NONE\" and item.damper[3].value = \"NONE\" and item.damper[4].value <> \"NONE\" then" writeToVBCode)
(write-line "turnOffD2 ()" writeToVBCode)
(write-line "turnOnD3 ()" writeToVBCode)
(write-line "elseif item.damper[2].value = \"NONE\" and item.damper[3].value <> \"NONE\" and item.damper[4].value <> \"NONE\" then" writeToVBCode)
(write-line "turnOnD2 ()" writeToVBCode)
(write-line "elseif item.damper[2].value <> \"NONE\" and item.damper[3].value <> \"NONE\" and item.damper[4].value <> \"NONE\" then" writeToVBCode)
(write-line "turnOffD2D3D4 ()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
  (close writeToVBCode)
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (prompt "Cycling through volume damper locations...")(princ)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Hanger_Stretch_to_Section ()
  ;;;; HS = HANGER STRETCH
(setq hangers (ssget '((0 . "MAPS_SOLID"))))
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "select item.CID" writeToVBCode)
(write-line "case 838,902" writeToVBCode)
(write-line "rem Floor Supports =====================================================================================================" writeToVBCode)
(write-line "if (wildcard(item.filename,\"double rectangular floor mount\") = 1) and (wildcard(item.option[1].value, \"Double Profile Bearer 2\") = 1) then" writeToVBCode)
(write-line "dim depth = item.dim[2].value" writeToVBCode)
(write-line "dim bottomElevation = item.endlocation(1,\"btm\")" writeToVBCode)
(write-line "dim floorLevel = item.level(\"floor\")" writeToVBCode)
(write-line "dim legLength = ((bottomElevation-floorLevel)+depth)" writeToVBCode)
(write-line "item.option[21].value = 0.5" writeToVBCode)
(write-line "item.dim[6].value = (0 - legLength)" writeToVBCode)
(write-line "item.dim[7].value = (0 - depth)" writeToVBCode)
(write-line "elseif (wildcard(item.filename,\"single rectangular floor mount\") = 1) and (wildcard(item.option[1].value, \"Profiled Bearer\") = 1) then" writeToVBCode)
(write-line "dim depth = item.dim[2].value" writeToVBCode)
(write-line "dim bottomElevation = item.endlocation(1,\"btm\")" writeToVBCode)
(write-line "dim floorLevel = item.level(\"floor\")" writeToVBCode)
(write-line "dim legLength = ((bottomElevation-floorLevel)+depth)" writeToVBCode)
(write-line "item.option[21].value = 0 - 0.5" writeToVBCode)
(write-line "item.dim[6].value = (0 - legLength)" writeToVBCode)
(write-line "item.dim[7].value = (0 - 6)" writeToVBCode)
(write-line "elseif (wildcard(item.filename,\"*rectangular floor mount\") = 1) and (wildcard(item.option[1].value, \"Flat Strap Hanger\") = 1) then" writeToVBCode)
(write-line "dim depth = item.dim[2].value" writeToVBCode)
(write-line "dim bottomElevation = item.endlocation(1,\"btm\")" writeToVBCode)
(write-line "dim floorLevel = item.level(\"floor\")" writeToVBCode)
(write-line "dim legLength = (bottomElevation-floorLevel)" writeToVBCode)
(write-line "item.option[12].value = 0.5" writeToVBCode)
(write-line "item.dim[3].value = (0 - legLength)" writeToVBCode)
(write-line "elseif (wildcard(item.filename,\"*round floor mount\") = 1) then" writeToVBCode)
(write-line "dim bottomElevation = item.endlocation(1,\"btm\") + (item.dim[1].value / 2)" writeToVBCode)
(write-line "dim floorLevel = item.level(\"floor\")" writeToVBCode)
(write-line "dim legLength = (bottomElevation-floorLevel)" writeToVBCode)
(write-line "item.dim[4].value = 0" writeToVBCode)
(write-line "item.dim[4].value = (0-1)" writeToVBCode)
(write-line "item.dim[3].value = 0" writeToVBCode)
(write-line "item.dim[3].value = ((item.dim[3].value - (item.dim[1].value / 2)) - legLength)" writeToVBCode)
(write-line "elseif (wildcard(item.filename,\"*Floor Mount Angle\") = 1) then" writeToVBCode)
(write-line "dim bottomElevation = item.endlocation(1,\"btm\") + (item.dim[1].value / 2)" writeToVBCode)
(write-line "dim floorLevel = item.level(\"floor\")" writeToVBCode)
(write-line "dim legLength = (bottomElevation-floorLevel)" writeToVBCode)
(write-line "item.dim[4].value = 0" writeToVBCode)
(write-line "item.dim[4].value = (0-1)" writeToVBCode)
(write-line "item.dim[3].value = 0" writeToVBCode)
(write-line "item.dim[3].value = ((item.dim[3].value - (item.dim[1].value / 2)) - legLength)" writeToVBCode)
(write-line (strcat "elseif (wildcard(item.filename,\"Floor Supports Post\") = 1) "
                        "or (wildcard(item.filename,\"Floor Supports Post Double\") = 1) "
                        "or (wildcard(item.filename,\"Floor Supports Post Round\") = 1) "
                        "or (wildcard(item.filename,\"Floor Support Post Single\") = 1) "
                        "or (wildcard(item.filename,\"Floor Supports Angle\") = 1) "
                        "or (wildcard(item.filename,\"Floor Supports Angle Double\") = 1) "
                        "or (wildcard(item.filename,\"Floor Supports Angle Round\") = 1) "
                        "or (wildcard(item.filename,\"Floor Support Angle Single\") = 1) then") writeToVBCode)
(write-line "dim bottomElevation = item.endlocation(1,\"btm\")" writeToVBCode)
(write-line "dim floorLevel = item.level(\"floor\")" writeToVBCode)
(write-line "dim legLength = (bottomElevation-floorLevel)" writeToVBCode)
(write-line "item.dim[\"Distance to Floor [#159]\"].value = legLength" writeToVBCode)
(write-line (strcat "elseif (wildcard(item.filename,\"Floor Support Post\") = 1) "
                        "or (wildcard(item.filename,\"Floor Support Post Double\") = 1) "
                        "or (wildcard(item.filename,\"Floor Support Post Round\") = 1) "
                        "or (wildcard(item.filename,\"Floor Support Angle\") = 1) "
                        "or (wildcard(item.filename,\"Floor Support Angle Double\") = 1) "
                        "or (wildcard(item.filename,\"Floor Support Angle Round\") = 1) then") writeToVBCode)
(write-line "dim bottomElevation = item.endlocation(1,\"btm\")" writeToVBCode)
(write-line "dim floorLevel = item.level(\"floor\")" writeToVBCode)
(write-line "dim legLength = (bottomElevation-floorLevel)" writeToVBCode)
(write-line "item.dim[\"Distance to Floor[#159]\"].value = legLength" writeToVBCode)
(write-line "rem Hanger Support ====================================================================================================" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*trimble*\") = 0) and (wildcard(item.servicetype,\"*Hanger\") = 1) and (wildcard(item.filename,\"*Wrap Round\") = 1) then" writeToVBCode)
(write-line "dim topElevation = item.endlocation(1,\"btm\") + item.dim[1].value" writeToVBCode)
(write-line "dim soffitLevel = item.level(\"soffit\")" writeToVBCode)
(write-line "dim hangLength = (soffitLevel-topElevation)" writeToVBCode)
(write-line "item.dim[2].value = hangLength" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*trimble*\") = 0) and (wildcard(item.servicetype,\"*Hanger\") = 1) and (wildcard(item.filename,\"*Strap Single\") = 1) then" writeToVBCode)
(write-line "dim topElevation = item.endlocation(1,\"btm\") + item.dim[2].value" writeToVBCode)
(write-line "dim soffitLevel = item.level(\"soffit\")" writeToVBCode)
(write-line "dim hangLength = (soffitLevel-topElevation)" writeToVBCode)
(write-line "item.dim[3].value = hangLength" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*trimble*\") = 0) and (wildcard(item.servicetype,\"*Hanger\") = 1) and (wildcard(item.filename,\"*Flat Strap (Round)\") = 1) then" writeToVBCode)
(write-line "dim topElevation = item.endlocation(1,\"btm\") + item.dim[1].value" writeToVBCode)
(write-line "dim soffitLevel = item.level(\"soffit\")" writeToVBCode)
(write-line "dim hangLength = (soffitLevel-topElevation)" writeToVBCode)
(write-line "item.dim[2].value = hangLength" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*trimble*\") = 0) and (wildcard(item.servicetype,\"*Hanger\") = 1) and (wildcard(item.filename,\"*Flat Strap (Rectangle)\") = 1) then" writeToVBCode)
(write-line "dim topElevation = item.endlocation(1,\"top\")" writeToVBCode)
(write-line "dim soffitLevel = item.level(\"soffit\")" writeToVBCode)
(write-line "dim hangLength = (soffitLevel-topElevation)" writeToVBCode)
(write-line "item.dim[3].value = hangLength" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*trimble*\") = 0) and (wildcard(item.servicetype,\"*Hanger\") = 1) and (wildcard(item.filename,\"*rectangular bearer\") = 1) then" writeToVBCode)
(write-line "dim topElevation = item.endlocation(1,\"top\")" writeToVBCode)
(write-line "dim soffitLevel = item.level(\"soffit\")" writeToVBCode)
(write-line "dim hangLength = (soffitLevel-topElevation)" writeToVBCode)
(write-line "item.dim[6].value = hangLength" writeToVBCode)
(write-line "rem Seismic Included Here =============================================================================================" writeToVBCode)
(write-line "elseif (wildcard(item.servicetype,\"*Seismic*\") = 1) and (wildcard(item.filename,\"Double Rectangular Bearer\") = 1) then" writeToVBCode)
(write-line "dim topElevation = item.endlocation(1,\"top\")" writeToVBCode)
(write-line "dim soffitLevel = item.level(\"soffit\")" writeToVBCode)
(write-line "dim hangLength = (soffitLevel-topElevation)" writeToVBCode)
(write-line "item.dim[\"Distance To Deck\"].value = hangLength" writeToVBCode)
(write-line "elseif (wildcard(item.servicetype,\"*Seismic*\") = 1) and (wildcard(item.filename,\"Seismic Rectangular\") = 1) then" writeToVBCode)
(write-line "dim topElevation = item.endlocation(1,\"top\")" writeToVBCode)
(write-line "dim soffitLevel = item.level(\"soffit\")" writeToVBCode)
(write-line "dim hangLength = (soffitLevel-topElevation)" writeToVBCode)
(write-line "item.dim[\"Distance To Deck\"].value = hangLength" writeToVBCode)
(write-line "elseif (wildcard(item.servicetype,\"*Seismic*\") = 1) and (wildcard(item.filename,\"Seismic\") = 1) then" writeToVBCode)
(write-line "dim topElevation = item.endlocation(1,\"top\")" writeToVBCode)
(write-line "dim soffitLevel = item.level(\"soffit\")" writeToVBCode)
(write-line "dim hangLength = (soffitLevel-topElevation)" writeToVBCode)
(write-line "item.dim[\"Distance to Anchor Z Axis [INDEX#15]\"].value = hangLength" writeToVBCode)
(write-line "elseif (wildcard(item.servicetype,\"*Seismic*\") = 1) and (wildcard(item.filename,\"Round Duct or Pipe Seismic\") = 1) then" writeToVBCode)
(write-line "dim topElevation = item.endlocation(1,\"top\")" writeToVBCode)
(write-line "dim soffitLevel = item.level(\"soffit\")" writeToVBCode)
(write-line "dim hangLength = (soffitLevel-topElevation)" writeToVBCode)
(write-line "item.dim[\"Distance to Anchor Z Axis [#15]\"].value = hangLength" writeToVBCode)
(write-line "elseif (wildcard(item.servicetype,\"*Seismic*\") = 1) and (wildcard(item.filename,\"Equipment Seismic\") = 1) then" writeToVBCode)
(write-line "dim topElevation = item.endlocation(1,\"top\")" writeToVBCode)
(write-line "dim soffitLevel = item.level(\"soffit\")" writeToVBCode)
(write-line "dim hangLength = (soffitLevel-topElevation)" writeToVBCode)
(write-line "item.dim[\"[EDIT] VERTICAL DISTANCE [#15]\"].value = hangLength" writeToVBCode)
(write-line "elseif (wildcard(item.servicetype,\"*Seismic*\") = 1) and (wildcard(item.filename,\"Rectangular Duct Seismic\") = 1) then" writeToVBCode)
(write-line "dim topElevation = item.endlocation(1,\"top\")" writeToVBCode)
(write-line "dim soffitLevel = item.level(\"soffit\")" writeToVBCode)
(write-line "dim hangLength = (soffitLevel-topElevation)" writeToVBCode)
(write-line "item.dim[\"[EDIT] VERTICAL DISTANCE [#15]\"].value = hangLength" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end select" writeToVBCode)
  (close writeToVBCode)
  (command "pselect" hangers "")
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (prompt "All hangers have been stretched to their respective section heights.")(princ)
  
  (princ)
  (END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Insulation_Specification_Cycle ()
  ;;;; ISC = CYCLES INSULATION SPECIFICATION OPTIONS WHERE APPROPRIATE
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "task.beginprogress(task.selection.count)" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "REM ROUND EVALUATION" writeToVBCode)
(write-line "if item.insspec = \"INSULATION: Liner x 0.50\" then" writeToVBCode)
(write-line "item.insspec = \"INSULATION: Liner x 1.00\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.insspec = \"INSULATION: Liner x 1.00\" then" writeToVBCode)
(write-line "item.insspec = \"INSULATION: Liner x 1.50\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.insspec = \"INSULATION: Liner x 1.50\" then" writeToVBCode)
(write-line "item.insspec = \"INSULATION: Liner x 2.00\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.insspec = \"INSULATION: Liner x 2.00\" then" writeToVBCode)
(write-line "item.insspec = \"INSULATION: Duct Wrap x 1.00\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.insspec = \"INSULATION: Duct Wrap x 1.00\" then" writeToVBCode)
(write-line "item.insspec = \"INSULATION: Duct Wrap x 1.50\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.insspec = \"INSULATION: Duct Wrap x 1.50\" then" writeToVBCode)
(write-line "item.insspec = \"INSULATION: Duct Wrap x 2.00\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.insspec = \"INSULATION: Duct Wrap x 2.00\" then" writeToVBCode)
(write-line "item.insspec = \"INSULATION: Duct Wrap x 3.00\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.insspec = \"INSULATION: Duct Wrap x 3.00\" then" writeToVBCode)
(write-line "item.insspec = \"INSULATION: Duct Wrap x 4.00\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.insspec = \"INSULATION: Duct Wrap x 4.00\" then" writeToVBCode)
(write-line "item.insspec = \"INSULATION: Fire Wrap x 2.00\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.insspec = \"INSULATION: Fire Wrap x 2.00\" then" writeToVBCode)
(write-line "item.insspec = \"INSULATION: Fire Wrap x 3.00\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.insspec = \"INSULATION: Fire Wrap x 3.00\" then" writeToVBCode)
(write-line "item.insspec = \"INSULATION: Fire Wrap x 4.00\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.insspec = \"INSULATION: Fire Wrap x 4.00\" then" writeToVBCode)
(write-line "item.insspec = \"INSULATION: Fire Wrap x 5.00\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.insspec = \"INSULATION: Fire Wrap x 5.00\" then" writeToVBCode)
(write-line "item.insspec = \"INSULATION: Fire Wrap x 6.00\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.insspec = \"INSULATION: Fire Wrap x 6.00\" then" writeToVBCode)
(write-line "item.insspec = \"INSULATION: Fire Wrap x 7.00\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.insspec = \"INSULATION: Fire Wrap x 7.00\" then" writeToVBCode)
(write-line "item.insspec = \"INSULATION: Fire Wrap x 8.00\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.insspec = \"INSULATION: Fire Wrap x 8.00\" then" writeToVBCode)
(write-line "item.insspec = \"INSULATION: Fire Wrap x 9.00\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.insspec = \"INSULATION: Fire Wrap x 9.00\" then" writeToVBCode)
(write-line "item.insspec = \"INSULATION: Fire Wrap x 10.00\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.insspec = \"INSULATION: Fire Wrap x 10.00\" then" writeToVBCode)
(write-line "item.insspec = \"INSULATION: Double Wall x 0.50\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.insspec = \"INSULATION: Double Wall x 0.50\" then" writeToVBCode)
(write-line "item.insspec = \"INSULATION: Double Wall x 1.00\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.insspec = \"INSULATION: Double Wall x 1.00\" then" writeToVBCode)
(write-line "item.insspec = \"INSULATION: Double Wall x 1.50\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.insspec = \"INSULATION: Double Wall x 1.50\" then" writeToVBCode)
(write-line "item.insspec = \"INSULATION: Double Wall x 2.00\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.insspec = \"INSULATION: Double Wall x 2.00\" then" writeToVBCode)
(write-line "item.insspec = \"Off\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.insspec = \"Off\" then" writeToVBCode)
(write-line "item.insspec = \"None\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.insspec = \"Not Set\" then" writeToVBCode)
(write-line "item.insspec = \"INSULATION: Liner x 0.50\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "dim j = 1" writeToVBCode)
(write-line "while j < 100" writeToVBCode)
(write-line "task.message = \"You have just switched to:                            \" + item.insspec" writeToVBCode)
(write-line "j = j + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
  (close writeToVBCode)
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (prompt "Cycled to the next insulation specification option.")(princ)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Insulation_Cycle ()
;;;; IC = CYCLES INSULATION OPTIONS WHERE APPROPRIATE
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "" writeToVBCode)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "item.ispeclock = false" writeToVBCode)
(write-line "item.insspec = \"None\"" writeToVBCode)
(write-line "item.ispeclock = true" writeToVBCode)
(write-line "if item.CID <> 838 then" writeToVBCode)
(write-line "if (wildcard(item.service,\"*exhaust*\") = 1) then" writeToVBCode)
(write-line "item.insulation.status = \"OFF\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*exhaust*\") = 0) then" writeToVBCode)
(write-line "if item.insulation.status = \"OFF\" then" writeToVBCode)
(write-line "item.insulation.status = \"OUTSIDE\"" writeToVBCode)
(write-line "item.insulation.material = \"HVAC Liner: Duct Wrap\"" writeToVBCode)
(write-line "item.insulation.gauge = 1.5" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.insulation.status = \"OUTSIDE\" then" writeToVBCode)
(write-line "item.insulation.status = \"INSIDE\"" writeToVBCode)
(write-line "item.insulation.material = \"HVAC Liner: 1-1/2 LB\"" writeToVBCode)
(write-line "item.insulation.gauge = 1" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (item.insulation.status = \"INSIDE\") then" writeToVBCode)
(write-line "item.insulation.status = \"OFF\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
  (close writeToVBCode)
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (prompt "Cycled to the next insulation option.")(princ)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Insulation_Gauge_Cycle ()
;;;; IG = CYCLES INSULATION GAUGE WHERE APPROPRIATE
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if (wildcard(item.insulation.material,\"Duct Wrap\")=1) then" writeToVBCode)
(write-line "if (item.insulation.gauge = 1.5) then" writeToVBCode)
(write-line "item.insulation.gauge = 2" writeToVBCode)
(write-line "elseif (item.insulation.gauge = 2) then" writeToVBCode)
(write-line "item.insulation.gauge = 3" writeToVBCode)
(write-line "elseif (item.insulation.gauge = 3) then" writeToVBCode)
(write-line "item.insulation.gauge = 4" writeToVBCode)
(write-line "elseif (item.insulation.gauge = 4) then" writeToVBCode)
(write-line "item.insulation.gauge = 1" writeToVBCode)
(write-line "elseif (item.insulation.gauge = 1) then" writeToVBCode)
(write-line "item.insulation.gauge = 1.5" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif (wildcard(item.insulation.material,\"1-1/2 LB\")=1) and (item.doublewall = false) then" writeToVBCode)
(write-line "if (item.insulation.gauge = 1) then" writeToVBCode)
(write-line "item.insulation.gauge = 1.5" writeToVBCode)
(write-line "elseif (item.insulation.gauge = 1.5) then" writeToVBCode)
(write-line "item.insulation.gauge = 2" writeToVBCode)
(write-line "elseif (item.insulation.gauge = 2) then" writeToVBCode)
(write-line "item.insulation.gauge = 0.5" writeToVBCode)
(write-line "elseif (item.insulation.gauge = 0.5) then" writeToVBCode)
(write-line "item.insulation.gauge = 1" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif (wildcard(item.insulation.material,\"Fire Barrier Duct Wrap\")=1) then" writeToVBCode)
(write-line "if (item.insulation.gauge = 2) then" writeToVBCode)
(write-line "item.insulation.gauge = 3" writeToVBCode)
(write-line "elseif (item.insulation.gauge = 3) then" writeToVBCode)
(write-line "item.insulation.gauge = 4" writeToVBCode)
(write-line "elseif (item.insulation.gauge = 4) then" writeToVBCode)
(write-line "item.insulation.gauge = 5" writeToVBCode)
(write-line "elseif (item.insulation.gauge = 5) then" writeToVBCode)
(write-line "item.insulation.gauge = 6" writeToVBCode)
(write-line "elseif (item.insulation.gauge = 6) then" writeToVBCode)
(write-line "item.insulation.gauge = 7" writeToVBCode)
(write-line "elseif (item.insulation.gauge = 7) then" writeToVBCode)
(write-line "item.insulation.gauge = 8" writeToVBCode)
(write-line "elseif (item.insulation.gauge = 8) then" writeToVBCode)
(write-line "item.insulation.gauge = 9" writeToVBCode)
(write-line "elseif (item.insulation.gauge = 9) then" writeToVBCode)
(write-line "item.insulation.gauge = 10" writeToVBCode)
(write-line "elseif (item.insulation.gauge = 10) then" writeToVBCode)
(write-line "item.insulation.gauge = 2" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.doublewall = true then" writeToVBCode)
(write-line "if (item.insulation.gauge = 1) then" writeToVBCode)
(write-line "item.insulation.gauge = 1.5" writeToVBCode)
(write-line "elseif (item.insulation.gauge = 1.5) then" writeToVBCode)
(write-line "item.insulation.gauge = 2" writeToVBCode)
(write-line "elseif (item.insulation.gauge = 2) then" writeToVBCode)
(write-line "item.insulation.gauge = 0.5" writeToVBCode)
(write-line "elseif (item.insulation.gauge = 0.5) then" writeToVBCode)
(write-line "item.insulation.gauge = 1" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
  (close writeToVBCode)
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (prompt "Cycled insulation gauge")(princ)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
;;;; TEXT LAYER - SWITCHES LAYER TO TEXT
(defun c:Make_Text_Layer_Current ()
  (COMMAND "LAYER" "SET" "M-AMC-TEXT" "")
  (prompt "Current Layer is now TEXT")(princ)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
;;;; FLEXFILL
(defun c:FLEX_FILL ()
  (command "FLEXFILL")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
;;;; TO TURN ON SIZE & ELEVATION AT THE SAME TIME WITH ONE BUTTON
(defun c:Size_&_Elevation_Cycle ()
  (setq sset (ssget)
	i 0);end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (while (< i Limit)
  (INSIDE_LOOP_VARIABLES sset i)
   (if(or(and(= SizeToggle "On")(= ElevationToggle "Off"))(and(= SizeToggle "Off")(= ElevationToggle "On")))
     (settext SSentity 6 "off")
     (if(and(not(= SizeToggle "On"))(not(= ElevationToggle "On")))
       (settext SSentity 6 "on")
       (if(and(= SizeToggle "On")(= ElevationToggle "On"))
         (settext SSentity 4 "Off")
   ) ) );end if
   (setq i (1+ i))
  );end while
  (command "pselect" sset "")
  (command "regen")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Text_Toggle_Number ()
  (setq sset (ssget '((0 . "MAPS_SOLID")))
	i 0);end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (while (< i Limit)
  (INSIDE_LOOP_VARIABLES sset i)
   (if(= NumberToggle "On")
     (settext SSentity 1 "off")
     (if(not(= NumberToggle "On"))
       (settext SSentity 1 "on")
   ) );end if
   (setq i (1+ i))
  );end while
  (command "pselect" sset "")
  (command "regen")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Text_Toggle_Size ()
  (setq sset (ssget '((0 . "MAPS_SOLID")))
	i 0);end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (while (< i Limit)
  (INSIDE_LOOP_VARIABLES sset i)
   (if(= SizeToggle "On")
     (settext SSentity 2 "off")
     (if(not(= SizeToggle "On"))
       (settext SSentity 2 "on")
   ) );end if
   (setq i (1+ i))
  );end while
  (command "pselect" sset "")
  (command "regen")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Text_Toggle_Elevation ()
  (setq sset (ssget '((0 . "MAPS_SOLID")))
	i 0);end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (while (< i Limit)
  (INSIDE_LOOP_VARIABLES sset i)
   (if(= ElevationToggle "On")
     (settext SSentity 4 "off")
     (if(not(= ElevationToggle "On"))
       (settext SSentity 4 "on")
   ) );end if
   (setq i (1+ i))
  );end while
  (command "pselect" sset "")
  (command "regen")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Text_Toggle_Alias ()
  (setq sset (ssget '((0 . "MAPS_SOLID")))
	i 0);end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (while (< i Limit)
  (INSIDE_LOOP_VARIABLES sset i)
   (if(= AliasToggle "On")
     (settext SSentity 8 "off")
     (if(not(= AliasToggle "On"))
       (settext SSentity 8 "on")
   ) );end if
   (setq i (1+ i))
  );end while
  (command "pselect" sset "")
  (command "regen")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Text_Toggle_Offset ()
  (setq sset (ssget '((0 . "MAPS_SOLID")))
	i 0);end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (while (< i Limit)
  (INSIDE_LOOP_VARIABLES sset i)
   (if(= OffsetToggle "On")
     (settext SSentity 16 "off")
     (if(not(= OffsetToggle "On"))
       (settext SSentity 16 "on")
   ) );end if
   (setq i (1+ i))
  );end while
  (command "pselect" sset "")
  (command "regen")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Text_Toggle_Length ()
  (setq sset (ssget '((0 . "MAPS_SOLID")))
	i 0);end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (while (< i Limit)
  (INSIDE_LOOP_VARIABLES sset i)
   (if(= LengthToggle "On")
     (settext SSentity 32 "off")
     (if(not(= LengthToggle "On"))
       (settext SSentity 32 "on")
   ) );end if
   (setq i (1+ i))
  );end while
  (command "pselect" sset "")
  (command "regen")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Text_Numbers_On ()
  (settext (ssget (mapfilter "#39 = 330 | #39 = 8 | #39 = 7 | #39 = 505 | #39 = 20 | #39 = 30 | #39 = 68 | #39 = 2 | #39 = 838 | #39 = 866 | #107 = E.C.")) 1 "on")
  (print "Numbers On")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Text_Numbers_Off (/)
  (settext (ssget "X" '((0 . "MAPS_SOLID"))) 1 "off")
  (print "Numbers Off")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Text_Size_On (/)
  (settext (ssget '((0 . "MAPS_SOLID"))) 2 "on")
  (print "Size On")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Text_Size_Off (/)
  (settext (ssget '((0 . "MAPS_SOLID"))) 2 "off")
  (print "Size Off")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Text_Elevation_On (/)
  (settext (ssget '((0 . "MAPS_SOLID"))) 4 "on")
  (print "Elevation On")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Text_Elevation_Off (/)
  (settext (ssget '((0 . "MAPS_SOLID"))) 4 "off")
  (print "Elevation Off")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Text_Alias_On (/)
  (settext (ssget '((0 . "MAPS_SOLID"))) 8 "on")
  (print "Alias On")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Text_Alias_Off (/)
  (settext (ssget '((0 . "MAPS_SOLID"))) 8 "off")
  (print "Alias Off")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Text_Offset_On (/)
  (settext (ssget '((0 . "MAPS_SOLID"))) 16 "on")
  (print "Offset On")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Text_Offset_Off (/)
  (settext (ssget '((0 . "MAPS_SOLID"))) 16 "off")
  (print "Offset Off")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Text_Length_On (/)
  (settext (ssget '((0 . "MAPS_SOLID"))) 32 "on")
  (print "Length On")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Text_Length_Off (/)
  (settext (ssget '((0 . "MAPS_SOLID"))) 32 "off")
  (print "Length Off")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
;;;; TO - TEXT ON - TEXT TURNED ON!!
(defun c:Text_All_On (/)
  (settext(ssget) 63 "on")
  (print "All Text On")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
;;;; TF - TEXT OFF - REMOVE TEXT FROM THE CURRENT DRAWING !!CAUTION!! THIS WIPES THE MEMORY OF WHICH ITEMS HAD WHICH TEXT TURNED ON!!
(defun c:Text_All_Off (/)
  (settext(ssget) 63 "off")
  (print "All Text Off")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:DeBug_Script ()
  ;;;; DB = CALLS UP THE DEBUG TEST FILE
  (OUTSIDE_LOOP_VARIABLES nil)
  (Executescript debugFileLink)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Size_Down_Item ()
;;;; SD = SIZE DOWN Reduce fitting size by one index location
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "rem THIS INCREMENTS DOWN" writeToVBCode)
(write-line "if item.hasproduct then" writeToVBCode)
(write-line "dim entry" writeToVBCode)
(write-line "dim desc=item.description" writeToVBCode)
(write-line "for entry=1 to item.product.entries" writeToVBCode)
(write-line "if desc=item.product.entry[entry].name then" writeToVBCode)
(write-line "dim index=entry-1" writeToVBCode)
(write-line "if index > 0 then" writeToVBCode)
(write-line "dim entry=item.product.entries" writeToVBCode)
(write-line "item.description=item.product.entry[index].name" writeToVBCode)
(write-line "endif" writeToVBCode)
(write-line "endif" writeToVBCode)
(write-line "next" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.hasproduct=false then" writeToVBCode)
(write-line "if item.dim[1].value <= 11 and item.CID <> 818 then" writeToVBCode)
(write-line "if (item.CID = 40 or item.CID = 522 or item.CID = 523 or item.CID = 873 or item.CID = 856 or item.CID = 68 or item.CID = 1112 or item.CID = 51 or item.CID = 61) or (wildcard(item.filename,\"*Flat Strap (Round)\") = 1) or (wildcard(item.filename,\"*Wrap Round\") = 1) or (wildcard(item.filename,\"*round floor mount\") = 1) then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value - 1" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (item.CID = 866 or item.CID = 802 or item.CID = 30 or item.CID = 535 or item.CID = 382 or item.CID = 1 or item.CID = 505 or item.CID = 166) or (wildcard(item.filename,\"*rectangular floor mount\") = 1) or (wildcard(item.filename,\"*Flat Strap (Rectangle)\") = 1) or (wildcard(item.filename,\"*rectangular bearer\") = 1) then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value - 1" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value - 1" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 20 or item.CID = 17 or item.CID = 8 then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value - 1" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value - 1" writeToVBCode)
(write-line "if (wildcard(item.dim[3].value,\"Equal\") = 1) then" writeToVBCode)
(write-line "item.dim[3].value = item.dim[1].value - 1" writeToVBCode)
(write-line "elseif (wildcard(item.dim[3].value,\"Equal\") = 0) then" writeToVBCode)
(write-line "item.dim[3].value = item.dim[3].value - 1" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 330 or item.CID = 2 then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value - 1" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value - 1" writeToVBCode)
(write-line "item.dim[3].value = item.dim[3].value - 1" writeToVBCode)
(write-line "item.dim[4].value = item.dim[4].value - 1" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dim[1].value > 11 and item.CID <> 818 then" writeToVBCode)
(write-line "if (item.CID = 40 or item.CID = 522 or item.CID = 523 or item.CID = 873 or item.CID = 856 or item.CID = 68 or item.CID = 1112 or item.CID = 51 or item.CID = 61) or (wildcard(item.filename,\"*Flat Strap (Round)\") = 1) or (wildcard(item.filename,\"*Wrap Round\") = 1) or (wildcard(item.filename,\"*round floor mount\") = 1) then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value - 2" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (item.CID = 866 or item.CID = 802 or item.CID = 30 or item.CID = 535 or item.CID = 382 or item.CID = 1 or item.CID = 505 or item.CID = 166) or (wildcard(item.filename,\"*rectangular floor mount\") = 1) or (wildcard(item.filename,\"*Flat Strap (Rectangle)\") = 1) or (wildcard(item.filename,\"*rectangular bearer\") = 1) then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value - 2" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value - 2" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 20 or item.CID = 17 or item.CID = 8 then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value - 2" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value - 2" writeToVBCode)
(write-line "if (wildcard(item.dim[3].value,\"Equal\") = 1) then" writeToVBCode)
(write-line "item.dim[3].value = item.dim[1].value" writeToVBCode)
(write-line "elseif (wildcard(item.dim[3].value,\"Equal\") = 0) then" writeToVBCode)
(write-line "item.dim[3].value = item.dim[3].value - 2" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 330 or item.CID = 2 then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value - 2" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value - 2" writeToVBCode)
(write-line "item.dim[3].value = item.dim[3].value - 2" writeToVBCode)
(write-line "if (wildcard(item.dim[3].value,\"Equal\") = 1) then" writeToVBCode)
(write-line "item.dim[4].value = item.dim[2].value" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.dim[3].value,\"Equal\") = 0) then" writeToVBCode)
(write-line "item.dim[4].value = item.dim[4].value - 2" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if    item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 818 then" writeToVBCode)
(write-line "item.dim[\"Branch Width #1\"].value = item.dim[\"Branch Width #1\"].value - 2" writeToVBCode)
(write-line "item.dim[\"Branch Depth #1\"].value = item.dim[\"Branch Depth #1\"].value - 2" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "endwhile" writeToVBCode)
  (close writeToVBCode)
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Size_Up_Item ()
;;;; SU = SIZE UP Increase Fitting size by one index location
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "rem THIS INCREMENTS UP" writeToVBCode)
(write-line "if item.hasproduct then" writeToVBCode)
(write-line "dim entry" writeToVBCode)
(write-line "dim desc=item.description" writeToVBCode)
(write-line "for entry=1 to item.product.entries" writeToVBCode)
(write-line "if desc=item.product.entry[entry].name then" writeToVBCode)
(write-line "dim index=entry+1" writeToVBCode)
(write-line "if entry < item.product.entries then" writeToVBCode)
(write-line "dim entry=item.product.entries" writeToVBCode)
(write-line "item.description=item.product.entry[index].name" writeToVBCode)
(write-line "endif" writeToVBCode)
(write-line "endif" writeToVBCode)
(write-line "next" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.hasproduct=false then" writeToVBCode)
(write-line "if item.dim[1].value <= 11 and item.CID <> 818 then" writeToVBCode)
(write-line "if (item.CID = 40 or item.CID = 522 or item.CID = 523 or item.CID = 873 or item.CID = 856 or item.CID = 68 or item.CID = 1112 or item.CID = 51 or item.CID = 61) or (wildcard(item.filename,\"*Flat Strap (Round)\") = 1) or (wildcard(item.filename,\"*Wrap Round\") = 1) or (wildcard(item.filename,\"*round floor mount\") = 1) then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value + 1" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (item.CID = 866 or item.CID = 802 or item.CID = 30 or item.CID = 535 or item.CID = 382 or item.CID = 1 or item.CID = 505 or item.CID = 166) or (wildcard(item.filename,\"*rectangular floor mount\") = 1) or (wildcard(item.filename,\"*Flat Strap (Rectangle)\") = 1) or (wildcard(item.filename,\"*rectangular bearer\") = 1) then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value + 1" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value + 1" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 20 or item.CID = 17 or item.CID = 8 then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value + 1" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value + 1" writeToVBCode)
(write-line "item.dim[3].value = item.dim[3].numvalue + 1" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 330 or item.CID = 2 then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value + 1" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value + 1" writeToVBCode)
(write-line "item.dim[3].value = item.dim[3].value + 1" writeToVBCode)
(write-line "item.dim[4].value = item.dim[4].value + 1" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dim[1].value > 11 and item.CID <> 818 then" writeToVBCode)
(write-line "if (item.CID = 40 or item.CID = 522 or item.CID = 523 or item.CID = 873 or item.CID = 856 or item.CID = 68 or item.CID = 1112 or item.CID = 51 or item.CID = 61) or (wildcard(item.filename,\"*Flat Strap (Round)\") = 1) or (wildcard(item.filename,\"*Wrap Round\") = 1) or (wildcard(item.filename,\"*round floor mount\") = 1) then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value + 2" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (item.CID = 866 or item.CID = 802 or item.CID = 30 or item.CID = 535 or item.CID = 382 or item.CID = 1 or item.CID = 505 or item.CID = 166) or (wildcard(item.filename,\"*rectangular floor mount\") = 1) or (wildcard(item.filename,\"*Flat Strap (Rectangle)\") = 1) or (wildcard(item.filename,\"*rectangular bearer\") = 1) then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value + 2" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value + 2" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 20 or item.CID = 17 or item.CID = 8 then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value + 2" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value + 2" writeToVBCode)
(write-line "item.dim[3].value = item.dim[3].numvalue + 2" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 330 or item.CID = 2 then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value + 2" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value + 2" writeToVBCode)
(write-line "item.dim[3].value = item.dim[3].value + 2" writeToVBCode)
(write-line "item.dim[4].value = item.dim[4].numvalue + 2" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.CID = 818 then" writeToVBCode)
(write-line "item.dim[\"Branch Width #1\"].value = item.dim[\"Branch Width #1\"].value + 2" writeToVBCode)
(write-line "item.dim[\"Branch Depth #1\"].value = item.dim[\"Branch Depth #1\"].value + 2" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "endwhile" writeToVBCode)
(close writeToVBCode)
(Executescript vbCode)
(vl-file-delete vbCode)
(princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Update_Existing_Dampers ()
;;;; 38Rod = Switch Damper to 3/8" Rod
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if item.dampers > 0 then" writeToVBCode)
(write-line "if item.dampers = 1 then" writeToVBCode)
(write-line "if item.damper[1].value = \"3/8\"+qt+\" ROD-L\" or item.damper[2].value = \"3/8\"+qt+\" ROD-R\" or item.damper[2].value = \"3/8\"+qt+\" ROD-UP\" or item.damper[2].value = \"3/8\"+qt+\" ROD-DN\" then" writeToVBCode)
(write-line "item.damper[1].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.damper[1].value = \"KS7L-L\" or item.damper[2].value = \"KS7L-R\" or item.damper[2].value = \"KS7L-UP\" or item.damper[2].value = \"KS7L-DN\" then" writeToVBCode)
(write-line "item.damper[1].value = \"KS7L-D2\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dampers = 2 then" writeToVBCode)
(write-line "if item.damper[1].value = \"3/8\"+qt+\" ROD-L\" or item.damper[2].value = \"3/8\"+qt+\" ROD-R\" or item.damper[2].value = \"3/8\"+qt+\" ROD-UP\" or item.damper[2].value = \"3/8\"+qt+\" ROD-DN\" then" writeToVBCode)
(write-line "item.damper[1].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.damper[1].value = \"KS7L-L\" or item.damper[2].value = \"KS7L-R\" or item.damper[2].value = \"KS7L-UP\" or item.damper[2].value = \"KS7L-DN\" then" writeToVBCode)
(write-line "item.damper[1].value = \"KS7L-D2\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.damper[2].value = \"3/8\"+qt+\" ROD-L\" or item.damper[2].value = \"3/8\"+qt+\" ROD-R\" or item.damper[2].value = \"3/8\"+qt+\" ROD-UP\" or item.damper[2].value = \"3/8\"+qt+\" ROD-DN\" then" writeToVBCode)
(write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "elseif item.damper[2].value = \"KS7L-L\" or item.damper[2].value = \"KS7L-R\" or item.damper[2].value = \"KS7L-UP\" or item.damper[2].value = \"KS7L-DN\" then" writeToVBCode)
(write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dampers = 3 then" writeToVBCode)
(write-line "if item.damper[1].value = \"3/8\"+qt+\" ROD-L\" or item.damper[2].value = \"3/8\"+qt+\" ROD-R\" or item.damper[2].value = \"3/8\"+qt+\" ROD-UP\" or item.damper[2].value = \"3/8\"+qt+\" ROD-DN\" then" writeToVBCode)
(write-line "item.damper[1].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "elseif item.damper[1].value = \"KS7L-L\" or item.damper[2].value = \"KS7L-R\" or item.damper[2].value = \"KS7L-UP\" or item.damper[2].value = \"KS7L-DN\" then" writeToVBCode)
(write-line "item.damper[1].value = \"KS7L-D2\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.damper[2].value = \"3/8\"+qt+\" ROD-L\" or item.damper[2].value = \"3/8\"+qt+\" ROD-R\" or item.damper[2].value = \"3/8\"+qt+\" ROD-UP\" or item.damper[2].value = \"3/8\"+qt+\" ROD-DN\" then" writeToVBCode)
(write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "elseif item.damper[2].value = \"KS7L-L\" or item.damper[2].value = \"KS7L-R\" or item.damper[2].value = \"KS7L-UP\" or item.damper[2].value = \"KS7L-DN\" then" writeToVBCode)
(write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.damper[3].value = \"3/8\"+qt+\" ROD-L\" or item.damper[3].value = \"3/8\"+qt+\" ROD-D2\" then" writeToVBCode)
(write-line "item.damper[3].value = \"3/8\"+qt+\" ROD-UP\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "elseif item.damper[3].value = \"3/8\"+qt+\" ROD-R\" then" writeToVBCode)
(write-line "item.damper[3].value = \"3/8\"+qt+\" ROD-DN\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "elseif item.damper[3].value = \"KS7L-L\" or item.damper[3].value = \"KS7L-D2\" then" writeToVBCode)
(write-line "item.damper[3].value = \"KS7L-UP\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "elseif item.damper[3].value = \"KS7L-R\" then" writeToVBCode)
(write-line "item.damper[3].value = \"KS7L-DN\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dampers = 4 then" writeToVBCode)
(write-line "if item.damper[1].value = \"3/8\"+qt+\" ROD-L\" or item.damper[2].value = \"3/8\"+qt+\" ROD-R\" or item.damper[2].value = \"3/8\"+qt+\" ROD-UP\" or item.damper[2].value = \"3/8\"+qt+\" ROD-DN\" then" writeToVBCode)
(write-line "item.damper[1].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "elseif item.damper[1].value = \"KS7L-L\" or item.damper[2].value = \"KS7L-R\" or item.damper[2].value = \"KS7L-UP\" or item.damper[2].value = \"KS7L-DN\" then" writeToVBCode)
(write-line "item.damper[1].value = \"KS7L-D2\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.damper[2].value = \"3/8\"+qt+\" ROD-L\" or item.damper[2].value = \"3/8\"+qt+\" ROD-R\" or item.damper[2].value = \"3/8\"+qt+\" ROD-UP\" or item.damper[2].value = \"3/8\"+qt+\" ROD-DN\" then" writeToVBCode)
(write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "elseif item.damper[2].value = \"KS7L-L\" or item.damper[2].value = \"KS7L-R\" or item.damper[2].value = \"KS7L-UP\" or item.damper[2].value = \"KS7L-DN\" then" writeToVBCode)
(write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.damper[3].value = \"3/8\"+qt+\" ROD-L\" or item.damper[3].value = \"3/8\"+qt+\" ROD-D2\" then" writeToVBCode)
(write-line "item.damper[3].value = \"3/8\"+qt+\" ROD-UP\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "elseif item.damper[3].value = \"3/8\"+qt+\" ROD-R\" then" writeToVBCode)
(write-line "item.damper[3].value = \"3/8\"+qt+\" ROD-DN\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "elseif item.damper[3].value = \"KS7L-L\" or item.damper[3].value = \"KS7L-D2\" then" writeToVBCode)
(write-line "item.damper[3].value = \"KS7L-UP\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "elseif item.damper[3].value = \"KS7L-R\" then" writeToVBCode)
(write-line "item.damper[3].value = \"KS7L-DN\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.damper[4].value = \"3/8\"+qt+\" ROD-R\" or item.damper[3].value = \"3/8\"+qt+\" ROD-D2\" then" writeToVBCode)
(write-line "item.damper[4].value = \"3/8\"+qt+\" ROD-DN\"" writeToVBCode)
(write-line "item.damper[4].locked = true" writeToVBCode)
(write-line "elseif item.damper[3].value = \"3/8\"+qt+\" ROD-L\" then" writeToVBCode)
(write-line "item.damper[4].value = \"3/8\"+qt+\" ROD-UP\"" writeToVBCode)
(write-line "item.damper[4].locked = true" writeToVBCode)
(write-line "elseif item.damper[4].value = \"KS7L-R\" or item.damper[3].value = \"KS7L-D2\" then" writeToVBCode)
(write-line "item.damper[4].value = \"KS7L-DN\"" writeToVBCode)
(write-line "item.damper[4].locked = true" writeToVBCode)
(write-line "elseif item.damper[3].value = \"KS7L-L\" then" writeToVBCode)
(write-line "item.damper[4].value = \"KS7L-UP\"" writeToVBCode)
(write-line "item.damper[4].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
  (close writeToVBCode)
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Switch_KS7L_to_38Rod_Damper ()
;;;; 38Rod = Switch Damper to 3/8" Rod
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if item.dampers > 0 then" writeToVBCode)
(write-line "if item.dampers = 1 then" writeToVBCode)
(write-line "if item.damper[1].value = \"KS7L-UP\" then" writeToVBCode)
(write-line "item.damper[1].value = \"3/8\"+qt+\" ROD-UP\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "elseif item.damper[1].value = \"KS7L-DN\" then" writeToVBCode)
(write-line "item.damper[1].value = \"3/8\"+qt+\" ROD-DN\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dampers = 2 then" writeToVBCode)
(write-line "if item.damper[1].value = \"KS7L-UP\" then" writeToVBCode)
(write-line "item.damper[1].value = \"3/8\"+qt+\" ROD-UP\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "elseif item.damper[1].value = \"KS7L-DN\" then" writeToVBCode)
(write-line "item.damper[1].value = \"3/8\"+qt+\" ROD-DN\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.damper[2].value = \"KS7L-UP\" or item.damper[2].value = \"KS7L-DN\" or item.damper[2].value = \"KS7L-D2\" then" writeToVBCode)
(write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dampers = 3 then" writeToVBCode)
(write-line "if item.damper[1].value = \"KS7L-UP\" then" writeToVBCode)
(write-line "item.damper[1].value = \"3/8\"+qt+\" ROD-UP\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "elseif item.damper[1].value = \"KS7L-DN\" then" writeToVBCode)
(write-line "item.damper[1].value = \"3/8\"+qt+\" ROD-DN\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.damper[2].value = \"KS7L-UP\" or item.damper[2].value = \"KS7L-DN\" or item.damper[2].value = \"KS7L-D2\" then" writeToVBCode)
(write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.damper[3].value = \"KS7L-UP\" then" writeToVBCode)
(write-line "item.damper[3].value = \"3/8\"+qt+\" ROD-UP\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "elseif item.damper[3].value = \"KS7L-DN\" then" writeToVBCode)
(write-line "item.damper[3].value = \"3/8\"+qt+\" ROD-DN\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dampers = 4 then" writeToVBCode)
(write-line "if item.damper[1].value = \"KS7L-UP\" then" writeToVBCode)
(write-line "item.damper[1].value = \"3/8\"+qt+\" ROD-UP\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "elseif item.damper[1].value = \"KS7L-DN\" then" writeToVBCode)
(write-line "item.damper[1].value = \"3/8\"+qt+\" ROD-DN\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.damper[2].value = \"KS7L-UP\" or item.damper[2].value = \"KS7L-DN\" or item.damper[2].value = \"KS7L-D2\" then" writeToVBCode)
(write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.damper[3].value = \"KS7L-UP\" then" writeToVBCode)
(write-line "item.damper[3].value = \"3/8\"+qt+\" ROD-UP\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "elseif item.damper[3].value = \"KS7L-DN\" then" writeToVBCode)
(write-line "item.damper[3].value = \"3/8\"+qt+\" ROD-DN\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.damper[4].value = \"KS7L-UP\" then" writeToVBCode)
(write-line "item.damper[4].value = \"3/8\"+qt+\" ROD-UP\"" writeToVBCode)
(write-line "item.damper[4].locked = true" writeToVBCode)
(write-line "elseif item.damper[4].value = \"KS7L-DN\" then" writeToVBCode)
(write-line "item.damper[4].value = \"3/8\"+qt+\" ROD-DN\"" writeToVBCode)
(write-line "item.damper[4].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
  (close writeToVBCode)
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Switch_38Rod_to_KS7L_Damper ()
;;;; KS7L = Switch Damper to KS7L
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if item.dampers > 0 then" writeToVBCode)
(write-line "if item.dampers = 1 then" writeToVBCode)
(write-line "if item.damper[1].value = \"3/8\"+qt+\" ROD-UP\" then" writeToVBCode)
(write-line "item.damper[1].value = \"KS7L-UP\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "elseif item.damper[1].value = \"3/8\"+qt+\" ROD-DN\" then" writeToVBCode)
(write-line "item.damper[1].value = \"KS7L-DN\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dampers = 2 then" writeToVBCode)
(write-line "if item.damper[1].value = \"3/8\"+qt+\" ROD-UP\" then" writeToVBCode)
(write-line "item.damper[1].value = \"KS7L-UP\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "elseif item.damper[1].value = \"3/8\"+qt+\" ROD-DN\" then" writeToVBCode)
(write-line "item.damper[1].value = \"KS7L-DN\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.damper[2].value = \"3/8\"+qt+\" ROD-UP\" or item.damper[2].value = \"3/8\"+qt+\" ROD-DN\" or item.damper[2].value = \"3/8\"+qt+\" ROD-D2\" then" writeToVBCode)
(write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dampers = 3 then" writeToVBCode)
(write-line "if item.damper[1].value = \"3/8\"+qt+\" ROD-UP\" then" writeToVBCode)
(write-line "item.damper[1].value = \"KS7L-UP\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "elseif item.damper[1].value = \"3/8\"+qt+\" ROD-DN\" then" writeToVBCode)
(write-line "item.damper[1].value = \"KS7L-DN\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.damper[2].value = \"3/8\"+qt+\" ROD-UP\" or item.damper[2].value = \"3/8\"+qt+\" ROD-DN\" or item.damper[2].value = \"3/8\"+qt+\" ROD-D2\" then" writeToVBCode)
(write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.damper[3].value = \"3/8\"+qt+\" ROD-UP\" then" writeToVBCode)
(write-line "item.damper[3].value = \"KS7L-UP\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "elseif item.damper[3].value = \"3/8\"+qt+\" ROD-DN\" then" writeToVBCode)
(write-line "item.damper[3].value = \"KS7L-DN\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dampers = 4 then" writeToVBCode)
(write-line "if item.damper[1].value = \"3/8\"+qt+\" ROD-UP\" then" writeToVBCode)
(write-line "item.damper[1].value = \"KS7L-UP\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "elseif item.damper[1].value = \"3/8\"+qt+\" ROD-DN\" then" writeToVBCode)
(write-line "item.damper[1].value = \"KS7L-DN\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.damper[2].value = \"3/8\"+qt+\" ROD-UP\" or item.damper[2].value = \"3/8\"+qt+\" ROD-DN\" or item.damper[2].value = \"3/8\"+qt+\" ROD-D2\" then" writeToVBCode)
(write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.damper[3].value = \"3/8\"+qt+\" ROD-UP\" then" writeToVBCode)
(write-line "item.damper[3].value = \"KS7L-UP\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "elseif item.damper[3].value = \"3/8\"+qt+\" ROD-DN\" then" writeToVBCode)
(write-line "item.damper[3].value = \"KS7L-DN\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.damper[4].value = \"3/8\"+qt+\" ROD-UP\" then" writeToVBCode)
(write-line "item.damper[4].value = \"KS7L-UP\"" writeToVBCode)
(write-line "item.damper[4].locked = true" writeToVBCode)
(write-line "elseif item.damper[4].value = \"3/8\"+qt+\" ROD-DN\" then" writeToVBCode)
(write-line "item.damper[4].value = \"KS7L-DN\"" writeToVBCode)
(write-line "item.damper[4].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
  (close writeToVBCode)
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
;;;; TEXT MOVE - MOVES TEXT
(defun c:Text_Move ()
  (OUTSIDE_LOOP_VARIABLES nil)
  (COMMAND "MOVETEXT")
  (prompt "Select the text you wish to move")(princ)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
;;;; TEXT MOVE - MOVES TEXT
(defun c:Rotate_Text ()
  (OUTSIDE_LOOP_VARIABLES nil)
  (COMMAND "ROTTEXT")
  (prompt "Select the text you wish to rotate")(princ)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
;| SELECT PREVIOUS - RESELECTS LAST SELECTION SET |;
(defun c:Select_Previous ()
  (OUTSIDE_LOOP_VARIABLES nil)
  (command "pselect" "p" "")
  (prompt "Last selected object has been reselected")(princ)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
;;;; SELECT LAST - RESELECTS LAST ENTITY ADDED TO THE DRAWING
(defun c:Select_Last_Added ()
  (OUTSIDE_LOOP_VARIABLES nil)
  (command "pselect" (entlast) "")
  (prompt "Last added object has been selected")(princ)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
;;;; Move Previous - Moves last selection set
(defun c:Move_Previous ()
  (OUTSIDE_LOOP_VARIABLES nil)
  (command "pselect" "p" "")
  (prompt "Ready to move last selection set")(princ)
  (command "move")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
;;;; Calls up a review cloud Revision_Cloud_On_Text_Layer
(defun c:Text_Cloud ()
  (OUTSIDE_LOOP_VARIABLES nil)
  (vl-load-com)
  (initcommandversion 1)
  (setq oldCurrent (getvar 'clayer))
  (command "LAYER" "SET" "M-AMC-TEXT" "")
  (initcommandversion 2)
  (setq a (getpoint "\nPick first point: ")
        b (getcorner a "\nPick other corner: "))
  (vl-cmdf "._revcloud" "_A" "3" "9" "_R" a b )
  (initcommandversion 1)
  (command "LAYER" "SET" oldCurrent "")
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Move_X_Axis (/ sset a b)
  (OUTSIDE_LOOP_VARIABLES nil)
  (prompt "MOVE on X axis")(terpri)
  (setq sset (ssget))
  (setq a (getpoint "Select Base Point: "))(terpri)
  (setq b (getpoint a "Select Destination: "))(terpri)
  (command ".move" sset "" a ".X" b "@");change @ to pause without the quotes to manually pick direction
  (princ)
  (END_ROUTINE));end defun
(defun c:Move_Y_Axis (/ sset a b)
  (OUTSIDE_LOOP_VARIABLES nil)
  (prompt "MOVE on Y axis")(terpri)
  (setq sset (ssget))
  (setq a (getpoint "Select Base Point: "))(terpri)
  (setq b (getpoint a "Select Destination: "))(terpri)
  (command ".move" sset "" a ".Y" b "@")
  (princ)
(END_ROUTINE));end defun
(defun c:Move_Z_Axis (/ sset a b)
  (OUTSIDE_LOOP_VARIABLES nil)
  (prompt "MOVE on Z axis")(terpri)
  (setq sset (ssget))
  (setq a (getpoint "Select Base Point: "))(terpri)
  (setq b (getpoint a "Select Destination: "))(terpri)
  (command ".move" sset "" a ".Z" b "@")
  (princ)
(END_ROUTINE));end defun

(defun c:Copy_X_Axis (/ sset a b)
  (OUTSIDE_LOOP_VARIABLES nil)
  (prompt "Copy on X axis")(terpri)
  (setq sset (ssget))
  (setq a (getpoint "Select Base Point: "))(terpri)
  (setq b (getpoint a "Select Destination: "))(terpri)
  (command ".copy" sset "" a ".X" b "@");change @ to pause without the quotes to manually pick direction
  (princ)
(END_ROUTINE));end defun
(defun c:Copy_Y_Axis (/ sset a b)
  (OUTSIDE_LOOP_VARIABLES nil)
  (prompt "Copy on Y axis")(terpri)
  (setq sset (ssget))
  (setq a (getpoint "Select Base Point: "))(terpri)
  (setq b (getpoint a "Select Destination: "))(terpri)
  (command ".copy" sset "" a ".Y" b "@")
  (princ)
(END_ROUTINE));end defun
(defun c:Copy_Z_Axis (/ sset a b)
  (OUTSIDE_LOOP_VARIABLES nil)
  (prompt "Copy on Z axis")(terpri)
  (setq sset (ssget))
  (setq a (getpoint "Select Base Point: "))(terpri)
  (setq b (getpoint a "Select Destination: "))(terpri)
  (command ".copy" sset "" a ".Z" b "@")
  (princ)
(END_ROUTINE));end defun
(defun c:Split_View_Into_2 ()
  (OUTSIDE_LOOP_VARIABLES nil)
  (command "-vports" "2" "vertical")
  (command "view" "_SWISO")
  (command "ucs" "view")
  (princ)
(END_ROUTINE));end defun
(defun c:Front_View ()
  (OUTSIDE_LOOP_VARIABLES nil)
  (command "-view" "_front")
  (command "ucs" "view")
  (princ)
(END_ROUTINE));end defun
(defun c:Right_View ()
  (command "-view" "_right")
  (command "ucs" "view")
  (princ)
(END_ROUTINE));end defun
(defun c:Top_View ()
  (OUTSIDE_LOOP_VARIABLES nil)
  (Command "view" "top")
  (command "ucs" "world")
  (princ)
(END_ROUTINE));end defun
(defun c:Delete_All_Xclips ()
  (OUTSIDE_LOOP_VARIABLES nil)
  (command "_xclip" "all" "" "delete" ^c^c )
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
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
;**************************************************************************************************************************************************
;;;; SELECT FIX - FIXES MAP OBJECT SELECTION SET COORDINATE LOCATIONS
(defun c:Selection_Fix ()
  (OUTSIDE_LOOP_VARIABLES nil)
  (command "move" "all" "" "0,0,0" "0,0,0")
  (prompt "Object locations have been reset.")(princ)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Multi_Dimension_Edit ()
;;;; D1 = CHOOSE VALUE FOR DIMENSION #1
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "dim limit = item.dims" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "dim identity = inputbox(\"Enter dimension index #:\")" writeToVBCode)
(write-line "dim check = \"false\"" writeToVBCode)
(write-line "dim idFlag = \"invalid\"" writeToVBCode)
(write-line "while count <= limit" writeToVBCode)
(write-line "if identity = count then" writeToVBCode)
(write-line "check = \"true\"" writeToVBCode)
(write-line "idFlag = \"valid\"" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "if check = \"false\" then" writeToVBCode)
(write-line "identity = qt + identity + qt" writeToVBCode)
(write-line "count = 1" writeToVBCode)
(write-line "while count <= limit" writeToVBCode)
(write-line "if (wildcard(item.dim[count].name,identity) = 1) then" writeToVBCode)
(write-line "idFlag = \"valid\"" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if idFlag = \"valid\" then" writeToVBCode)
(write-line "if item.dim[identity].numvalue >= 0 then" writeToVBCode)
(write-line "dim self = item.dim[identity].numvalue" writeToVBCode)
(write-line "dim value = inputbox(\"Enter [VALUE]\")" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "dim self = item.dim[identity].numvalue" writeToVBCode)
(write-line "dim auto = 1000000" writeToVBCode)
(write-line "dim dependent = 1100000" writeToVBCode)
(write-line "dim calc = 1100001" writeToVBCode)
(write-line "dim D1 = item.dim[1].numvalue" writeToVBCode)
(write-line "dim D2 = item.dim[2].numvalue" writeToVBCode)
(write-line "dim D3 = item.dim[3].numvalue" writeToVBCode)
(write-line "dim D4 = item.dim[4].numvalue" writeToVBCode)
(write-line "dim D5 = item.dim[5].numvalue" writeToVBCode)
(write-line "dim D6 = item.dim[6].numvalue" writeToVBCode)
(write-line "dim D7 = item.dim[7].numvalue" writeToVBCode)
(write-line "dim D8 = item.dim[8].numvalue" writeToVBCode)
(write-line "dim D9 = item.dim[9].numvalue" writeToVBCode)
(write-line "dim D10 = item.dim[10].numvalue" writeToVBCode)
(write-line "dim D11 = item.dim[11].numvalue" writeToVBCode)
(write-line "dim D12 = item.dim[12].numvalue" writeToVBCode)
(write-line "dim D13 = item.dim[13].numvalue" writeToVBCode)
(write-line "dim D14 = item.dim[14].numvalue" writeToVBCode)
(write-line "dim D15 = item.dim[15].numvalue" writeToVBCode)
(write-line "dim D16 = item.dim[16].numvalue" writeToVBCode)
(write-line "dim D17 = item.dim[17].numvalue" writeToVBCode)
(write-line "dim D18 = item.dim[18].numvalue" writeToVBCode)
(write-line "dim D19 = item.dim[19].numvalue" writeToVBCode)
(write-line "dim D20 = item.dim[20].numvalue" writeToVBCode)
(write-line "dim D21 = item.dim[21].numvalue" writeToVBCode)
(write-line "dim D22 = item.dim[22].numvalue" writeToVBCode)
(write-line "dim D23 = item.dim[23].numvalue" writeToVBCode)
(write-line "dim D24 = item.dim[24].numvalue" writeToVBCode)
(write-line "dim D25 = item.dim[25].numvalue" writeToVBCode)
(write-line "dim D26 = item.dim[26].numvalue" writeToVBCode)
(write-line "dim D27 = item.dim[27].numvalue" writeToVBCode)
(write-line "dim D28 = item.dim[28].numvalue" writeToVBCode)
(write-line "dim D29 = item.dim[29].numvalue" writeToVBCode)
(write-line "dim D30 = item.dim[30].numvalue" writeToVBCode)
(write-line "dim D31 = item.dim[31].numvalue" writeToVBCode)
(write-line "dim D32 = item.dim[32].numvalue" writeToVBCode)
(write-line "dim D33 = item.dim[33].numvalue" writeToVBCode)
(write-line "dim D34 = item.dim[34].numvalue" writeToVBCode)
(write-line "dim D35 = item.dim[35].numvalue" writeToVBCode)
(write-line "dim D36 = item.dim[36].numvalue" writeToVBCode)
(write-line "dim D37 = item.dim[37].numvalue" writeToVBCode)
(write-line "dim D38 = item.dim[38].numvalue" writeToVBCode)
(write-line "dim D39 = item.dim[39].numvalue" writeToVBCode)
(write-line "dim D40 = item.dim[40].numvalue" writeToVBCode)
(write-line "dim D41 = item.dim[41].numvalue" writeToVBCode)
(write-line "dim D42 = item.dim[42].numvalue" writeToVBCode)
(write-line "dim D43 = item.dim[43].numvalue" writeToVBCode)
(write-line "dim D44 = item.dim[44].numvalue" writeToVBCode)
(write-line "dim D45 = item.dim[45].numvalue" writeToVBCode)
(write-line "dim D46 = item.dim[46].numvalue" writeToVBCode)
(write-line "dim D47 = item.dim[47].numvalue" writeToVBCode)
(write-line "dim D48 = item.dim[48].numvalue" writeToVBCode)
(write-line "dim D49 = item.dim[49].numvalue" writeToVBCode)
(write-line "dim D50 = item.dim[50].numvalue" writeToVBCode)
(write-line "dim D51 = item.dim[51].numvalue" writeToVBCode)
(write-line "dim D52 = item.dim[52].numvalue" writeToVBCode)
(write-line "dim D53 = item.dim[53].numvalue" writeToVBCode)
(write-line "dim D54 = item.dim[54].numvalue" writeToVBCode)
(write-line "dim D55 = item.dim[55].numvalue" writeToVBCode)
(write-line "dim D56 = item.dim[56].numvalue" writeToVBCode)
(write-line "dim D57 = item.dim[57].numvalue" writeToVBCode)
(write-line "dim D58 = item.dim[58].numvalue" writeToVBCode)
(write-line "dim D59 = item.dim[59].numvalue" writeToVBCode)
(write-line "dim D60 = item.dim[60].numvalue" writeToVBCode)
(write-line "dim D61 = item.dim[61].numvalue" writeToVBCode)
(write-line "dim D62 = item.dim[62].numvalue" writeToVBCode)
(write-line "dim D63 = item.dim[63].numvalue" writeToVBCode)
(write-line "dim D64 = item.dim[64].numvalue" writeToVBCode)
(write-line "dim D65 = item.dim[65].numvalue" writeToVBCode)
(write-line "dim D66 = item.dim[66].numvalue" writeToVBCode)
(write-line "dim D67 = item.dim[67].numvalue" writeToVBCode)
(write-line "dim D68 = item.dim[68].numvalue" writeToVBCode)
(write-line "dim D69 = item.dim[69].numvalue" writeToVBCode)
(write-line "dim D70 = item.dim[70].numvalue" writeToVBCode)
(write-line "dim D71 = item.dim[71].numvalue" writeToVBCode)
(write-line "dim D72 = item.dim[72].numvalue" writeToVBCode)
(write-line "dim D73 = item.dim[73].numvalue" writeToVBCode)
(write-line "dim D74 = item.dim[74].numvalue" writeToVBCode)
(write-line "dim D75 = item.dim[75].numvalue" writeToVBCode)
(write-line "dim D76 = item.dim[76].numvalue" writeToVBCode)
(write-line "dim D77 = item.dim[77].numvalue" writeToVBCode)
(write-line "dim D78 = item.dim[78].numvalue" writeToVBCode)
(write-line "dim D79 = item.dim[79].numvalue" writeToVBCode)
(write-line "dim D80 = item.dim[80].numvalue" writeToVBCode)
(write-line "dim D81 = item.dim[81].numvalue" writeToVBCode)
(write-line "dim D82 = item.dim[82].numvalue" writeToVBCode)
(write-line "dim D83 = item.dim[83].numvalue" writeToVBCode)
(write-line "dim D84 = item.dim[84].numvalue" writeToVBCode)
(write-line "dim D85 = item.dim[85].numvalue" writeToVBCode)
(write-line "dim D86 = item.dim[86].numvalue" writeToVBCode)
(write-line "dim D87 = item.dim[87].numvalue" writeToVBCode)
(write-line "dim D88 = item.dim[88].numvalue" writeToVBCode)
(write-line "dim D89 = item.dim[89].numvalue" writeToVBCode)
(write-line "dim D90 = item.dim[90].numvalue" writeToVBCode)
(write-line "dim D91 = item.dim[91].numvalue" writeToVBCode)
(write-line "dim D92 = item.dim[92].numvalue" writeToVBCode)
(write-line "dim D93 = item.dim[93].numvalue" writeToVBCode)
(write-line "dim D94 = item.dim[94].numvalue" writeToVBCode)
(write-line "dim D95 = item.dim[95].numvalue" writeToVBCode)
(write-line "dim D96 = item.dim[96].numvalue" writeToVBCode)
(write-line "dim D97 = item.dim[97].numvalue" writeToVBCode)
(write-line "dim D98 = item.dim[98].numvalue" writeToVBCode)
(write-line "dim D99 = item.dim[99].numvalue" writeToVBCode)
(write-line "dim D100 = item.dim[100].numvalue" writeToVBCode)
(write-line "dim O1 = item.option[1].value" writeToVBCode)
(write-line "dim O2 = item.option[2].value" writeToVBCode)
(write-line "dim O3 = item.option[3].value" writeToVBCode)
(write-line "dim O4 = item.option[4].value" writeToVBCode)
(write-line "dim O5 = item.option[5].value" writeToVBCode)
(write-line "dim O6 = item.option[6].value" writeToVBCode)
(write-line "dim O7 = item.option[7].value" writeToVBCode)
(write-line "dim O8 = item.option[8].value" writeToVBCode)
(write-line "dim O9 = item.option[9].value" writeToVBCode)
(write-line "dim O10 = item.option[10].value" writeToVBCode)
(write-line "dim O11 = item.option[11].value" writeToVBCode)
(write-line "dim O12 = item.option[12].value" writeToVBCode)
(write-line "dim O13 = item.option[13].value" writeToVBCode)
(write-line "dim O14 = item.option[14].value" writeToVBCode)
(write-line "dim O15 = item.option[15].value" writeToVBCode)
(write-line "dim O16 = item.option[16].value" writeToVBCode)
(write-line "dim O17 = item.option[17].value" writeToVBCode)
(write-line "dim O18 = item.option[18].value" writeToVBCode)
(write-line "dim O19 = item.option[19].value" writeToVBCode)
(write-line "dim O20 = item.option[20].value" writeToVBCode)
(write-line "dim O21 = item.option[21].value" writeToVBCode)
(write-line "dim O22 = item.option[22].value" writeToVBCode)
(write-line "dim O23 = item.option[23].value" writeToVBCode)
(write-line "dim O24 = item.option[24].value" writeToVBCode)
(write-line "dim O25 = item.option[25].value" writeToVBCode)
(write-line "dim O26 = item.option[26].value" writeToVBCode)
(write-line "dim O27 = item.option[27].value" writeToVBCode)
(write-line "dim O28 = item.option[28].value" writeToVBCode)
(write-line "dim O29 = item.option[29].value" writeToVBCode)
(write-line "dim O30 = item.option[30].value" writeToVBCode)
(write-line "dim O31 = item.option[31].value" writeToVBCode)
(write-line "dim O32 = item.option[32].value" writeToVBCode)
(write-line "dim O33 = item.option[33].value" writeToVBCode)
(write-line "dim O34 = item.option[34].value" writeToVBCode)
(write-line "dim O35 = item.option[35].value" writeToVBCode)
(write-line "dim O36 = item.option[36].value" writeToVBCode)
(write-line "dim O37 = item.option[37].value" writeToVBCode)
(write-line "dim O38 = item.option[38].value" writeToVBCode)
(write-line "dim O39 = item.option[39].value" writeToVBCode)
(write-line "dim O40 = item.option[40].value" writeToVBCode)
(write-line "dim O41 = item.option[41].value" writeToVBCode)
(write-line "dim O42 = item.option[42].value" writeToVBCode)
(write-line "dim O43 = item.option[43].value" writeToVBCode)
(write-line "dim O44 = item.option[44].value" writeToVBCode)
(write-line "dim O45 = item.option[45].value" writeToVBCode)
(write-line "dim O46 = item.option[46].value" writeToVBCode)
(write-line "dim O47 = item.option[47].value" writeToVBCode)
(write-line "dim O48 = item.option[48].value" writeToVBCode)
(write-line "dim O49 = item.option[49].value" writeToVBCode)
(write-line "dim O50 = item.option[50].value" writeToVBCode)
(write-line "dim O51 = item.option[51].value" writeToVBCode)
(write-line "dim O52 = item.option[52].value" writeToVBCode)
(write-line "dim O53 = item.option[53].value" writeToVBCode)
(write-line "dim O54 = item.option[54].value" writeToVBCode)
(write-line "dim O55 = item.option[55].value" writeToVBCode)
(write-line "dim O56 = item.option[56].value" writeToVBCode)
(write-line "dim O57 = item.option[57].value" writeToVBCode)
(write-line "dim O58 = item.option[58].value" writeToVBCode)
(write-line "dim O59 = item.option[59].value" writeToVBCode)
(write-line "dim O60 = item.option[60].value" writeToVBCode)
(write-line "dim O61 = item.option[61].value" writeToVBCode)
(write-line "dim O62 = item.option[62].value" writeToVBCode)
(write-line "dim O63 = item.option[63].value" writeToVBCode)
(write-line "dim O64 = item.option[64].value" writeToVBCode)
(write-line "dim O65 = item.option[65].value" writeToVBCode)
(write-line "dim O66 = item.option[66].value" writeToVBCode)
(write-line "dim O67 = item.option[67].value" writeToVBCode)
(write-line "dim O68 = item.option[68].value" writeToVBCode)
(write-line "dim O69 = item.option[69].value" writeToVBCode)
(write-line "dim O70 = item.option[70].value" writeToVBCode)
(write-line "dim O71 = item.option[71].value" writeToVBCode)
(write-line "dim O72 = item.option[72].value" writeToVBCode)
(write-line "dim O73 = item.option[73].value" writeToVBCode)
(write-line "dim O74 = item.option[74].value" writeToVBCode)
(write-line "dim O75 = item.option[75].value" writeToVBCode)
(write-line "dim O76 = item.option[76].value" writeToVBCode)
(write-line "dim O77 = item.option[77].value" writeToVBCode)
(write-line "dim O78 = item.option[78].value" writeToVBCode)
(write-line "dim O79 = item.option[79].value" writeToVBCode)
(write-line "dim O80 = item.option[80].value" writeToVBCode)
(write-line "dim O81 = item.option[81].value" writeToVBCode)
(write-line "dim O82 = item.option[82].value" writeToVBCode)
(write-line "dim O83 = item.option[83].value" writeToVBCode)
(write-line "dim O84 = item.option[84].value" writeToVBCode)
(write-line "dim O85 = item.option[85].value" writeToVBCode)
(write-line "dim O86 = item.option[86].value" writeToVBCode)
(write-line "dim O87 = item.option[87].value" writeToVBCode)
(write-line "dim O88 = item.option[88].value" writeToVBCode)
(write-line "dim O89 = item.option[89].value" writeToVBCode)
(write-line "dim O90 = item.option[90].value" writeToVBCode)
(write-line "dim O91 = item.option[91].value" writeToVBCode)
(write-line "dim O92 = item.option[92].value" writeToVBCode)
(write-line "dim O93 = item.option[93].value" writeToVBCode)
(write-line "dim O94 = item.option[94].value" writeToVBCode)
(write-line "dim O95 = item.option[95].value" writeToVBCode)
(write-line "dim O96 = item.option[96].value" writeToVBCode)
(write-line "dim O97 = item.option[97].value" writeToVBCode)
(write-line "dim O98 = item.option[98].value" writeToVBCode)
(write-line "dim O99 = item.option[99].value" writeToVBCode)
(write-line "dim O100 = item.option[100].value" writeToVBCode)
(write-line "item.dim[identity].value = value" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "else" writeToVBCode)
(write-line "task.message = \"Your dimension or option identification was invalid for this item.\"" writeToVBCode)
(write-line "end if" writeToVBCode)
  (close writeToVBCode)
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (prompt "Your value has been applied to the item(s).")(princ)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Multi_Option_Edit ()
;;;; D2 = CHOOSE VALUE FOR DIMENSION #2
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "dim limit = item.options" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "dim identity = inputbox(\"Enter option index #:\")" writeToVBCode)
(write-line "dim check = \"false\"" writeToVBCode)
(write-line "dim idFlag = \"invalid\"" writeToVBCode)
(write-line "while count <= limit" writeToVBCode)
(write-line "if identity = count then" writeToVBCode)
(write-line "check = \"true\"" writeToVBCode)
(write-line "idFlag = \"valid\"" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "if check = \"false\" then" writeToVBCode)
(write-line "identity = qt + identity + qt" writeToVBCode)
(write-line "count = 1" writeToVBCode)
(write-line "while count <= limit" writeToVBCode)
(write-line "if (wildcard(item.option[count].name,identity) = 1) then" writeToVBCode)
(write-line "idFlag = \"valid\"" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if idFlag = \"valid\" then" writeToVBCode)
(write-line "if item.option[identity].value >= 0 or item.option[identity].value < 0 then" writeToVBCode)
(write-line "dim self = item.option[identity].value" writeToVBCode)
(write-line "dim value = inputbox(\"Enter [VALUE]\")" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "dim self = item.option[identity].value" writeToVBCode)
(write-line "dim auto = 1000000" writeToVBCode)
(write-line "dim dependent = 1100000" writeToVBCode)
(write-line "dim calc = 1100001" writeToVBCode)
(write-line "dim D1 = item.dim[1].numvalue" writeToVBCode)
(write-line "dim D2 = item.dim[2].numvalue" writeToVBCode)
(write-line "dim D3 = item.dim[3].numvalue" writeToVBCode)
(write-line "dim D4 = item.dim[4].numvalue" writeToVBCode)
(write-line "dim D5 = item.dim[5].numvalue" writeToVBCode)
(write-line "dim D6 = item.dim[6].numvalue" writeToVBCode)
(write-line "dim D7 = item.dim[7].numvalue" writeToVBCode)
(write-line "dim D8 = item.dim[8].numvalue" writeToVBCode)
(write-line "dim D9 = item.dim[9].numvalue" writeToVBCode)
(write-line "dim D10 = item.dim[10].numvalue" writeToVBCode)
(write-line "dim D11 = item.dim[11].numvalue" writeToVBCode)
(write-line "dim D12 = item.dim[12].numvalue" writeToVBCode)
(write-line "dim D13 = item.dim[13].numvalue" writeToVBCode)
(write-line "dim D14 = item.dim[14].numvalue" writeToVBCode)
(write-line "dim D15 = item.dim[15].numvalue" writeToVBCode)
(write-line "dim D16 = item.dim[16].numvalue" writeToVBCode)
(write-line "dim D17 = item.dim[17].numvalue" writeToVBCode)
(write-line "dim D18 = item.dim[18].numvalue" writeToVBCode)
(write-line "dim D19 = item.dim[19].numvalue" writeToVBCode)
(write-line "dim D20 = item.dim[20].numvalue" writeToVBCode)
(write-line "dim D21 = item.dim[21].numvalue" writeToVBCode)
(write-line "dim D22 = item.dim[22].numvalue" writeToVBCode)
(write-line "dim D23 = item.dim[23].numvalue" writeToVBCode)
(write-line "dim D24 = item.dim[24].numvalue" writeToVBCode)
(write-line "dim D25 = item.dim[25].numvalue" writeToVBCode)
(write-line "dim D26 = item.dim[26].numvalue" writeToVBCode)
(write-line "dim D27 = item.dim[27].numvalue" writeToVBCode)
(write-line "dim D28 = item.dim[28].numvalue" writeToVBCode)
(write-line "dim D29 = item.dim[29].numvalue" writeToVBCode)
(write-line "dim D30 = item.dim[30].numvalue" writeToVBCode)
(write-line "dim D31 = item.dim[31].numvalue" writeToVBCode)
(write-line "dim D32 = item.dim[32].numvalue" writeToVBCode)
(write-line "dim D33 = item.dim[33].numvalue" writeToVBCode)
(write-line "dim D34 = item.dim[34].numvalue" writeToVBCode)
(write-line "dim D35 = item.dim[35].numvalue" writeToVBCode)
(write-line "dim D36 = item.dim[36].numvalue" writeToVBCode)
(write-line "dim D37 = item.dim[37].numvalue" writeToVBCode)
(write-line "dim D38 = item.dim[38].numvalue" writeToVBCode)
(write-line "dim D39 = item.dim[39].numvalue" writeToVBCode)
(write-line "dim D40 = item.dim[40].numvalue" writeToVBCode)
(write-line "dim D41 = item.dim[41].numvalue" writeToVBCode)
(write-line "dim D42 = item.dim[42].numvalue" writeToVBCode)
(write-line "dim D43 = item.dim[43].numvalue" writeToVBCode)
(write-line "dim D44 = item.dim[44].numvalue" writeToVBCode)
(write-line "dim D45 = item.dim[45].numvalue" writeToVBCode)
(write-line "dim D46 = item.dim[46].numvalue" writeToVBCode)
(write-line "dim D47 = item.dim[47].numvalue" writeToVBCode)
(write-line "dim D48 = item.dim[48].numvalue" writeToVBCode)
(write-line "dim D49 = item.dim[49].numvalue" writeToVBCode)
(write-line "dim D50 = item.dim[50].numvalue" writeToVBCode)
(write-line "dim D51 = item.dim[51].numvalue" writeToVBCode)
(write-line "dim D52 = item.dim[52].numvalue" writeToVBCode)
(write-line "dim D53 = item.dim[53].numvalue" writeToVBCode)
(write-line "dim D54 = item.dim[54].numvalue" writeToVBCode)
(write-line "dim D55 = item.dim[55].numvalue" writeToVBCode)
(write-line "dim D56 = item.dim[56].numvalue" writeToVBCode)
(write-line "dim D57 = item.dim[57].numvalue" writeToVBCode)
(write-line "dim D58 = item.dim[58].numvalue" writeToVBCode)
(write-line "dim D59 = item.dim[59].numvalue" writeToVBCode)
(write-line "dim D60 = item.dim[60].numvalue" writeToVBCode)
(write-line "dim D61 = item.dim[61].numvalue" writeToVBCode)
(write-line "dim D62 = item.dim[62].numvalue" writeToVBCode)
(write-line "dim D63 = item.dim[63].numvalue" writeToVBCode)
(write-line "dim D64 = item.dim[64].numvalue" writeToVBCode)
(write-line "dim D65 = item.dim[65].numvalue" writeToVBCode)
(write-line "dim D66 = item.dim[66].numvalue" writeToVBCode)
(write-line "dim D67 = item.dim[67].numvalue" writeToVBCode)
(write-line "dim D68 = item.dim[68].numvalue" writeToVBCode)
(write-line "dim D69 = item.dim[69].numvalue" writeToVBCode)
(write-line "dim D70 = item.dim[70].numvalue" writeToVBCode)
(write-line "dim D71 = item.dim[71].numvalue" writeToVBCode)
(write-line "dim D72 = item.dim[72].numvalue" writeToVBCode)
(write-line "dim D73 = item.dim[73].numvalue" writeToVBCode)
(write-line "dim D74 = item.dim[74].numvalue" writeToVBCode)
(write-line "dim D75 = item.dim[75].numvalue" writeToVBCode)
(write-line "dim D76 = item.dim[76].numvalue" writeToVBCode)
(write-line "dim D77 = item.dim[77].numvalue" writeToVBCode)
(write-line "dim D78 = item.dim[78].numvalue" writeToVBCode)
(write-line "dim D79 = item.dim[79].numvalue" writeToVBCode)
(write-line "dim D80 = item.dim[80].numvalue" writeToVBCode)
(write-line "dim D81 = item.dim[81].numvalue" writeToVBCode)
(write-line "dim D82 = item.dim[82].numvalue" writeToVBCode)
(write-line "dim D83 = item.dim[83].numvalue" writeToVBCode)
(write-line "dim D84 = item.dim[84].numvalue" writeToVBCode)
(write-line "dim D85 = item.dim[85].numvalue" writeToVBCode)
(write-line "dim D86 = item.dim[86].numvalue" writeToVBCode)
(write-line "dim D87 = item.dim[87].numvalue" writeToVBCode)
(write-line "dim D88 = item.dim[88].numvalue" writeToVBCode)
(write-line "dim D89 = item.dim[89].numvalue" writeToVBCode)
(write-line "dim D90 = item.dim[90].numvalue" writeToVBCode)
(write-line "dim D91 = item.dim[91].numvalue" writeToVBCode)
(write-line "dim D92 = item.dim[92].numvalue" writeToVBCode)
(write-line "dim D93 = item.dim[93].numvalue" writeToVBCode)
(write-line "dim D94 = item.dim[94].numvalue" writeToVBCode)
(write-line "dim D95 = item.dim[95].numvalue" writeToVBCode)
(write-line "dim D96 = item.dim[96].numvalue" writeToVBCode)
(write-line "dim D97 = item.dim[97].numvalue" writeToVBCode)
(write-line "dim D98 = item.dim[98].numvalue" writeToVBCode)
(write-line "dim D99 = item.dim[99].numvalue" writeToVBCode)
(write-line "dim D100 = item.dim[100].numvalue" writeToVBCode)
(write-line "dim O1 = item.option[1].value" writeToVBCode)
(write-line "dim O2 = item.option[2].value" writeToVBCode)
(write-line "dim O3 = item.option[3].value" writeToVBCode)
(write-line "dim O4 = item.option[4].value" writeToVBCode)
(write-line "dim O5 = item.option[5].value" writeToVBCode)
(write-line "dim O6 = item.option[6].value" writeToVBCode)
(write-line "dim O7 = item.option[7].value" writeToVBCode)
(write-line "dim O8 = item.option[8].value" writeToVBCode)
(write-line "dim O9 = item.option[9].value" writeToVBCode)
(write-line "dim O10 = item.option[10].value" writeToVBCode)
(write-line "dim O11 = item.option[11].value" writeToVBCode)
(write-line "dim O12 = item.option[12].value" writeToVBCode)
(write-line "dim O13 = item.option[13].value" writeToVBCode)
(write-line "dim O14 = item.option[14].value" writeToVBCode)
(write-line "dim O15 = item.option[15].value" writeToVBCode)
(write-line "dim O16 = item.option[16].value" writeToVBCode)
(write-line "dim O17 = item.option[17].value" writeToVBCode)
(write-line "dim O18 = item.option[18].value" writeToVBCode)
(write-line "dim O19 = item.option[19].value" writeToVBCode)
(write-line "dim O20 = item.option[20].value" writeToVBCode)
(write-line "dim O21 = item.option[21].value" writeToVBCode)
(write-line "dim O22 = item.option[22].value" writeToVBCode)
(write-line "dim O23 = item.option[23].value" writeToVBCode)
(write-line "dim O24 = item.option[24].value" writeToVBCode)
(write-line "dim O25 = item.option[25].value" writeToVBCode)
(write-line "dim O26 = item.option[26].value" writeToVBCode)
(write-line "dim O27 = item.option[27].value" writeToVBCode)
(write-line "dim O28 = item.option[28].value" writeToVBCode)
(write-line "dim O29 = item.option[29].value" writeToVBCode)
(write-line "dim O30 = item.option[30].value" writeToVBCode)
(write-line "dim O31 = item.option[31].value" writeToVBCode)
(write-line "dim O32 = item.option[32].value" writeToVBCode)
(write-line "dim O33 = item.option[33].value" writeToVBCode)
(write-line "dim O34 = item.option[34].value" writeToVBCode)
(write-line "dim O35 = item.option[35].value" writeToVBCode)
(write-line "dim O36 = item.option[36].value" writeToVBCode)
(write-line "dim O37 = item.option[37].value" writeToVBCode)
(write-line "dim O38 = item.option[38].value" writeToVBCode)
(write-line "dim O39 = item.option[39].value" writeToVBCode)
(write-line "dim O40 = item.option[40].value" writeToVBCode)
(write-line "dim O41 = item.option[41].value" writeToVBCode)
(write-line "dim O42 = item.option[42].value" writeToVBCode)
(write-line "dim O43 = item.option[43].value" writeToVBCode)
(write-line "dim O44 = item.option[44].value" writeToVBCode)
(write-line "dim O45 = item.option[45].value" writeToVBCode)
(write-line "dim O46 = item.option[46].value" writeToVBCode)
(write-line "dim O47 = item.option[47].value" writeToVBCode)
(write-line "dim O48 = item.option[48].value" writeToVBCode)
(write-line "dim O49 = item.option[49].value" writeToVBCode)
(write-line "dim O50 = item.option[50].value" writeToVBCode)
(write-line "dim O51 = item.option[51].value" writeToVBCode)
(write-line "dim O52 = item.option[52].value" writeToVBCode)
(write-line "dim O53 = item.option[53].value" writeToVBCode)
(write-line "dim O54 = item.option[54].value" writeToVBCode)
(write-line "dim O55 = item.option[55].value" writeToVBCode)
(write-line "dim O56 = item.option[56].value" writeToVBCode)
(write-line "dim O57 = item.option[57].value" writeToVBCode)
(write-line "dim O58 = item.option[58].value" writeToVBCode)
(write-line "dim O59 = item.option[59].value" writeToVBCode)
(write-line "dim O60 = item.option[60].value" writeToVBCode)
(write-line "dim O61 = item.option[61].value" writeToVBCode)
(write-line "dim O62 = item.option[62].value" writeToVBCode)
(write-line "dim O63 = item.option[63].value" writeToVBCode)
(write-line "dim O64 = item.option[64].value" writeToVBCode)
(write-line "dim O65 = item.option[65].value" writeToVBCode)
(write-line "dim O66 = item.option[66].value" writeToVBCode)
(write-line "dim O67 = item.option[67].value" writeToVBCode)
(write-line "dim O68 = item.option[68].value" writeToVBCode)
(write-line "dim O69 = item.option[69].value" writeToVBCode)
(write-line "dim O70 = item.option[70].value" writeToVBCode)
(write-line "dim O71 = item.option[71].value" writeToVBCode)
(write-line "dim O72 = item.option[72].value" writeToVBCode)
(write-line "dim O73 = item.option[73].value" writeToVBCode)
(write-line "dim O74 = item.option[74].value" writeToVBCode)
(write-line "dim O75 = item.option[75].value" writeToVBCode)
(write-line "dim O76 = item.option[76].value" writeToVBCode)
(write-line "dim O77 = item.option[77].value" writeToVBCode)
(write-line "dim O78 = item.option[78].value" writeToVBCode)
(write-line "dim O79 = item.option[79].value" writeToVBCode)
(write-line "dim O80 = item.option[80].value" writeToVBCode)
(write-line "dim O81 = item.option[81].value" writeToVBCode)
(write-line "dim O82 = item.option[82].value" writeToVBCode)
(write-line "dim O83 = item.option[83].value" writeToVBCode)
(write-line "dim O84 = item.option[84].value" writeToVBCode)
(write-line "dim O85 = item.option[85].value" writeToVBCode)
(write-line "dim O86 = item.option[86].value" writeToVBCode)
(write-line "dim O87 = item.option[87].value" writeToVBCode)
(write-line "dim O88 = item.option[88].value" writeToVBCode)
(write-line "dim O89 = item.option[89].value" writeToVBCode)
(write-line "dim O90 = item.option[90].value" writeToVBCode)
(write-line "dim O91 = item.option[91].value" writeToVBCode)
(write-line "dim O92 = item.option[92].value" writeToVBCode)
(write-line "dim O93 = item.option[93].value" writeToVBCode)
(write-line "dim O94 = item.option[94].value" writeToVBCode)
(write-line "dim O95 = item.option[95].value" writeToVBCode)
(write-line "dim O96 = item.option[96].value" writeToVBCode)
(write-line "dim O97 = item.option[97].value" writeToVBCode)
(write-line "dim O98 = item.option[98].value" writeToVBCode)
(write-line "dim O99 = item.option[99].value" writeToVBCode)
(write-line "dim O100 = item.option[100].value" writeToVBCode)
(write-line "item.option[identity].value = value" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "else" writeToVBCode)
(write-line "task.message = \"Your dimension or option identification was invalid for this item.\"" writeToVBCode)
(write-line "end if" writeToVBCode)
  (close writeToVBCode)
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (prompt "Your value has been applied to the item(s).")(princ)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun Fix_Cut_Type (/ sset)
;;;; FCT = Fix Cut Types
(setq sset (ssget "_X" '((0 . "MAPS_SOLID"))));Auto choose selection set
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "select item.CID" writeToVBCode)
(write-line "case 40" writeToVBCode)
(write-line "item.cuttype = \"Spiral Straight\"" writeToVBCode)
(write-line "case 866" writeToVBCode)
(write-line "if item.dim[\"Length\"].value < 56 or item.dim[\"Width\"].value < 1.5 or item.dim[\"Depth\"].value < 1.5 or item.dim[\"Width\"].value > 124 or item.dim[\"Depth\"].value > 124 then" writeToVBCode)
(write-line "item.cuttype = \"Machine Cut\"" writeToVBCode)
(write-line "else" writeToVBCode)
(write-line "item.cuttype = \"Decoiled Straight\"" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "case 166,514,523,555,873,838,910,521,996,505,530,535,580,504,5231,3" writeToVBCode)
(write-line "item.cuttype = \"Equipment\"" writeToVBCode)
(write-line "case 7,20,8,2,330,54,53,807,812,1,17,30,382,861,19,61,818,51,875,751,16,345,51,818,162,68,60,64,31,388,856,5000,382,12,802" writeToVBCode)
(write-line "item.cuttype = \"Machine Cut\"" writeToVBCode)
(write-line "case 522" writeToVBCode)
(write-line "if item.description = \"#2 RND. CPLG. PIPE\" then" writeToVBCode)
(write-line "item.cuttype = \"Draw Only\"" writeToVBCode)
(write-line "else" writeToVBCode)
(write-line "item.cuttype = \"Equipment\"" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "case 902" writeToVBCode)
(write-line "if item.description = \"Access Zone\" then" writeToVBCode)
(write-line "item.cuttype = \"Draw Only\"" writeToVBCode)
(write-line "else" writeToVBCode)
(write-line "item.cuttype = \"Equipment\"" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end select" writeToVBCode)
  (close writeToVBCode)
  (command "pselect" sset "")
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (prompt "All instantiated library cut types have been corrected per standards.")(princ)
  
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun Fix_Round_Straight_Connectors (/ sset)
;;;; FRSC = Fix Round Straight Connectors
(setq sset (ssget "_X" '((0 . "MAPS_SOLID"))));Auto choose selection set
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if item.CID = 40 then" writeToVBCode)
(write-line "dim c1Num = 1" writeToVBCode)
(write-line "dim c1Name = \"Raw\"" writeToVBCode)
(write-line "dim c1Grp = \"Round Duct\"" writeToVBCode)
(write-line "function connFind(cnum,cgrp,cnam)" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "while item.connector[cnum].group <> cgrp" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "while item.connector[cnum].value <> cnam" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "item.connector[c1Num].value = c1Name" writeToVBCode)
(write-line "item.connector[c1Num].locked = true" writeToVBCode)
(write-line "if item.connector[c1Num].group <> c1Grp then" writeToVBCode)
(write-line "connFind(c1Num,c1Grp,c1Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "dim c2Num = 2" writeToVBCode)
(write-line "dim c2Name = \"Raw\"" writeToVBCode)
(write-line "dim c2Grp = \"Round Duct\"" writeToVBCode)
(write-line "function connFind(cnum,cgrp,cnam)" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "while item.connector[cnum].group <> cgrp" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "while item.connector[cnum].value <> cnam" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "item.connector[c2Num].value = c1Name" writeToVBCode)
(write-line "item.connector[c2Num].locked = true" writeToVBCode)
(write-line "if item.connector[c2Num].group <> c1Grp then" writeToVBCode)
(write-line "connFind(c2Num,c2Grp,c2Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
  (close writeToVBCode)
  (command "pselect" sset "")
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (prompt "All instantiated round straight connectors have been locked to RAW per standards.")(princ)
  
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:FIX_LENGTHS ()
  (setq i 0
        sset (ssget "X" '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (close writeToVBCode)
  (vl-file-delete vbCode)
  (while(< i limit)
    (INSIDE_LOOP_VARIABLES sset i)
    (if(and(/= ItemLengthAngle 0)
       (or(wcmatch ItemSourceFileName "*SPIRAL")
          (wcmatch ItemSourceFileName "Tube")
          (wcmatch ItemSourceFileName "STRAIGHT")
          (wcmatch ItemSourceFileName "Straight")
          (wcmatch ItemSourceFileName "OGEE")
          (wcmatch ItemSourceFileName "TRANSITION")
          (wcmatch ItemSourceFileName "Transition")
          (wcmatch ItemSourceFileName "F 41")
          (wcmatch ItemSourceFileName "SQ-RD")
          (wcmatch ItemSourceFileName "Square to Round")
          (wcmatch ItemSourceFileName "Mitered Offset Fixed")))
      (progn
        (setq roundedItemLengthAngle (ROUND ItemLengthAngle 1))
        (if(and(/= roundedItemLengthAngle 0)(/= roundedItemLengthAngle ItemLengthAngle))
          (progn
            (OUTSIDE_LOOP_VARIABLES sset)
            (write-line (strcat "item.dim[\"Length\"].value = " (rtos roundedItemLengthAngle 2)) writeToVBCode)
            (close writeToVBCode)
            (executescript vbCode SSentity)
            (vl-file-delete vbCode)
          );end progn
        );end if
      );end progn
    );end if
        (setq i (1+ i))
  );end while
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Fix_Download ()
  (Fix_Cut_Type)
  (Fix_Round_Straight_Connectors)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Flip ()
  ;;;; FLIP = FLIP THE ITEM AROUND THE CHOSEN OPENING'S AXIS
  (prompt "Apply the attacher arrow to the opening axis that you want to flip around.")(princ)
  (command "._attacher" pause "")
  (command "._rotateatend" "180" "")
  (command "._attachoff")
  (prompt "Item was flipped around the center axis of the chosen opening.")(princ)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Rotate_FSD_Motor () 
  ;;;; 90 = ROTATE AROUND ARROW (3D R0TATE USING ATTACHER) - WILL ROTATE AT POSITIVE 90 DEGREE INCREMENTS AROUND THE CONNECTOR AXIS OF THE SELECTED OPENING
  (command "._attacher" pause "")
  (command "._rotateatend" "90" "")
  (command "._attachoff")
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "if (wildcard(item.dim[1].name,\"Width\") = 1) and (wildcard(item.dim[2].name,\"Depth\") = 1) then" writeToVBCode)
(write-line "dim oldWidth = item.dim[1].value" writeToVBCode)
(write-line "dim oldDepth = item.dim[2].value" writeToVBCode)
(write-line "item.dim[1].value = oldDepth" writeToVBCode)
(write-line "item.dim[2].value = oldWidth" writeToVBCode)
(write-line "end if" writeToVBCode)
  (close writeToVBCode)
  (command "pselect" "p" "")
  (Executescript vbCode)
  (vl-file-delete vbCode)
(princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Rotate_Around_Attacher () 
  ;;;; RA = ROTATE AROUND ARROW (3D R0TATE USING ATTACHER) - WILL ROTATE AT POSITIVE USER INPUT DEGREE AROUND THE CONNECTOR AXIS OF THE SELECTED OPENING
  (command "._attacher" pause "")
  (command "._rotateatend" pause "")
  (command "._attachoff")
(princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Toggle_Grille ()
;;;; TG = TOGGLE GRILLE - WILL TOGGLE NECESSARY ADJUSTMENTS TO MODEL TAPS AS GRILLES
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if item.CID = 818 then" writeToVBCode)
(write-line "if item.connector[3].value <> \"1 Flg In\" then" writeToVBCode)
(write-line "item.dim[\"Branch Width #1\"].value = item.dim[\"Branch Width #1\"].value + 2" writeToVBCode)
(write-line "item.dim[\"Branch Depth #1\"].value = item.dim[\"Branch Depth #1\"].value + 2" writeToVBCode)
(write-line "item.dim[\"Branch Length #1\"].value = item.dim[\"Branch Length #1\"].value - item.dim[\"Branch Length #1\"].value + 13" writeToVBCode)
(write-line "item.dim[\"Branch Extension #1\"].value = item.dim[\"Branch Extension #1\"].value - item.dim[\"Branch Extension #1\"].value + 9" writeToVBCode)
(write-line "item.damper[3].value = \"RECT DAMPER-R\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "REM ==== BEGIN GRILLE FUNCTION ====" writeToVBCode)
(write-line "dim c1Num = 3" writeToVBCode)
(write-line "dim c1Name = \"1 Flg In\"" writeToVBCode)
(write-line "dim c1Grp = \"Duct - Flanged\"" writeToVBCode)
(write-line "function connFind(cnum,cgrp,cnam)" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "while item.connector[cnum].group <> cgrp" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "while item.connector[cnum].value <> cnam" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "item.connector[c1Num].value = c1Name" writeToVBCode)
(write-line "item.connector[c1Num].locked = true" writeToVBCode)
(write-line "if item.connector[c1Num].group <> c1Grp then" writeToVBCode)
(write-line "connFind(c1Num,c1Grp,c1Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "REM ==== END GRILLE FUNCTION ====" writeToVBCode)
(write-line "elseif item.connector[3].value = \"1 Flg In\" then" writeToVBCode)
(write-line "item.dim[\"Branch Width #1\"].value = item.dim[\"Branch Width #1\"].value - 2" writeToVBCode)
(write-line "item.dim[\"Branch Depth #1\"].value = item.dim[\"Branch Depth #1\"].value - 2" writeToVBCode)
(write-line "item.dim[\"Branch Length #1\"].value = item.dim[\"Branch Length #1\"].value - item.dim[\"Branch Length #1\"].value + 6" writeToVBCode)
(write-line "item.dim[\"Branch Extension #1\"].value = item.dim[\"Branch Extension #1\"].value - item.dim[\"Branch Extension #1\"].value + 0" writeToVBCode)
(write-line "item.damper[3].value = \"NONE\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "if (((wildcard(item.service, \"*1/2\"+qt+\"*\") = 1) and ((item.dim[2].value > 36 or item.dim[3].value > 36) or (item.dim[2].value > 18 and item.dim[3].value > 18)))" writeToVBCode)
(write-line "or ((wildcard(item.service, \"*1\"+qt+\"*\") = 1) and ((item.dim[2].value > 36 or item.dim[3].value > 36) or (item.dim[2].value > 18 and item.dim[3].value > 18)))" writeToVBCode)
(write-line "or ((wildcard(item.service, \"*2\"+qt+\"*\") = 1) and ((item.dim[2].value > 26 or item.dim[3].value > 26) or (item.dim[2].value > 18 and item.dim[3].value > 18)))" writeToVBCode)
(write-line "or ((wildcard(item.service, \"*3\"+qt+\"*\") = 1) and ((item.dim[2].value > 22 or item.dim[3].value > 22) or (item.dim[2].value > 18 and item.dim[3].value > 18)))" writeToVBCode)
(write-line "or ((wildcard(item.service, \"*4\"+qt+\"*\") = 1) and ((item.dim[2].value > 22 or item.dim[3].value > 22) or (item.dim[2].value > 18 and item.dim[3].value > 18)))" writeToVBCode)
(write-line "or ((wildcard(item.service, \"*6\"+qt+\"*\") = 1) and (item.dim[2].value > 0 or item.dim[3].value > 0))" writeToVBCode)
(write-line "or ((wildcard(item.service, \"*10\"+qt+\"*\") = 1) and (item.dim[2].value > 0 or item.dim[3].value > 0))) then" writeToVBCode)
(write-line "REM ==== BEGIN TDF FUNCTION ====" writeToVBCode)
(write-line "dim c1Num = 3" writeToVBCode)
(write-line "dim c1Name = \"TDF \"" writeToVBCode)
(write-line "dim c1Grp = \"Duct - Flg Connector\"" writeToVBCode)
(write-line "function connFind(cnum,cgrp,cnam)" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "while item.connector[cnum].group <> cgrp" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "while item.connector[cnum].value <> cnam" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "item.connector[c1Num].value = c1Name" writeToVBCode)
(write-line "item.connector[c1Num].locked = true" writeToVBCode)
(write-line "if item.connector[c1Num].group <> c1Grp then" writeToVBCode)
(write-line "connFind(c1Num,c1Grp,c1Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "REM ==== END TDF FUNCTION ====" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (((wildcard(item.service, \"*1/2\"+qt+\"*\") = 1) and (((item.dim[2].value <= 36 and item.dim[2].value >= 21) and item.dim[3].value <= 18) or ((item.dim[3].value <= 36 and item.dim[3].value >= 21) and item.dim[2].value <= 18)))" writeToVBCode)
(write-line "or ((wildcard(item.service, \"*1\"+qt+\"*\") = 1) and (((item.dim[2].value <= 36 and item.dim[2].value >= 21) and item.dim[3].value <= 18) or ((item.dim[3].value <= 36 and item.dim[3].value >= 21) and item.dim[2].value <= 18)))" writeToVBCode)
(write-line "or ((wildcard(item.service, \"*2\"+qt+\"*\") = 1) and (((item.dim[2].value <= 26 and item.dim[2].value >= 17) and item.dim[3].value <= 18) or ((item.dim[3].value <= 26 and item.dim[3].value >= 17) and item.dim[2].value <= 18)))" writeToVBCode)
(write-line "or ((wildcard(item.service, \"*3\"+qt+\"*\") = 1) and (((item.dim[2].value <= 22 and item.dim[2].value >= 17) and item.dim[3].value <= 18) or ((item.dim[3].value <= 22 and item.dim[3].value >= 17) and item.dim[2].value <= 18)))" writeToVBCode)
(write-line "or ((wildcard(item.service, \"*4\"+qt+\"*\") = 1) and (((item.dim[2].value <= 22 and item.dim[2].value >= 17) and item.dim[3].value <= 18) or ((item.dim[3].value <= 22 and item.dim[3].value >= 17) and item.dim[2].value <= 18)))) then" writeToVBCode)
(write-line "REM ==== BEGIN STAND S&D FUNCTION ====" writeToVBCode)
(write-line "dim c1Num = 3" writeToVBCode)
(write-line "dim c1Name = \"Stand S&D\"" writeToVBCode)
(write-line "dim c1Grp = \"Duct - S&D\"" writeToVBCode)
(write-line "function connFind(cnum,cgrp,cnam)" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "while item.connector[cnum].group <> cgrp" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "while item.connector[cnum].value <> cnam" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "item.connector[c1Num].value = c1Name" writeToVBCode)
(write-line "item.connector[c1Num].locked = true" writeToVBCode)
(write-line "if item.connector[c1Num].group <> c1Grp then" writeToVBCode)
(write-line "connFind(c1Num,c1Grp,c1Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "REM ==== END STAND S&D FUNCTION ====" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (((wildcard(item.service, \"*1/2\"+qt+\"*\") = 1) and (item.dim[2].value < 21 and item.dim[3].value < 21))" writeToVBCode)
(write-line "or ((wildcard(item.service, \"*1\"+qt+\"*\") = 1) and (item.dim[2].value < 21 and item.dim[3].value < 21))" writeToVBCode)
(write-line "or ((wildcard(item.service, \"*2\"+qt+\"*\") = 1) and (item.dim[2].value < 17 and item.dim[3].value < 17))" writeToVBCode)
(write-line "or ((wildcard(item.service, \"*3\"+qt+\"*\") = 1) and (item.dim[2].value < 17 and item.dim[3].value < 17))" writeToVBCode)
(write-line "or ((wildcard(item.service, \"*4\"+qt+\"*\") = 1) and (item.dim[2].value < 17 and item.dim[3].value < 17))) then" writeToVBCode)
(write-line "REM ==== BEGIN FLAT S&D FUNCTION ====" writeToVBCode)
(write-line "dim c1Num = 3" writeToVBCode)
(write-line "dim c1Name = \"Flat S&D\"" writeToVBCode)
(write-line "dim c1Grp = \"Duct - S&D\"" writeToVBCode)
(write-line "function connFind(cnum,cgrp,cnam)" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "while item.connector[cnum].group <> cgrp" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "while item.connector[cnum].value <> cnam" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "item.connector[c1Num].value = c1Name" writeToVBCode)
(write-line "item.connector[c1Num].locked = true" writeToVBCode)
(write-line "if item.connector[c1Num].group <> c1Grp then" writeToVBCode)
(write-line "connFind(c1Num,c1Grp,c1Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "REM ==== END FLAT S&D FUNCTION ====" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.CID = 7 then" writeToVBCode)
(write-line "if item.connector[1].value <> \"1 Flg In\" then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value + 2" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value + 2" writeToVBCode)
(write-line "item.dim[3].value = item.dim[3].numvalue - item.dim[3].numvalue + 13" writeToVBCode)
(write-line "item.dim[4].value = item.dim[4].value - item.dim[4].value + 9" writeToVBCode)
(write-line "item.damper[1].value = \"RECT DAMPER-R\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "REM ==== BEGIN GRILLE FUNCTION ====" writeToVBCode)
(write-line "dim c1Num = 1" writeToVBCode)
(write-line "dim c1Name = \"1 Flg In\"" writeToVBCode)
(write-line "dim c1Grp = \"Duct - Flanged\"" writeToVBCode)
(write-line "function connFind(cnum,cgrp,cnam)" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "while item.connector[cnum].group <> cgrp" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "while item.connector[cnum].value <> cnam" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "item.connector[c1Num].value = c1Name" writeToVBCode)
(write-line "item.connector[c1Num].locked = true" writeToVBCode)
(write-line "if item.connector[c1Num].group <> c1Grp then" writeToVBCode)
(write-line "connFind(c1Num,c1Grp,c1Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "REM ==== END GRILLE FUNCTION ====" writeToVBCode)
(write-line "elseif item.connector[1].value = \"1 Flg In\" then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value - 2" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value - 2" writeToVBCode)
(write-line "item.dim[3].value = item.dim[3].numvalue - item.dim[3].numvalue + 6" writeToVBCode)
(write-line "item.dim[4].value = item.dim[4].value - item.dim[4].value + 1.5" writeToVBCode)
(write-line "item.damper[1].value = \"NONE\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "if (((wildcard(item.service, \"*1/2\"+qt+\"*\") = 1) and ((item.dim[1].value > 36 or item.dim[2].value > 36) or (item.dim[1].value > 18 and item.dim[2].value > 18)))" writeToVBCode)
(write-line "or ((wildcard(item.service, \"*1\"+qt+\"*\") = 1) and ((item.dim[1].value > 36 or item.dim[2].value > 36) or (item.dim[1].value > 18 and item.dim[2].value > 18)))" writeToVBCode)
(write-line "or ((wildcard(item.service, \"*2\"+qt+\"*\") = 1) and ((item.dim[1].value > 26 or item.dim[2].value > 26) or (item.dim[1].value > 18 and item.dim[2].value > 18)))" writeToVBCode)
(write-line "or ((wildcard(item.service, \"*3\"+qt+\"*\") = 1) and ((item.dim[1].value > 22 or item.dim[2].value > 22) or (item.dim[1].value > 18 and item.dim[2].value > 18)))" writeToVBCode)
(write-line "or ((wildcard(item.service, \"*4\"+qt+\"*\") = 1) and ((item.dim[1].value > 22 or item.dim[2].value > 22) or (item.dim[1].value > 18 and item.dim[2].value > 18)))" writeToVBCode)
(write-line "or ((wildcard(item.service, \"*6\"+qt+\"*\") = 1) and (item.dim[1].value > 0 or item.dim[2].value > 0))" writeToVBCode)
(write-line "or ((wildcard(item.service, \"*10\"+qt+\"*\") = 1) and (item.dim[1].value > 0 or item.dim[2].value > 0))) then" writeToVBCode)
(write-line "REM ==== BEGIN TDF FUNCTION ====" writeToVBCode)
(write-line "dim c1Num = 1" writeToVBCode)
(write-line "dim c1Name = \"TDF \"" writeToVBCode)
(write-line "dim c1Grp = \"Duct - Flg Connector\"" writeToVBCode)
(write-line "function connFind(cnum,cgrp,cnam)" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "while item.connector[cnum].group <> cgrp" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "while item.connector[cnum].value <> cnam" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "item.connector[c1Num].value = c1Name" writeToVBCode)
(write-line "item.connector[c1Num].locked = true" writeToVBCode)
(write-line "if item.connector[c1Num].group <> c1Grp then" writeToVBCode)
(write-line "connFind(c1Num,c1Grp,c1Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "REM ==== END TDF FUNCTION ====" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (((wildcard(item.service, \"*1/2\"+qt+\"*\") = 1) and (((item.dim[1].value <= 36 and item.dim[1].value >= 21) and item.dim[2].value <= 18) or ((item.dim[2].value <= 36 and item.dim[2].value >= 21) and item.dim[1].value <= 18)))" writeToVBCode)
(write-line "or ((wildcard(item.service, \"*1\"+qt+\"*\") = 1) and (((item.dim[1].value <= 36 and item.dim[1].value >= 21) and item.dim[2].value <= 18) or ((item.dim[2].value <= 36 and item.dim[2].value >= 21) and item.dim[1].value <= 18)))" writeToVBCode)
(write-line "or ((wildcard(item.service, \"*2\"+qt+\"*\") = 1) and (((item.dim[1].value <= 26 and item.dim[1].value >= 17) and item.dim[2].value <= 18) or ((item.dim[2].value <= 26 and item.dim[2].value >= 17) and item.dim[1].value <= 18)))" writeToVBCode)
(write-line "or ((wildcard(item.service, \"*3\"+qt+\"*\") = 1) and (((item.dim[1].value <= 22 and item.dim[1].value >= 17) and item.dim[2].value <= 18) or ((item.dim[2].value <= 22 and item.dim[2].value >= 17) and item.dim[1].value <= 18)))" writeToVBCode)
(write-line "or ((wildcard(item.service, \"*4\"+qt+\"*\") = 1) and (((item.dim[1].value <= 22 and item.dim[1].value >= 17) and item.dim[2].value <= 18) or ((item.dim[2].value <= 22 and item.dim[2].value >= 17) and item.dim[1].value <= 18)))) then" writeToVBCode)
(write-line "REM ==== BEGIN STAND S&D FUNCTION ====" writeToVBCode)
(write-line "dim c1Num = 1" writeToVBCode)
(write-line "dim c1Name = \"Stand S&D\"" writeToVBCode)
(write-line "dim c1Grp = \"Duct - S&D\"" writeToVBCode)
(write-line "function connFind(cnum,cgrp,cnam)" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "while item.connector[cnum].group <> cgrp" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "while item.connector[cnum].value <> cnam" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "item.connector[c1Num].value = c1Name" writeToVBCode)
(write-line "item.connector[c1Num].locked = true" writeToVBCode)
(write-line "if item.connector[c1Num].group <> c1Grp then" writeToVBCode)
(write-line "connFind(c1Num,c1Grp,c1Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "REM ==== END STAND S&D FUNCTION ====" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (((wildcard(item.service, \"*1/2\"+qt+\"*\") = 1) and (item.dim[1].value < 21 and item.dim[2].value < 21))" writeToVBCode)
(write-line "or ((wildcard(item.service, \"*1\"+qt+\"*\") = 1) and (item.dim[1].value < 21 and item.dim[2].value < 21))" writeToVBCode)
(write-line "or ((wildcard(item.service, \"*2\"+qt+\"*\") = 1) and (item.dim[1].value < 17 and item.dim[2].value < 17))" writeToVBCode)
(write-line "or ((wildcard(item.service, \"*3\"+qt+\"*\") = 1) and (item.dim[1].value < 17 and item.dim[2].value < 17))" writeToVBCode)
(write-line "or ((wildcard(item.service, \"*4\"+qt+\"*\") = 1) and (item.dim[1].value < 17 and item.dim[2].value < 17))) then" writeToVBCode)
(write-line "REM ==== BEGIN FLAT S&D FUNCTION ====" writeToVBCode)
(write-line "dim c1Num = 1" writeToVBCode)
(write-line "dim c1Name = \"Flat S&D\"" writeToVBCode)
(write-line "dim c1Grp = \"Duct - S&D\"" writeToVBCode)
(write-line "function connFind(cnum,cgrp,cnam)" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "while item.connector[cnum].group <> cgrp" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "while item.connector[cnum].value <> cnam" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "item.connector[c1Num].value = c1Name" writeToVBCode)
(write-line "item.connector[c1Num].locked = true" writeToVBCode)
(write-line "if item.connector[c1Num].group <> c1Grp then" writeToVBCode)
(write-line "connFind(c1Num,c1Grp,c1Name)" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "REM ==== END FLAT S&D FUNCTION ====" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
  (close writeToVBCode)
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Add_Grille ()
  ;;;; AG = ADD GRILLE - ADDS GRILLE TO SELECTED OPENING
  (command "._attacher" pause "")
  (command (takeoff Grille))
  (command "._attachoff")
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if item.CID = 505 then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value - 2" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value - 2" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
  (close writeToVBCode)
  (command "pselect" (entlast) "")
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (command "._attachoff")
(princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Paste_To_Original_Coordinates () 
  ;;;; PO = PASTE ORIGINAL - PASTE CLIPBOARD TO ORIGINAL COORDINATES
  (command "._pasteorig")
(princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Improved_Section_View ( / a b) 
  ;;;; SV = SECTION VIEW - PICK YOUR SECTION CUT
  (*push-error-using-command*)
  (defun tempError ( msg )
    (if(and(not(= Pt1 nil))(not(= Pt2 nil)))
      (progn
        (command-s "sectional" Pt1 Pt2)
        (setq sset (ssget "X" '((0 . "MAPS_SOLID"))));end setq
        (command-s "._zoom" "object" sset "")
        (command-s "ucs" "view")
        (princ "Standard sectional command utilized after error")
      );end progn
    );end ifs
    (setvar 'osmode oldOSMode)
    (setvar 'autosnap oldAutoSnap)
    (setvar 'orthomode oldOrthoMode)
    (setq *ERROR* oldError
          oldError nil)
    (command-s)(command-s)
    (princ) 
  );end defun
  (OUTSIDE_LOOP_VARIABLES nil)
  (if(= UCSName "Unnamed")(progn(terpri)(princ "Warning: You are in an unnamed USC, double check your viewcube to confirm UCS orientation")(terpri)))
  (setq oldError *ERROR*
        *ERROR* tempError
        oldOSMode (getvar "osmode")
        oldAutoSnap (getvar "autosnap")
        oldOrthoMode (getvar "orthomode"));end setq
  (setvar 'orthomode 0)
  (setvar 'osmode 16384)
  (setvar 'autosnap 47)
  (setvar 'osnapz 0)
  (setq Pt1 nil
        Pt2 nil
        Pt1 (getpoint "\nPick first point: ")
        Pt2 (getpoint Pt1 "\nPick second point: "))
  (setq sset (ssget "_C" Pt1 Pt2 '((0 . "MAPS_SOLID"))))
  (if(not(= sset nil))
    (progn
      (setq i (if(>=(-(sslength sset)1)0)(-(sslength sset)1)(sslength sset)));end setq / if
      (INSIDE_LOOP_VARIABLES sset i)
      (command "SECTIONAL" Pt1 Pt2)
      (command "UCS" "W")
      (command "UCS" "VIEW")
      (command "CAL" "ucsC1xyz=w2u(c1xyz)")
      (command "UCS" "M" (strcat(rtos(car ucsC1xyz)2) "," (rtos(cadr ucsC1xyz)2) "," (rtos(caddr ucsC1xyz)2)))
      (command "CAL" "ucsC1xyz=w2u(c1xyz)")
      (command "._zoom" "object" sset "")
      (princ)
    );end progn
    (progn
      (command "sectional" Pt1 Pt2)
      (setq sset (ssget "X" '((0 . "MAPS_SOLID"))));end setq
      (command "._zoom" "object" sset "")
      (command "ucs" "view")
      (princ "Standard sectional command utilized")
      (princ)
    );end progn
  );end if
  (setvar 'osmode oldOSMode)
  (setvar 'autosnap oldAutoSnap)
  (setvar 'orthomode oldOrthoMode)
  (setq *ERROR* oldError)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Last_View () 
  ;;;; LV = LAST VIEW - ROLL BACK TO LAST VIEW (BEFORE SECTION CUT)
  (command "LASTVIEW")
  (RESET_UCS)
  ;(command "ucs" "p")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Last_View_WCS () 
  ;;;; LV = LAST VIEW - ROLL BACK TO LAST VIEW (BEFORE SECTION CUT)
  (command "LASTVIEW")
  (command "ucs" "w")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:World_View () 
  ;;;; WV = WORLD VIEW - BACK TO WORLD VIEW (BEFORE SECTION CUT)
  (command "ucs" "world")
  (command "planview")(command)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Fix_Variables () 
  (setvar 'filetabpreview 0)
  (setvar 'filetabthumbhover 0)
  (setvar 'msltscale 0)
  (setvar 'psltscale 0)
  (setvar 'celtscale 1)
  (setvar 'ltscale 48)
  (setvar 'cmdecho 1)
  (setvar 'lwdisplay 0)
  (setvar 'selectionannodisplay 0)
  (setvar 'annoallvisible 1)
  (setvar 'annoautoscale 1)
  (if(and(not(=(getvar 'dimscale)0))(not(=(getvar 'dimscale)48)))(setvar 'dimscale 48))
  (setvar 'layernotify 0)
  (setvar 'layerevalctl 0)
  (setvar 'filedia 1)
  (setvar 'proxygraphics 1)
  (setvar 'proxynotice 0)
  (setvar 'proxyshow 1)
  (setvar 'visretain 1)
  (setvar 'cecolor "bylayer")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Toggle_Dimside () 
;;;; TD = TOGGLE DIMSIDE - SWITCH BETWEEN READING DIMS INSIDE/OUTSIDE
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if item.dimside = \"outside\" then" writeToVBCode)
(write-line "item.dimside = \"inside\"" writeToVBCode)
(write-line "elseif item.dimside = \"inside\" then" writeToVBCode)
(write-line "item.dimside = \"outside\"" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
  (close writeToVBCode)
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Toggle_Clearance_Zone () 
  ;;;; c:TNF-Toggle_No-Fly_Zone - WRAP DUCT WITH A NO-FLY ZONE
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if item.doublewall = false then" writeToVBCode)
(write-line "dim zoneThickness = inputbox(\"No-Fly Zone Thickness:\")" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "item.ispeclock = false" writeToVBCode)
(write-line "item.insspec = \"None\"" writeToVBCode)
(write-line "item.ispeclock = true" writeToVBCode)
(write-line "item.dwlock = false" writeToVBCode)
(write-line "item.doublewall = true" writeToVBCode)
(write-line "item.dwlock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "item.skinmateriallock = false" writeToVBCode)
(write-line "item.skinmaterial = \"Ductwork No-Fly Zone\"" writeToVBCode)
(write-line "item.skinmateriallock = true" writeToVBCode)
(write-line "item.insulation.status = \"OUTSIDE\"" writeToVBCode)
(write-line "item.insulation.materiallock = false" writeToVBCode)
(write-line "item.insulation.material = \"Ductwork No-Fly Zone: Ductwork No-Fly Zone\"" writeToVBCode)
(write-line "item.insulation.materiallock = true" writeToVBCode)
(write-line "item.insulation.gauge = zoneThickness" writeToVBCode)
(write-line "item.dimsidelock = false" writeToVBCode)
(write-line "item.dimside = \"inside\"" writeToVBCode)
(write-line "item.dimsidelock = true" writeToVBCode)
(write-line "item.skinside = \"outside\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "elseif item.doublewall = true then" writeToVBCode)
(write-line "dim insulationType = inputbox(\"Type:HVAC[Liner]/Duct[Wrap]/[Off]/[Fire]Barrier?:\")" writeToVBCode)
(write-line "if insulationType = \"Off\" or insulationType = \"off\" or insulationType = \"OFF\" then" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "dim insulStatus = \"OFF\"" writeToVBCode)
(write-line "item.dwlock = false" writeToVBCode)
(write-line "item.doublewall = false" writeToVBCode)
(write-line "item.dwlock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "item.insulation.status = insulStatus" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "elseif insulationType = \"Liner\" or insulationType = \"liner\" or insulationType = \"LINER\" or insulationType = \"Wrap\" or insulationType = \"wrap\" or insulationType = \"WRAP\" or insulationType = \"Fire\" or insulationType = \"fire\" or insulationType = \"FIRE\" then" writeToVBCode)
(write-line "dim insulationThickness = inputbox(\"Enter insulation thickness:\")" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if insulationType = \"Liner\" or insulationType = \"liner\" or insulationType = \"LINER\" then" writeToVBCode)
(write-line "dim insulMat = \"HVAC Liner: 1-1/2 LB\"" writeToVBCode)
(write-line "dim insulStatus = \"INSIDE\"" writeToVBCode)
(write-line "item.dwlock = false" writeToVBCode)
(write-line "item.doublewall = false" writeToVBCode)
(write-line "item.dwlock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "item.insulation.materiallock = false" writeToVBCode)
(write-line "item.insulation.material = insulMat" writeToVBCode)
(write-line "item.insulation.materiallock = true" writeToVBCode)
(write-line "item.insulation.gauge = insulationThickness" writeToVBCode)
(write-line "item.insulation.status = insulStatus" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif insulationType = \"Wrap\" or insulationType = \"wrap\" or insulationType = \"WRAP\" then" writeToVBCode)
(write-line "dim insulMat = \"HVAC Liner: Duct Wrap\"" writeToVBCode)
(write-line "dim insulStatus = \"OUTSIDE\"" writeToVBCode)
(write-line "item.dwlock = false" writeToVBCode)
(write-line "item.doublewall = false" writeToVBCode)
(write-line "item.dwlock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "item.insulation.materiallock = false" writeToVBCode)
(write-line "item.insulation.material = insulMat" writeToVBCode)
(write-line "item.insulation.materiallock = true" writeToVBCode)
(write-line "item.insulation.gauge = insulationThickness" writeToVBCode)
(write-line "item.insulation.status = insulStatus" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif insulationType = \"Fire\" or insulationType = \"fire\" or insulationType = \"FIRE\" then" writeToVBCode)
(write-line "dim insulMat = \"Fire Barrier Duct Wrap: Fire Barrier Duct Wrap\"" writeToVBCode)
(write-line "dim insulStatus = \"OUTSIDE\"" writeToVBCode)
(write-line "item.dwlock = false" writeToVBCode)
(write-line "item.doublewall = false" writeToVBCode)
(write-line "item.dwlock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "item.insulation.materiallock = false" writeToVBCode)
(write-line "item.insulation.material = insulMat" writeToVBCode)
(write-line "item.insulation.materiallock = true" writeToVBCode)
(write-line "item.insulation.gauge = insulationThickness" writeToVBCode)
(write-line "item.insulation.status = insulStatus" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end if" writeToVBCode)
  (close writeToVBCode)
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Dimside_Off () 
;;;; DSF = DIMSIDE OFF - READ DIMS OUTSIDE
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "item.dimside = \"outside\"" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
  (close writeToVBCode)
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Dimside_On () 
;;;; DSO = DIMSIDE OFF - READ DIMS INSIDE
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "item.dimside = \"inside\"" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
  (close writeToVBCode)
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:MultiText_Box ()
  (initcommandversion 1)
  (setq oldCurrent (getvar 'clayer))
  (command "LAYER" "SET" "M-AMC-TEXT" "")
  (initcommandversion 2)
  (setq a (getpoint "\nPick first point: ")
	bX (+ (nth 0 a) 18)
	bY (+ (nth 1 a) 6)
	bZ (nth 2 a)
        b (list bX bY bZ))
  (command "-mtext" a b "" "" "")
  (initcommandversion 1)
  (command "pselect" (entlast) "")
  (command "mtedit")
  (command "LAYER" "SET" oldCurrent "")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
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
;**************************************************************************************************************************************************
(defun c:Create_DoubleWall_Patterns (/ doublewsset i limit mysnap ent innerPatterns)
  (setq doublewsset (ssget  '((0 . "MAPS_SOLID")));Choose selection set
        i 0
	a "false"
        dwlimit (sslength doublewsset));Set loop limit
    (while (< i dwlimit);Start the Loop
      (setq dwent (ssname doublewsset i)
            dwentlist (entget(ssname doublewsset i))
            dwItemCID (cdr(nth 9 dwentlist)));end setq
      (if (and(= a "false")(or ;set mini loop / condition designator
        (wcmatch dwItemCID "40")
        (wcmatch dwItemCID "866")
        (wcmatch dwItemCID "330")
        (wcmatch dwItemCID "8")
        (wcmatch dwItemCID "30")
        (wcmatch dwItemCID "2")
        (wcmatch dwItemCID "522")
        (wcmatch dwItemCID "802")
        (wcmatch dwItemCID "382")
        (wcmatch dwItemCID "1")
        (wcmatch dwItemCID "505")
        (wcmatch dwItemCID "519")
        (wcmatch dwItemCID "20")
        (wcmatch dwItemCID "17")))
          (progn(setq roofDuct (ssadd); Create ss of patterns
                      firstOuter dwent);end setq
                (ssadd firstOuter roofDuct)
                (setq a "true")
                (setq i (1+ i)));end progn (then) / Add first pattern to ss
          (if (and(= a "true")(or
            (wcmatch dwItemCID "40")
            (wcmatch dwItemCID "866")
            (wcmatch dwItemCID "330")
            (wcmatch dwItemCID "8")
            (wcmatch dwItemCID "30")
            (wcmatch dwItemCID "2")
            (wcmatch dwItemCID "522")
            (wcmatch dwItemCID "802")
            (wcmatch dwItemCID "382")
            (wcmatch dwItemCID "1")
            (wcmatch dwItemCID "505")
            (wcmatch dwItemCID "519")
            (wcmatch dwItemCID "20")
            (wcmatch dwItemCID "17")))
              (progn(setq addOuter dwent)
              (ssadd addOuter roofDuct);end progn (else) / Add subsequent patterns per loop
              (setq i (1+ i)));increment the parent loop
              (if (not(or
                (wcmatch dwItemCID "40")
                (wcmatch dwItemCID "866")
                (wcmatch dwItemCID "330")
                (wcmatch dwItemCID "8")
                (wcmatch dwItemCID "30")
                (wcmatch dwItemCID "2")
                (wcmatch dwItemCID "522")
                (wcmatch dwItemCID "802")
                (wcmatch dwItemCID "382")
                (wcmatch dwItemCID "1")
                (wcmatch dwItemCID "505")
                (wcmatch dwItemCID "519")
                (wcmatch dwItemCID "20")
                (wcmatch dwItemCID "17")))
                  (setq i (1+ i));increment the parent loop
              );end if
	  );end if
      );end if
   );end while
   (if(not(=(sslength roofDuct) nil));If sset isn't empty...
    (progn
      (setq j 0;set the count
            limit (sslength roofDuct);Set loop limit
            mysnap (getvar "osmode");Save snap settings
            );end setq
      (setvar "osmode" 0)
      (command "ucs" "world")
      (while (< j limit);Start the Loop
        (setq ent (ssname roofDuct j)
              entlist (entget(ssname roofDuct j))
              ItemCID (cdr(nth 9 entlist)));end setq
        (command "_.copybase" '(0 0 0) ent "")
        (command "_.pasteclip" '(0 0 0))
        (if (< j 1)
            (progn(setq innerPatterns (ssadd); Create ss of patterns
                        firstPattern (entlast));end setq
            (ssadd firstPattern innerPatterns));end progn (then) / Add first pattern to ss
              (progn(setq addPattern (entlast))
              (ssadd addPattern innerPatterns));end progn (else) / Add subsequent patterns per loop
        );end if
            (setq j (1+ j));increment loop by 1
      );end while
      (setvar "osmode" mysnap)
      (command "pselect" innerPatterns "")
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "dim insGauge = item.insulation.gauge" writeToVBCode)
(write-line "item.alias = \"InsidePattern\"" writeToVBCode)
(write-line "item.insulation.status = \"OFF\"" writeToVBCode)
(write-line "rem Reduce Size and Adjust Length for Inside Pattern" writeToVBCode)
(write-line "if item.CID = 40 or item.CID = 522 then" writeToVBCode)
(write-line "dim length = item.dim[\"Length\"].numvalue - 0.25" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value - (insGauge * 2)" writeToVBCode)
(write-line "item.connector[1].value = \"None\"" writeToVBCode)
(write-line "item.connector[1].locked = true" writeToVBCode)
(write-line "item.connector[2].value = \"None\"" writeToVBCode)
(write-line "item.connector[2].locked = true" writeToVBCode)
(write-line "item.dim[\"Length\"].value = length" writeToVBCode)
(write-line "item.notes = \"Doublewall Inside Pattern\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 866 or item.CID = 802 or item.CID = 30 or item.CID = 382 or item.CID = 1 or item.CID = 505 or item.CID = 519 then" writeToVBCode)
(write-line "dim length = item.dim[\"Length\"].numvalue - 0.25" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value - (insGauge * 2)" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value - (insGauge * 2)" writeToVBCode)
(write-line "item.connector[1].value = \"None\"" writeToVBCode)
(write-line "item.connector[1].locked = true" writeToVBCode)
(write-line "item.connector[2].value = \"None\"" writeToVBCode)
(write-line "item.connector[2].locked = true" writeToVBCode)
(write-line "item.dim[\"Length\"].value = length" writeToVBCode)
(write-line "item.notes = \"Doublewall Inside Pattern\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 20 then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value - (insGauge * 2)" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value - (insGauge * 2)" writeToVBCode)
(write-line "if (wildcard(item.dim[3].value,\"Equal\") = 1) then" writeToVBCode)
(write-line "item.dim[3].value = item.dim[1].value" writeToVBCode)
(write-line "elseif (wildcard(item.dim[3].value,\"Equal\") = 0) then" writeToVBCode)
(write-line "item.dim[3].value = item.dim[3].value - (insGauge * 2)" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "dim ItemCID20Length1 = item.dim[5].value + (insGauge - 0.125)" writeToVBCode)
(write-line "dim ItemCID20Length2 = item.dim[6].value + (insGauge - 0.125)" writeToVBCode)
(write-line "item.connector[1].value = \"None\"" writeToVBCode)
(write-line "item.connector[1].locked = true" writeToVBCode)
(write-line "item.connector[2].value = \"None\"" writeToVBCode)
(write-line "item.connector[2].locked = true" writeToVBCode)
(write-line "item.dim[5].value = ItemCID20Length1" writeToVBCode)
(write-line "item.dim[6].value = ItemCID20Length2" writeToVBCode)
(write-line "item.notes = \"Doublewall Inside Pattern\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 17 then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value - (insGauge * 2)" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value - (insGauge * 2)" writeToVBCode)
(write-line "if (wildcard(item.dim[3].value,\"Equal\") = 1) then" writeToVBCode)
(write-line "item.dim[3].value = item.dim[1].value" writeToVBCode)
(write-line "elseif (wildcard(item.dim[3].value,\"Equal\") = 0) then" writeToVBCode)
(write-line "item.dim[3].value = item.dim[3].value - (insGauge * 2)" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if (wildcard(item.dim[7].value, \"Width\") = 1) then" writeToVBCode)
(write-line "dim length = item.dim[1].numvalue + ((insGauge * 2) - 0.25)" writeToVBCode)
(write-line "item.connector[1].value = \"None\"" writeToVBCode)
(write-line "item.connector[1].locked = true" writeToVBCode)
(write-line "item.connector[2].value = \"None\"" writeToVBCode)
(write-line "item.connector[2].locked = true" writeToVBCode)
(write-line "item.dim[7].value = length" writeToVBCode)
(write-line "elseif (wildcard(item.dim[7].value, \"Half Width\") = 1) then" writeToVBCode)
(write-line "dim length = (item.dim[1].numvalue / 2) + ((insGauge * 2) - 0.25)" writeToVBCode)
(write-line "item.connector[1].value = \"None\"" writeToVBCode)
(write-line "item.connector[1].locked = true" writeToVBCode)
(write-line "item.connector[2].value = \"None\"" writeToVBCode)
(write-line "item.connector[2].locked = true" writeToVBCode)
(write-line "item.dim[7].value = length" writeToVBCode)
(write-line "else" writeToVBCode)
(write-line "dim length = item.dim[7].numvalue + ((insGauge * 2) - 0.25)" writeToVBCode)
(write-line "item.connector[1].value = \"None\"" writeToVBCode)
(write-line "item.connector[1].locked = true" writeToVBCode)
(write-line "item.connector[2].value = \"None\"" writeToVBCode)
(write-line "item.connector[2].locked = true" writeToVBCode)
(write-line "item.dim[7].value = length" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.notes = \"Doublewall Inside Pattern\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 8 then" writeToVBCode)
(write-line "dim length = item.dim[\"Length\"].numvalue - 0.25" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value - (insGauge * 2)" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value - (insGauge * 2)" writeToVBCode)
(write-line "if (wildcard(item.dim[3].value,\"Equal\") = 1) then" writeToVBCode)
(write-line "item.dim[3].value = item.dim[1].value" writeToVBCode)
(write-line "elseif (wildcard(item.dim[3].value,\"Equal\") = 0) then" writeToVBCode)
(write-line "item.dim[3].value = item.dim[3].value - (insGauge * 2)" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.connector[1].value = \"None\"" writeToVBCode)
(write-line "item.connector[1].locked = true" writeToVBCode)
(write-line "item.connector[2].value = \"None\"" writeToVBCode)
(write-line "item.connector[2].locked = true" writeToVBCode)
(write-line "item.dim[\"Length\"].value = length" writeToVBCode)
(write-line "item.notes = \"Doublewall Inside Pattern\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 330 or item.CID = 2 then" writeToVBCode)
(write-line "dim length = item.dim[\"Length\"].numvalue - 0.25" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value - (insGauge * 2)" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value - (insGauge * 2)" writeToVBCode)
(write-line "item.dim[3].value = item.dim[3].value - (insGauge * 2)" writeToVBCode)
(write-line "if (wildcard(item.dim[3].value,\"Equal\") = 1) then" writeToVBCode)
(write-line "item.dim[4].value = item.dim[2].value" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.dim[3].value,\"Equal\") = 0) then" writeToVBCode)
(write-line "item.dim[4].value = item.dim[4].value - (insGauge * 2)" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.connector[1].value = \"None\"" writeToVBCode)
(write-line "item.connector[1].locked = true" writeToVBCode)
(write-line "item.connector[2].value = \"None\"" writeToVBCode)
(write-line "item.connector[2].locked = true" writeToVBCode)
(write-line "item.dim[\"Length\"].value = length" writeToVBCode)
(write-line "item.notes = \"Doublewall Inside Pattern\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.update()" writeToVBCode)
      (close writeToVBCode)
      (Executescript vbCode)
      (vl-file-delete vbCode)
      (removemaptext innerPatterns 127)
      (settext innerPatterns 8 "on")
      (command "pselect" innerPatterns "")
      (princ)
    );end progn
  );end if
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Select_DoubleWall_Patterns (/)
  (vl-load-com)
  (setq aliasDW (ssget "_X" '((0 . "MAPS_SOLID")));Choose selection set
        i 0
        limit (sslength aliasDW);Set loop limit
        DWpats (ssadd))
    (while (< i limit);Start the Loop
      (setq ent (ssname aliasDW i)
            entlist (entget(ssname aliasDW i))
            ItemCID (cdr(nth 9 entlist))
            Notes (vlax-get-property (vlax-ename->vla-object ent) "Notes"));end setq
      (if(wcmatch Notes "Doublewall Inside Pattern")
        (ssadd ent DWpats)
      );end if
          (setq i (1+ i));increment the parent loop
    );endwhile
  (command "pselect" DWpats "")
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:S0 ();Snaps 0 - No Snaps
  (setvar 'osmode 16384)
  (setq snapNumb (getvar 'osmode))
  (prompt "Unchecked all snaps; Current OSMode # is: ")(princ snapNumb)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:S1 ();Snaps 1 - Center & Node
  (setvar 'osmode 12)
  (setq snapNumb (getvar 'osmode))
  (prompt "CENTER & NODE snaps active; Current OSMode # is: ")(princ snapNumb)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:S2 ();Snaps 2 - Endpoint & Perpendicular
  (setvar 'osmode 129)
  (setq snapNumb (getvar 'osmode))
  (prompt "ENDPOINT & PERPENDICULAR snaps active; Current OSMode # is: ")(princ snapNumb)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:S3 ();Snaps 3 - Center & Perpendicular
  (setvar 'osmode 132)
  (setq snapNumb (getvar 'osmode))
  (prompt "CENTER & PERPENDICULAR snaps active; Current OSMode # is: ")(princ snapNumb)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:S4 ();Snaps 4 - Center & Quadrant
  (setvar 'osmode 20)
  (setq snapNumb (getvar 'osmode))
  (prompt "CENTER & QUARDRANT snaps active; Current OSMode # is: ")(princ snapNumb)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:S5 ();Snaps 5 - Just Endpoint
  (setvar 'osmode 1)
  (setq snapNumb (getvar 'osmode))
  (prompt "Only ENDPOINT snaps active; Current OSMode # is: ")(princ snapNumb)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:S6 ();Snaps 6 - Just Perpendicular
  (setvar 'osmode 128)
  (setq snapNumb (getvar 'osmode))
  (prompt "Only PERPENDICULAR snaps active; Current OSMode # is: ")(princ snapNumb)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:S7 ();Snaps 7 - Just Midpoint
  (setvar 'osmode 2)
  (setq snapNumb (getvar 'osmode))
  (prompt "Only MIDPOINT snaps active; Current OSMode # is: ")(princ snapNumb)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:S8 ();Snaps 8 - Just Intersection
  (setvar 'osmode 32)
  (setq snapNumb (getvar 'osmode))
  (prompt "Only INTERSECTION snaps active; Current OSMode # is: ")(princ snapNumb)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:S9 ();Snaps 3 - Center & Perpendicular
  (setvar 'osmode 140)
  (setq snapNumb (getvar 'osmode))
  (prompt "CENTER, NODE & PERPENDICULAR snaps active; Current OSMode # is: ")(princ snapNumb)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Rotate_Reference () 
  ;;;; RR = ROTATE REFERENCE
  (setq i 0
        sset (ssget))
  (OUTSIDE_LOOP_VARIABLES sset)
  (command "UCS" "W")
  (INSIDE_LOOP_VARIABLES sset i)
  (setq pt1 (getpoint "\nPick base point: "));end setq
  (setq pt2 (getpoint pt1 "\nPick reference point: "))
  (command "UCS" "VIEW")
  (command "CAL" "translatedPt1=w2u(pt1)")
  (command "CAL" "translatedPt2=w2u(pt2)")
  (command "_ROTATE" sset "" translatedPt1 "R" translatedPt1 translatedPt2 PAUSE)
  (command "CAL" "ucsC1xyz=w2u(c1xyz)")
  (command "UCS" "M" (strcat(rtos(car ucsC1xyz)2) "," (rtos(cadr ucsC1xyz)2) "," (rtos(caddr ucsC1xyz)2)))
(princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Item_Specification_Repair ()
;;;; ISR = SPECIFICATION REPAIR
  (OUTSIDE_LOOP_VARIABLES nil)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if (wildcard(item.service,\"*combustion*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-2''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*exhaust*\" + \"*-10*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-10''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*exhaust*\" + \"*-6*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-6''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*exhaust*\" + \"*-4*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-4''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*exhaust*\" + \"*inslab*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-2''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*exhaust*\" + \"*low*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-2''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*exhaust*\" + \"*medium*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-3''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*exhaust*\" + \"*weld*\" + \"*-10*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-10''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*exhaust*\" + \"*weld*\" + \"*-6*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-6''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*exhaust*\" + \"*weld*\" + \"*-4*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-4''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*exhaust*\" + \"*weld*\" + \"*-2*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-2''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*outside*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-2''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*return*\" + \"*-10*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-10''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*return*\" + \"*-6*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-6''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*return*\" + \"*-4*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-4''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*return*\" + \"*-2*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-2''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*return*\" + \"*medium*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-3''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*supply*\" + \"*+10*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"+10''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*supply*\" + \"*+6*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"+6''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*supply*\" + \"*+4*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"+4''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*supply*\" + \"*medium*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"+3''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*supply*\" + \"*low*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"+2''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*transfer*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-2''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
  (close writeToVBCode)
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (prompt "Item specification re-evaluated.")(princ)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Insert_ACAD_Layout_Points (/)
  ; Apply Trimble Points
  (vl-load-com)
  (setq sset (ssget "_X" '((0 . "MAPS_SOLID")));Choose selection set
        i 0);end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (if(not(= sset nil))
    (progn
    (command "_.-insert" seismicBlock (list 0 0 0) "" "" "")
    (command "explode" (entlast))
    (setq refPoint (entlast));end setq
    (command "-purge" "B" "TrimbleSeismic" "N" "")
    (while (< i limit);Start the Loop
      (INSIDE_LOOP_VARIABLES sset i)
      (if(wcmatch ItemNotes "Seismic Flag: Leave Untouched")
        (command "._erase" ent ""));end if
      (if(wcmatch ItemSourceFileName "Seismic Rectangular")
        (progn
          (setq coordinates (list c4x c4y (- c4z 4)));end setq
          (command "copy" refPoint "" "@" coordinates)
          (vlax-put-property(vlax-ename->vla-object (entlast)) 'Notes "Seismic Flag: Leave Untouched")
        );end progn
        (if(wcmatch ItemSourceFileName "Seismic")
          (progn
            (setq coordinates (list c13x c13y c13z));end setq
            (command "copy" refPoint "" "@" coordinates)
            (vlax-put-property(vlax-ename->vla-object (entlast)) 'Notes "Seismic Flag: Leave Untouched")
          );end progn
        );end if
      );end if
          (setq i (1+ i));increment the parent loop
    );endwhile
    );end progn
  );end if
  (close writeToVBCode)
  (vl-file-delete vbCode)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Item_Information_Dump (/ item);DEVELOPMENT TOOL
  (vl-load-com)
  (setq sset (ssget)
        i 0)
  (OUTSIDE_LOOP_VARIABLES nil)
  (INSIDE_LOOP_VARIABLES sset i)
  (princ "********************************************************************************")(princ)(terpri)
  (princ "**************************VisualLisp ''VLAX'' Exposure**************************")(princ)(terpri)
  (princ "********************************************************************************")(princ)(terpri)
    (vlax-dump-object vla);end vlax dump
    (princ " ")(terpri)
    (princ)
  (princ "********************************************************************************")(princ)(terpri)
  (princ "*****************************List Command Exposure******************************")(princ)(terpri)
  (princ "********************************************************************************")(princ)(terpri)
    (command "list" ent "" "" "" "" "");end list command
    (princ)
  (princ "********************************************************************************")(princ)(terpri)
  (princ "***********************VisualLisp Map Property Exposure*************************")(princ)(terpri)
  (princ "********************************************************************************")(princ)(terpri)
  (if(wcmatch entGraphicID "MAPS_SOLID")
    (progn
      (foreach item '("Area" "CustomData" "Description"
                      "Elevation" "EndSize" "ItemNumber"
                      "LengthAngle" "Notes" "Points"
                      "Section" "ServiceName" "Status"
                      "Weight");end item list
      (princ (strcat "\n " item " = "))
      (princ (vlax-get-property vla item))
      );end foreach
    (princ)(terpri)
    );end progn
  );end if
  (princ "********************************************************************************")(princ)(terpri)
  (princ "************************AutoLisp ''List Setup'' Exposure************************")(princ)(terpri)
  (princ "********************************************************************************")(princ)(terpri)
  (princ entlist)(terpri);end entity list print
  (setq entlistCount 0)
  (foreach el entlist (terpri)(princ(strcat "List index " (itoa entlistCount) " = "))(princ el)(setq entlistCount (1+ entlistCount)))
  (terpri)
  (textscr)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Layout_Prep ()
  (setvar "cmdecho" 0)
  (print "Do you want your 2D drawing scaled down?")(princ)(terpri)
  (print "1: Yes - Drawing will be scaled.")(princ)(terpri)
  (print "2: No - Drawing will not be scaled.")(princ)(terpri)
  (initget 0 "Yes No")
  (setq scaleTest (getkword "\nChoose: [Yes/No] <No>?:"))
  (if (= scaleTest nil)
    (setq scaleTest "No")
  );end if
  (terpri)
  (print "Do you want explode blocks to find nested layout points?")(princ)(terpri)
  (print "1: Yes - Blocked points will be evaluated.")(princ)(terpri)
  (print "2: No - Blocked points are ignored.")(princ)(terpri)
  (initget 0 "Yes No")
  (setq nestedPointTest (getkword "\nChoose: [Yes/No] <No>?:"))
  (if (= nestedPointTest nil)
    (setq nestedPointTest "No")
  );end if
  (c:Improved_ReNumber)
  (c:Improved_Point_Export)
  (c:Create_2D)
  (startapp excel (strcat "\"" pointFileCSVLoc "\""))
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Improved_ReNumber (/)
  ; IMPROVED RENUMBER
  (vl-load-com)
  (c:World_View)
  (setvar "cmdecho" 0)
  (setq sset (ssget "X"
             '(
              (-4 . "<AND")
                (0 . "MAPS_SOLID")
                (-4 . "<NOT")
                  (0 . "INSERT")
                (-4 . "NOT>")
              (-4 . "AND>")
              );close quote func
             );end ssget
        i 0
        c 1
        e 1
        o 1
        r 1
        s 1
        tr 1
        misc 1
        h 1
        bo 1
        ep 1
        fs 1
        tp 1
        misc3d (ssadd)
        non3d (ssget "X" '((-4 . "<NOT")(0 . "MAPS_SOLID")(-4 . "NOT>"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (write-line "item.number = item.customdata[1].value" writeToVBCode)
  (close writeToVBCode)
    (while (< i limit);Start the Loop
      (INSIDE_LOOP_VARIABLES sset i)
      (if(and(wcmatch (strcase ItemService) "*COMBUSTION*")
         (not(or allSupport
                 trimblePoint
                 blockout
                 roundBlockout
                 (wcmatch(strcase ItemSourceFileName)(strcase "EQUIPMENT PAD"))
                 (wcmatch(strcase ItemSourceFileName)(strcase "FLOOR BLOCK OUT"))
                 (wcmatch(strcase ItemSourceFileName)(strcase "WALL BLOCK OUT")))))
        (setq prefix "C"
	      itm# (rtos c 2 0)
              c (1+ c))
        (if(and(wcmatch (strcase ItemService) "*EXHAUST*")
           (not(or allSupport
                   trimblePoint
                   blockout
                   roundBlockout
                   (wcmatch(strcase ItemSourceFileName)(strcase "EQUIPMENT PAD"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "FLOOR BLOCK OUT"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "WALL BLOCK OUT")))))
          (setq prefix "E"
	        itm# (rtos e 2 0)
                e (1+ e))
          (if(and(wcmatch (strcase ItemService) "*OUTSIDE*")
             (not(or allSupport
                     trimblePoint
                     blockout
                     roundBlockout
                     (wcmatch(strcase ItemSourceFileName)(strcase "EQUIPMENT PAD"))
                     (wcmatch(strcase ItemSourceFileName)(strcase "FLOOR BLOCK OUT"))
                     (wcmatch(strcase ItemSourceFileName)(strcase "WALL BLOCK OUT")))))
            (setq prefix "O"
	          itm# (rtos o 2 0)
                  o (1+ o))
            (if(and(wcmatch (strcase ItemService) "*RETURN*")
               (not(or allSupport
                       trimblePoint
                       blockout
                       roundBlockout
                       (wcmatch(strcase ItemSourceFileName)(strcase "EQUIPMENT PAD"))
                       (wcmatch(strcase ItemSourceFileName)(strcase "FLOOR BLOCK OUT"))
                       (wcmatch(strcase ItemSourceFileName)(strcase "WALL BLOCK OUT")))))
              (setq prefix "R"
	            itm# (rtos r 2 0)
                    r (1+ r))
              (if(and(wcmatch (strcase ItemService) "*SUPPLY*")
                 (not(or allSupport
                         trimblePoint
                         blockout
                         roundBlockout
                         (wcmatch(strcase ItemSourceFileName)(strcase "EQUIPMENT PAD"))
                         (wcmatch(strcase ItemSourceFileName)(strcase "FLOOR BLOCK OUT"))
                         (wcmatch(strcase ItemSourceFileName)(strcase "WALL BLOCK OUT")))))
                (setq prefix "S"
	              itm# (rtos s 2 0)
                      s (1+ s))
                (if(and(wcmatch (strcase ItemService) "*TRANSFER*")
                   (not(or allSupport
                           trimblePoint
                           blockout
                           roundBlockout
                           (wcmatch(strcase ItemSourceFileName)(strcase "EQUIPMENT PAD"))
                           (wcmatch(strcase ItemSourceFileName)(strcase "FLOOR BLOCK OUT"))
                           (wcmatch(strcase ItemSourceFileName)(strcase "WALL BLOCK OUT")))))
                  (setq prefix "T"
	                itm# (rtos tr 2 0)
                        tr (1+ tr))
                    (if hangerSupport&Seismic
                      (setq prefix "H"
	                    itm# (rtos h 2 0)
                            h (1+ h))
                      (if trimblePoint
                        (setq prefix "TP"
	                      itm# (rtos tp 2 0)
                              tp (1+ tp))
                        (if floorSupport
                          (setq prefix "FS"
	                        itm# (rtos fs 2 0)
                                fs (1+ fs))
                          (if(or blockout roundBlockout (wcmatch(strcase ItemSourceFileName)(strcase "FLOOR BLOCK OUT"))(wcmatch(strcase ItemSourceFileName)(strcase "WALL BLOCK OUT")))
                            (setq prefix "BO"
	                          itm# (rtos bo 2 0)
                                  bo (1+ bo))
                            (if(wcmatch(strcase ItemSourceFileName)(strcase "EQUIPMENT PAD"))
                              (setq prefix "EP"
	                            itm# (rtos ep 2 0)
                                    ep (1+ ep))
                  (if(not(or(wcmatch (strcase ItemService) "*COMBUSTION*")
                            (wcmatch (strcase ItemService) "*EXHAUST*")
                            (wcmatch (strcase ItemService) "*OUTSIDE*")
                            (wcmatch (strcase ItemService) "*RETURN*")
                            (wcmatch (strcase ItemService) "*SUPPLY*")
                            (wcmatch (strcase ItemService) "*TRANSFER*")
                            (wcmatch (strcase ItemService) "*TRIMBLE*")))
                    (setq prefix ""
	                  itm# (rtos misc 2 0)
                          misc (1+ misc))
      ) ) ) ) ) ) ) ) ) ) ) );end ifs
      (if(= prefix nil)(setq prefix ""))
      (if(= itm# nil)(setq itm# ""))
      (vlax-put-property vla "CustomData" (strcat itemCustomData1Name " = " prefix itm# ","))
      (executescript vbCode SSentity)
    (setq i (1+ i));increment the main loop
  );endwhile
  (vl-file-delete vbCode)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Improved_Point_Export (/)
  ; IMPROVED POINT EXPORT
  (if(= nestedPointTest nil)
    (progn
      (print "Do you want explode blocks to find nested layout points?")(princ)(terpri)
      (print "1: Yes - Blocked points will be evaluated.")(princ)(terpri)
      (print "2: No - Blocked points are ignored.")(princ)(terpri)
      (initget 0 "Yes No")
      (setq nestedPointTest (getkword "\nChoose: [Yes/No] <No>?:"))
      (if (= nestedPointTest nil)
        (setq nestedPointTest "No")
      );end if
    );end progn
  );end if
  (vl-load-com)
  (OUTSIDE_LOOP_VARIABLES nil)
  (command "_qsave" "")
  (if(not(= dwgLink nil))
    (progn
      (STRING_SPLIT "/" dwgLink)
      (setq folderString (strcat nth0 "/" nth1 "/07)FABRICATION/03) SHEET METAL/"))
      (if(vl-file-directory-p folderString)
        (progn
          (setq pointFileCSVLoc (strcat folderString dwgName "_Coordinates.csv")
                saveBackup (strcat folderString dwgName "_backup_" (rtos month 2 0) "-" (rtos day 2 0) "-" (rtos year 2 0) "@" (rtos hour 2 0) "hr" (rtos minute 2 0) "m" (rtos second 2 0) "s" (rtos milliSecond 2 0) "ms" ".dwg")
          );end setq
          (command "_.save" saveBackup (if(/=(getvar 'cmdactive)0) "_Y") "")(command)
        );progn
        (progn
          (setq pointFileCSVLoc (strcat dwgDirectory dwgName "_Coordinates.csv")
                saveBackup (strcat dwgDirectory dwgName "_backup_" (rtos month 2 0) "-" (rtos day 2 0) "-" (rtos year 2 0) "@" (rtos hour 2 0) "hr" (rtos minute 2 0) "m" (rtos second 2 0) "s" (rtos milliSecond 2 0) "ms" ".dwg")
          );end setq
          (command "_.save" saveBackup (if(/=(getvar 'cmdactive)0) "_Y") "")(command)
        );progn
      );end if
    );progn
  );end if
  (if(= nestedPointTest "Yes")
    (progn
      (setq sset (ssget "_X" '((0 . "INSERT"))))
      (if(not(= sset nil))
        (progn
          (setvar "qaflags" 1)
          (command "explode" sset "")
          (setvar "qaflags" 0)
        );progn
      );end if
    );progn
  );end if
  (if(FILE_OPEN? pointFileCSVLoc)
    (alert(strcat "File(s) currently in use, please close file(s) and try again.\n\nCheck: \n\n" pointFileCSVLoc)); "\n" pointFileTXTLoc))
    (progn
      (setvar "cmdecho" 0)
      ;(print "Do you wish to export floor support leg Center Points, Anchor Points or Both?")(princ)(terpri)
      ;(initget 0 "CenterPoints AnchorPoints Both")
      ;(setq decision (getkword "\nChoose: [CenterPoints/AnchorPoints/Both] <Centerpoints>?:"))
      ;(if(= decision nil)
      (setq decision "CenterPoints")
      ;)
      ;(if(= decision "CenterPoints")
          ;(progn(print "Only anchor plate center points will be exported for floor support.")(princ)(terpri))
        ;(if(= decision "AnchorPoints")
          ;(progn(print "Anchor plate anchor points will be exported for floor support. Center points will not be included.")(princ)(terpri))
          ;(if(= decision "Both")
            ;(progn(print "Both center points and anchor plate anchor points will be exported for floor support.")(princ)(terpri))
      ;) ) );end ifs
      (c:World_View)
      (setvar "cmdecho" 0)
      (setq sset (ssget "_X" '((0 . "MAPS_SOLID")
                               (-4 . "<OR")
                                 (300 . "Flat Strap (Rectangle)")
                                 (300 . "Flat Strap (Oval)")
                                 (300 . "Rectangular Bearer")
                                 (300 . "Wrap Round")
                                 (300 . "Flat Strap (Round)")
                                 (300 . "Belly Band")
                                 (300 . "Floor Supports Angle")
                                 (300 . "Floor Support Angle")
                                 (300 . "Floor Supports Post")
                                 (300 . "Floor Support Post")
                                 (300 . "Floor Supports Angle Round")
                                 (300 . "Floor Support Angle Round")
                                 (300 . "Floor Supports Post Round")
                                 (300 . "Floor Support Post Round")
                                 (300 . "Floor Supports Angle Double")
                                 (300 . "Floor Support Angle Double")
                                 (300 . "Floor Supports Post Double")
                                 (300 . "Floor Support Post Double")
                                 (300 . "Floor Support Angle Single")
                                 (300 . "Floor Support Post Single")
                                 (300 . "Seismic")
                                 (300 . "Equipment Seismic")
                                 (300 . "Strap Single")
                                 (300 . "Rectangular Duct Seismic")
                                 (300 . "Round Duct or Pipe Seismic")
                                 (300 . "Rectangular Seismic")
                                 (300 . "Round Seismic")
                                 (300 . "Misc Seismic")
                                 (300 . "*Clevis*")
                                 (300 . "*Pipe Roll*")
                                 (300 . "Stiffy Fig. 108")
                                 (300 . "Double Rectangular Bearer")
                                 (300 . "REFERENCE POINT")
                                 (300 . "WORK POINT")
                                 (300 . "ANCHOR POINT")
                                 (300 . "CONTROL LINE")
                                 (300 . "EQUIPMENT PAD")
                                 (300 . "FLOOR BLOCKOUT")
                                 (300 . "WALL BLOCKOUT")
                                 (300 . "BLUE BANGER")
                                 (300 . "QUICK BOLT")
                                 (300 . "Wedge Anchor")
                                 (300 . "Strap Insert")
                                 (300 . "Wire Insert")
                                 (300 . "1.0 Insert")
                                 (300 . ".875 Insert")
                                 (300 . ".75 Insert")
                                 (300 . ".625 Insert")
                                 (300 . ".5 Insert")
                                 (300 . ".375 Insert")
                                 (300 . "Supply Blockout")
                                 (300 . "Return-Transfer Blockout")
                                 (300 . "Exhaust Blockout")
                                 (300 . "Round Blockout")
                                 (300 . "EQUIPMENT PAD")
                                 (300 . "FLOOR BLOCK OUT")
                                 (300 . "WALL BLOCK OUT")
                                 (300 . "Insert")
                                 (300 . "1049")
                                 (300 . "838")
                               (-4 . "OR>")));Choose selection set
            i 0);end setq
      (OUTSIDE_LOOP_VARIABLES sset)
      (write-line "if (wildcard(item.filename,\"*Clevis*\") = 1) or (wildcard(item.filename,\"*Pipe Roll*\") = 1) or (wildcard(item.filename,\"*rectangular bearer\") = 1) or (wildcard(item.filename,\"Belly Band\") = 1) or (wildcard(item.filename,\"Double Rectangular Floor Mount\")) or (wildcard(item.filename,\"Single Rectangular Floor Mount\")) or (wildcard(item.filename,\"Round Floor Mount\")) then" writeToVBCode)
      (write-line "item.customdata[2].value = item.option[\"Drop Rod Diameter\"].value" writeToVBCode)
      (write-line "elseif (wildcard(item.filename,\"Flat Strap (Rectangle)\")) or (wildcard(item.filename,\"Flat Strap (Round)\")) or (wildcard(item.filename,\"Flat Strap (Oval)\")) or (wildcard(item.filename,\"Strap Single\")) then" writeToVBCode)
      (write-line "item.customdata[2].value = item.option[\"Bearer Width\"].value" writeToVBCode)
      (write-line "end if" writeToVBCode)
      (write-line "if item.dim[1].numvalue < 0.01 then" writeToVBCode)
      (write-line "item.dim[1].value = 0.01" writeToVBCode)
      (write-line "end if" writeToVBCode)
      (close writeToVBCode)
      (setq pointFileCSV (open pointFileCSVLoc "w"));end setq
      (write-line "POINT NUMBER, Y, X, Z, DESCRIPTION" pointFileCSV)
      (while (< i limit);Start the Loop
        (INSIDE_LOOP_VARIABLES sset i)
        (if(or allSupport trimblePoint blockout roundBlockout (wcmatch(strcase ItemSourceFileName)(strcase "EQUIPMENT PAD"))(wcmatch(strcase ItemSourceFileName)(strcase "FLOOR BLOCK OUT"))(wcmatch(strcase ItemSourceFileName)(strcase "WALL BLOCK OUT")))
          (progn
            (setq itm#A (strcat Item# "A")
                  itm#B (strcat Item# "B")
                  itm#C (strcat Item# "C")
                  itm#D (strcat Item# "D"));end setq
            (executescript vbCode SSentity)
            (INSIDE_LOOP_VARIABLES sset i)
            (if(and(not(= Automation2 ""))(not(= Automation2 nil)))(setq anchorSize (rtos(ROUND(distof Automation2 2)0.125)5))(setq Automation2 ""))
      (if rodSupport
        (setq pointDescription "Rod")
        (if strapSupport
          (setq pointDescription "Strap")
          (if postSupport
            (setq pointDescription "Post FS")
            (if angleSupport
              (setq pointDescription "Ang FS")
              (if seismic
                (setq pointDescription "Seismic" anchorSize "0")
                (if blockout
                  (setq pointDescription ItemSourceFileName)
                  (if roundBlockout
                    (setq pointDescription (strcat ItemSourceFileName " CtrPnt - " (rtos(+ dim1(* dim4 2))) " Dia"))
                    (if trimblePoint
                      (if(or(wcmatch(strcase ItemSourceFileName) "BLUE BANGER")(wcmatch(strcase ItemSourceFileName) "WEDGE ANCHOR"))
                        (setq anchorSize ItemDescription
                              pointDescription ItemSourceFileName)
                        (setq anchorSize "0"
                              pointDescription ItemSourceFileName)
                      );end if
      ) ) ) ) ) ) ) );end ifs
      (if(= pointDescription nil)(setq pointDescription ""))
      (if(or(wcmatch ItemSectionName "None")(wcmatch (strcase ItemLevel) "LEVEL"))
        (setq ItemLevel ""))
      (if(wcmatch ItemLevel "Lower")
        (setq ItemLevel "LL")
        (if(wcmatch ItemLevel "*#*")
          (setq ItemLevel (strcat "L" ItemLevel "_"))
          (setq ItemLevel "")
      ) );end if
      (if(not(=(distof anchorSize) 0))
        (progn
          (setq orgDIMZIN (getvar "DIMZIN"))
          (setvar "DIMZIN" 12)
          (setq pointDescription (strcat pointDescription ": " (rtos(distof anchorSize)2) "''"))
          (setvar "DIMZIN" orgDIMZIN)
        );progn
      );end if
      (if doubleFloorSupport
        (if(= decision "AnchorPoints")
          (progn
            (write-line (strcat "" itm#A "_1, " (rtos yA1 2 7) ", " (rtos xA1 2 7) ", " (rtos zA1 2 7) ", " pointDescription) pointFileCSV)
            (write-line (strcat "" itm#A "_2, " (rtos yA2 2 7) ", " (rtos xA2 2 7) ", " (rtos zA2 2 7) ", " pointDescription) pointFileCSV)
            (write-line (strcat "" itm#A "_3, " (rtos yA3 2 7) ", " (rtos xA3 2 7) ", " (rtos zA3 2 7) ", " pointDescription) pointFileCSV)
            (write-line (strcat "" itm#A "_4, " (rtos yA4 2 7) ", " (rtos xA4 2 7) ", " (rtos zA4 2 7) ", " pointDescription) pointFileCSV)
            (write-line (strcat "" itm#B "_1, " (rtos yB1 2 7) ", " (rtos xB1 2 7) ", " (rtos zB1 2 7) ", " pointDescription) pointFileCSV)
            (write-line (strcat "" itm#B "_2, " (rtos yB2 2 7) ", " (rtos xB2 2 7) ", " (rtos zB2 2 7) ", " pointDescription) pointFileCSV)
            (write-line (strcat "" itm#B "_3, " (rtos yB3 2 7) ", " (rtos xB3 2 7) ", " (rtos zB3 2 7) ", " pointDescription) pointFileCSV)
            (write-line (strcat "" itm#B "_4, " (rtos yB4 2 7) ", " (rtos xB4 2 7) ", " (rtos zB4 2 7) ", " pointDescription) pointFileCSV)
            ;(command "._circle" (list xA1 yA1 zA1) "1" "")
            ;(command "._circle" (list xA2 yA2 zA2) "1" "")
            ;(command "._circle" (list xA3 yA3 zA3) "1" "")
            ;(command "._circle" (list xA4 yA4 zA4) "1" "")
            ;(command "._circle" (list xB1 yB1 zB1) "1" "")
            ;(command "._circle" (list xB2 yB2 zB2) "1" "")
            ;(command "._circle" (list xB3 yB3 zB3) "1" "")
            ;(command "._circle" (list xB4 yB4 zB4) "1" "")
          );end progn
          (if(= decision "CenterPoints")
            (progn
              (write-line (strcat "" itm#A ", " (rtos yA 2 7) ", " (rtos xA 2 7) ", " (rtos zA 2 7) ", " pointDescription " LegCntr") pointFileCSV)
              (write-line (strcat "" itm#B ", " (rtos yB 2 7) ", " (rtos xB 2 7) ", " (rtos zB 2 7) ", " pointDescription " LegCntr") pointFileCSV)
              ;(command "._circle" (list xA yA zA) "2" "")
              ;(command "._circle" (list xB yB zB) "2" "")
            );end progn
            (if(= decision "Both")
              (progn
                (write-line (strcat "" itm#A ", " (rtos yA 2 7) ", " (rtos xA 2 7) ", " (rtos zA 2 7) ", " pointDescription " LegCntr") pointFileCSV)
                (write-line (strcat "" itm#B ", " (rtos yB 2 7) ", " (rtos xB 2 7) ", " (rtos zB 2 7) ", " pointDescription " LegCntr") pointFileCSV)
                ;(command "._circle" (list xA yA zA) "2" "")
                ;(command "._circle" (list xB yB zB) "2" "")
                (write-line (strcat "" itm#A "_1, " (rtos yA1 2 7) ", " (rtos xA1 2 7) ", " (rtos zA1 2 7) ", " pointDescription) pointFileCSV)
                (write-line (strcat "" itm#A "_2, " (rtos yA2 2 7) ", " (rtos xA2 2 7) ", " (rtos zA2 2 7) ", " pointDescription) pointFileCSV)
                (write-line (strcat "" itm#A "_3, " (rtos yA3 2 7) ", " (rtos xA3 2 7) ", " (rtos zA3 2 7) ", " pointDescription) pointFileCSV)
                (write-line (strcat "" itm#A "_4, " (rtos yA4 2 7) ", " (rtos xA4 2 7) ", " (rtos zA4 2 7) ", " pointDescription) pointFileCSV)
                (write-line (strcat "" itm#B "_1, " (rtos yB1 2 7) ", " (rtos xB1 2 7) ", " (rtos zB1 2 7) ", " pointDescription) pointFileCSV)
                (write-line (strcat "" itm#B "_2, " (rtos yB2 2 7) ", " (rtos xB2 2 7) ", " (rtos zB2 2 7) ", " pointDescription) pointFileCSV)
                (write-line (strcat "" itm#B "_3, " (rtos yB3 2 7) ", " (rtos xB3 2 7) ", " (rtos zB3 2 7) ", " pointDescription) pointFileCSV)
                (write-line (strcat "" itm#B "_4, " (rtos yB4 2 7) ", " (rtos xB4 2 7) ", " (rtos zB4 2 7) ", " pointDescription) pointFileCSV)
                ;(command "._circle" (list xA1 yA1 zA1) "1" "")
                ;(command "._circle" (list xA2 yA2 zA2) "1" "")
                ;(command "._circle" (list xA3 yA3 zA3) "1" "")
                ;(command "._circle" (list xA4 yA4 zA4) "1" "")
                ;(command "._circle" (list xB1 yB1 zB1) "1" "")
                ;(command "._circle" (list xB2 yB2 zB2) "1" "")
                ;(command "._circle" (list xB3 yB3 zB3) "1" "")
                ;(command "._circle" (list xB4 yB4 zB4) "1" "")
              );end progn
        ) ) ) );end ifs
        (if doubleHangerSupport
          (progn
            (write-line (strcat "" itm#A ", " (rtos yA 2 7) ", " (rtos xA 2 7) ", " (rtos zA 2 7) ", " pointDescription) pointFileCSV)
            (write-line (strcat "" itm#B ", " (rtos yB 2 7) ", " (rtos xB 2 7) ", " (rtos zB 2 7) ", " pointDescription) pointFileCSV)
            ;(command "._circle" (list xA yA zA) "2" "")
            ;(command "._circle" (list xB yB zB) "2" "")
          );end progn
          (if(or singleHangerSeismic trimblePoint)
            (progn
              (write-line (strcat "" itm#A ", " (rtos yA 2 7) ", " (rtos xA 2 7) ", " (rtos zA 2 7) ", " pointDescription) pointFileCSV)
              ;(write-line (strcat itm#A ", " (rtos yA 2 7) ", " (rtos xA 2 7) ", " (rtos zA 2 7) ", " pointDescription) pointFileTXT)
              ;(command "._circle" (list xA yA zA) "2" "")
            );progn
            (if singleFloorSupport
              (if(= decision "AnchorPoints")
                (progn
                  (write-line (strcat "" itm#A "_1, " (rtos yA1 2 7) ", " (rtos xA1 2 7) ", " (rtos zA1 2 7) ", " pointDescription) pointFileCSV)
                  (write-line (strcat "" itm#A "_2, " (rtos yA2 2 7) ", " (rtos xA2 2 7) ", " (rtos zA2 2 7) ", " pointDescription) pointFileCSV)
                  (write-line (strcat "" itm#A "_3, " (rtos yA3 2 7) ", " (rtos xA3 2 7) ", " (rtos zA3 2 7) ", " pointDescription) pointFileCSV)
                  (write-line (strcat "" itm#A "_4, " (rtos yA4 2 7) ", " (rtos xA4 2 7) ", " (rtos zA4 2 7) ", " pointDescription) pointFileCSV)
                  ;(write-line (strcat itm#A "_1, " (rtos yA1 2 7) ", " (rtos xA1 2 7) ", " (rtos zA1 2 7) ", " pointDescription) pointFileTXT)
                  ;(write-line (strcat itm#A "_2, " (rtos yA2 2 7) ", " (rtos xA2 2 7) ", " (rtos zA2 2 7) ", " pointDescription) pointFileTXT)
                  ;(write-line (strcat itm#A "_3, " (rtos yA3 2 7) ", " (rtos xA3 2 7) ", " (rtos zA3 2 7) ", " pointDescription) pointFileTXT)
                  ;(write-line (strcat itm#A "_4, " (rtos yA4 2 7) ", " (rtos xA4 2 7) ", " (rtos zA4 2 7) ", " pointDescription) pointFileTXT)
                  ;(command "._circle" (list xA1 yA1 zA1) "1" "")
                  ;(command "._circle" (list xA2 yA2 zA2) "1" "")
                  ;(command "._circle" (list xA3 yA3 zA3) "1" "")
                  ;(command "._circle" (list xA4 yA4 zA4) "1" "")
                );end progn
                (if(= decision "CenterPoints")
                  (progn
                    (write-line (strcat "" itm#A ", " (rtos yA 2 7) ", " (rtos xA 2 7) ", " (rtos zA 2 7) ", " pointDescription " LegCntr") pointFileCSV)
                  );end progn
                  (if(= decision "Both")
                    (progn
                      (write-line (strcat "" itm#A ", " (rtos yA 2 7) ", " (rtos xA 2 7) ", " (rtos zA 2 7) ", " pointDescription " LegCntr") pointFileCSV)
                      ;(command "._circle" (list xA yA zA) "2" "")
                      (write-line (strcat "" itm#A "_1, " (rtos yA1 2 7) ", " (rtos xA1 2 7) ", " (rtos zA1 2 7) ", " pointDescription) pointFileCSV)
                      (write-line (strcat "" itm#A "_2, " (rtos yA2 2 7) ", " (rtos xA2 2 7) ", " (rtos zA2 2 7) ", " pointDescription) pointFileCSV)
                      (write-line (strcat "" itm#A "_3, " (rtos yA3 2 7) ", " (rtos xA3 2 7) ", " (rtos zA3 2 7) ", " pointDescription) pointFileCSV)
                      (write-line (strcat "" itm#A "_4, " (rtos yA4 2 7) ", " (rtos xA4 2 7) ", " (rtos zA4 2 7) ", " pointDescription) pointFileCSV)
                    );end progn
              ) ) );end ifs
      ) ) );end ifs
      (if blockout
        (progn
          (write-line (strcat "" itm#A ", " (rtos yA 2 7) ", " (rtos xA 2 7) ", " (rtos zA 2 7) ", " pointDescription) pointFileCSV)
          (write-line (strcat "" itm#B ", " (rtos yB 2 7) ", " (rtos xB 2 7) ", " (rtos zB 2 7) ", " pointDescription) pointFileCSV)
          (write-line (strcat "" itm#C ", " (rtos yC 2 7) ", " (rtos xC 2 7) ", " (rtos zC 2 7) ", " pointDescription) pointFileCSV)
          (write-line (strcat "" itm#D ", " (rtos yD 2 7) ", " (rtos xD 2 7) ", " (rtos zD 2 7) ", " pointDescription) pointFileCSV)
        );progn
          (if roundBlockout
            (progn
              (write-line (strcat "" itm#A ", " (rtos yA 2 7) ", " (rtos xA 2 7) ", " (rtos zA 2 7) ", " pointDescription) pointFileCSV)
              ;(write-line (strcat itm#A ", " (rtos yA 2 7) ", " (rtos xA 2 7) ", " (rtos zA 2 7) ", " pointDescription) pointFileTXT)
              ;(command "._circle" (list xA yA zA) "2" "")
            );progn
      ) );end ifs
      (setq xA nil
            yA nil
            zA nil
            xB nil
            yB nil
            zB nil
            xA1 nil
            yA1 nil
            zA1 nil
            xB1 nil
            yB1 nil
            zB1 nil
            xA2 nil
            yA2 nil
            zA2 nil
            xB2 nil
            yB2 nil
            zB2 nil
            xA3 nil
            yA3 nil
            zA3 nil
            xB3 nil
            yB3 nil
            zB3 nil
            xA4 nil
            yA4 nil
            zA4 nil
            xB4 nil
            yB4 nil
            zB4 nil);end setq
        );end progn
      );end if
            (setq i (1+ i))
    );end while
    (close pointFileCSV)
    ;(close pointFileTXT)
  (terpri)
  (princ (strcat "Check: " pointFileCSVLoc))(princ)(terpri)
  (princ (strcat "Check: " saveBackup))(princ)(terpri)
    );progn
  );end if
  (vl-file-delete vbCode)
  (setvar 'filedia 1)
  (setq nestedPointTest nil)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
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
;**************************************************************************************************************************************************
(defun c:List_All_Functions ( / a b c d ) (vl-load-com)
    (if (setq b (open (setq a (vl-filename-mktemp nil (getvar 'DWGPREFIX) ".txt")) "w"))
        (progn
            (foreach c
                (acad_strlsort
                    (vl-remove-if-not
                        (function
                            (lambda ( d )
                                (member (type (eval (read d))) '(SUBR EXRXSUBR))
                            )
                        )
                        (atoms-family 1)
                    )
                )
                (write-line c b)
            )
            (close b) (startapp "notepad" a)
        )
    )
    (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun pickem (/ pick pickSS pickL1 pickL2)
(setq pick (getstring T "\nEnter something: "))
(setq pickSS (ssget "x"))
(setq pickL1 (sslength pickSS))
(sssetfirst nil pickSS)
;currently set up to pick by piece number
(setq pickSS (ssget (mapfilter (strcat "\"#20 = \"" pick "\""))))
(setq pickL2 (sslength pickSS))
(if (> pickL1 pickL2)
(progn
(command "zoom" "object" pickSS "")
(setq pickSS (ssget "P"))
(sssetfirst nil pickSS)
)
(progn
(command "select" "none" "")
(princ "Nothing Found!")
)
)
(princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Search_Specification (/ pick specSS specL1 specL2)
  (setq spec (getstring T "\nEnter with this format <\"Spec-Group: Specification\">: ")
        specSS (ssget "x")
        specL1 (sslength specSS));end setq
  (sssetfirst nil specSS)
;currently set up to pick by piece number
  (setq specSS (ssget (mapfilter (strcat "\"#19 = \"" spec "\"")))
        specL2 (sslength specSS));end setq
  (if (> specL1 specL2)
    (progn
      (command "zoom" "object" specSS "")
      (setq specSS (ssget "P"))
      (sssetfirst nil specSS)
      (command "pselect" specSS "")
      (command "chspec")
    );end progn
    (progn
      (command "select" "none" "")
      (princ "Nothing Found!")
    );end progn
  );end if
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Get_Keyboard_ASCII_Character ( / code)
  (prompt "\nEnter a single character: ")
  
  (setq code (grread))

  (if (= 2 (car code))
    (progn
      (prompt (strcat "\nCharacter entered was: " (chr (cadr code))))
      (prompt (strcat "\nASCII code: " (itoa (cadr code))))
    )
    (prompt "\nInput was not from the keyboard.")
  )
 (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Mark_Support_Point_Locations (/)
  ; label points
  (vl-load-com)
  (setvar "cmdecho" 0)
  (c:World_View)
  (setq sset (ssget "_X" '((0 . "MAPS_SOLID")
                               (-4 . "<OR")
                                 (300 . "Flat Strap (Rectangle)")
                                 (300 . "Flat Strap (Oval)")
                                 (300 . "Rectangular Bearer")
                                 (300 . "Wrap Round")
                                 (300 . "Flat Strap (Round)")
                                 (300 . "Belly Band")
                                 (300 . "Floor Supports Angle")
                                 (300 . "Floor Support Angle")
                                 (300 . "Floor Supports Post")
                                 (300 . "Floor Support Post")
                                 (300 . "Floor Supports Angle Round")
                                 (300 . "Floor Support Angle Round")
                                 (300 . "Floor Supports Post Round")
                                 (300 . "Floor Support Post Round")
                                 (300 . "Floor Supports Angle Double")
                                 (300 . "Floor Support Angle Double")
                                 (300 . "Floor Supports Post Double")
                                 (300 . "Floor Support Post Double")
                                 (300 . "Floor Support Angle Single")
                                 (300 . "Floor Support Post Single")
                                 (300 . "Equipment Seismic")
                                 (300 . "Strap Single")
                                 (300 . "Rectangular Duct Seismic")
                                 (300 . "Round Duct or Pipe Seismic")
                                 (300 . "Rectangular Seismic")
                                 (300 . "Round Seismic")
                                 (300 . "Misc Seismic")
                                 (300 . "*Clevis*")
                                 (300 . "*Pipe Roll*")
                                 (300 . "Stiffy Fig. 108")
                                 (300 . "Double Rectangular Bearer")
                                 (300 . "REFERENCE POINT")
                                 (300 . "WORK POINT")
                                 (300 . "ANCHOR POINT")
                                 (300 . "CONTROL LINE")
                                 (300 . "EQUIPMENT PAD")
                                 (300 . "FLOOR BLOCKOUT")
                                 (300 . "WALL BLOCKOUT")
                                 (300 . "BLUE BANGER")
                                 (300 . "QUICK BOLT")
                                 (300 . "Wedge Anchor")
                                 (300 . "Strap Insert")
                                 (300 . "Wire Insert")
                                 (300 . "1.0 Insert")
                                 (300 . ".875 Insert")
                                 (300 . ".75 Insert")
                                 (300 . ".625 Insert")
                                 (300 . ".5 Insert")
                                 (300 . ".375 Insert")
                                 (300 . "Supply Blockout")
                                 (300 . "Return-Transfer Blockout")
                                 (300 . "Exhaust Blockout")
                                 (300 . "Round Blockout")
                                 (300 . "EQUIPMENT PAD")
                                 (300 . "FLOOR BLOCK OUT")
                                 (300 . "WALL BLOCK OUT")
                                 (300 . "Insert")
                               (-4 . "OR>")));Choose selection set
        i 0)
  (OUTSIDE_LOOP_VARIABLES sset)
    (while (< i limit);Start the Loop
      (INSIDE_LOOP_VARIABLES sset i)
        (setq AOI "6"
              coordinatesA (list xA yA zA)
              coordinatesB (list xB yB zB)
              pointlocations (ssadd));end setq
      (command "layer" "make" "M-AMC-SUPT-POIN-TLOC-ATIO-NS" "")
      (if doubleSupportAll
        (progn
          (initcommandversion 2)
          (command "._circle" coordinatesA "D" AOI)
          (ssadd (entlast) pointlocations)
          (command "._circle" coordinatesB "D" AOI)
          (ssadd (entlast) pointlocations)
          (initcommandversion 1)
	);end progn
        (if singleGravitySeismic
          (progn
            (initcommandversion 2)
            (command "._circle" coordinatesA "D" AOI)
            (ssadd (entlast) pointlocations)
            (initcommandversion 1)
          );end progn
      ) );end ifs 
            (setq i (1+ i));increment the sub loop
      );end while
  (command "copyclip" pointlocations "")
  (command "pselect" pointlocations "")
  (princ "Layout point location labels are now copied to your clipboard: paste them in a new drawing using \"PO\" (Paste_to_Original_Coordinates) if needed.")(terpri)
  (princ)
(END_ROUTINE))
;**************************************************************************************************************************************************
(defun c:Label_Layout_Points (/)
  ; label points
  (vl-load-com)
  (setvar "cmdecho" 0)
  (c:World_View)
  (print "Are you anchoring strap to rod inserts on this floor?")(princ)(terpri)
  (initget 0 "Yes No")
  (setq decision (getkword "\nChoose: [Yes/No] <No>?:"))
  (if (= decision nil)
    (setq decision "No"))
  (setq sset (ssget "_X" '((0 . "MAPS_SOLID")));Choose selection set
        i 0
	hanger (ssadd)
        pointlocations (ssadd))
  (OUTSIDE_LOOP_VARIABLES sset)
    (while (< i limit);Start the Loop
      (INSIDE_LOOP_VARIABLES sset i)
      (if allHanger (ssadd ent hanger));end if
          (setq i (1+ i));increment the main loop
    );endwhile
  (write-line "if ((wildcard(item.filename,\"*Clevis*\") = 1) or (wildcard(item.filename,\"*rectangular bearer\") = 1) or (wildcard(item.filename,\"Belly Band\") = 1) or (wildcard(item.filename,\"Double Rectangular Floor Mount\")) or (wildcard(item.filename,\"Single Rectangular Floor Mount\")) or (wildcard(item.filename,\"Round Floor Mount\"))) then" writeToVBCode)
  (write-line "item.customdata[2].value = item.option[\"Drop Rod Diameter\"].value" writeToVBCode)
  (write-line "elseif (wildcard(item.filename,\"Wrap Round\")) then" writeToVBCode)
  (write-line "item.customdata[2].value = item.dim[3].value" writeToVBCode)
  (write-line "elseif (wildcard(item.filename,\"Flat Strap (Rectangle)\")) or (wildcard(item.filename,\"Flat Strap (Round)\")) or (wildcard(item.filename,\"Strap Single\")) then" writeToVBCode)
  (write-line "item.customdata[2].value = item.option[\"Bearer Width\"].value" writeToVBCode)
  (write-line "elseif (wildcard(item.filename,\"Angle Roof Support\")) then" writeToVBCode)
  (write-line "item.customdata[2].value = item.dim[\"Angle Size\"].value" writeToVBCode)
  (write-line "end if" writeToVBCode)
(close writeToVBCode)
(if(not(= hanger nil))
    (progn
    (setq h 0
          hsublimit (sslength hanger)
          scaleFactor ".33");end setq
    (while (< h hsublimit);Start the sub loop
      (INSIDE_LOOP_VARIABLES hanger h)
	(if(wcmatch ItemService "*COMBUSTION*")(setq servicePrefix "C-")
          (if(wcmatch ItemService "*EXHAUST*")(setq servicePrefix "E-")
            (if(wcmatch ItemService "*OUTSIDE*")(setq servicePrefix "O-")
              (if(wcmatch ItemService "*RETURN*")(setq servicePrefix "R-")
                (if(wcmatch ItemService "*SUPPLY*")(setq servicePrefix "S-")
                  (if(wcmatch ItemService "*TRANSFER*")(setq servicePrefix "T-")
                  (if(not(or(wcmatch ItemService "*COMBUSTION*")(wcmatch ItemService "*EXHAUST*")(wcmatch ItemService "*OUTSIDE*")(wcmatch ItemService "*RETURN*")(wcmatch ItemService "*SUPPLY*")(wcmatch ItemService "*TRANSFER*")))(setq servicePrefix "")
        ) ) ) ) ) ) );end ifs
      (command "pselect" ent "")
      (executescript vbCode)
      (if(= Automation2 "")
        (executescript vbCode SSentity));end if
      (if(or(wcmatch Automation2 "*.13")(wcmatch Automation2 "*.125"))
        (setq Automation2 "1/8\"")
        (if(wcmatch Automation2 "*.25")
          (setq Automation2 "1/4\"")
          (if(or(wcmatch Automation2 "*.38")(wcmatch Automation2 "*.375"))
            (setq Automation2 "3/8\"")
            (if(wcmatch Automation2 "*.5")
              (setq Automation2 "1/2\"")
              (if(or(wcmatch Automation2 "*.63")(wcmatch Automation2 "*.625"))
                (setq Automation2 "5/8\"")
                (if(wcmatch Automation2 "*.75")
                  (setq Automation2 "3/4\"")
                  (if(or(wcmatch Automation2 "*.88")(wcmatch Automation2 "*.875"))
                    (setq Automation2 "7/8\"")
                    (if(wcmatch Automation2 "1.00")
                      (setq Automation2 "1\"")
      ) ) ) ) ) ) ) );end ifs
    (if singleGravity
      (setq xA c2x
            yA c2y
            zA c2z)
      (if doubleSupportAll
        (setq xA c2x
              yA c2y
              zA c2z
              xB c3x
              yB c3y
              zB c3z)
        (if(wcmatch ItemSourceFileName "Seismic Rectangular")
          (setq xA c4x
                yA c4y
                zA c4z)
          (if(wcmatch ItemSourceFileName "Seismic")
            (setq xA c13x
                  yA c13y
                  zA c13z)
            (if angleSupport
              (setq xA c12x
                    yA c12y
                    zA c12z
                    xB c14x
                    yB c14y
                    zB c14z)
    ) ) ) ) );end ifs
      (if rodSupport
        (setq pointDescription "Ro: ")
        (if strapSupport
          (setq pointDescription "St: ")
          (if seismic
            (setq pointDescription "Se: ")
      ) ) );end ifs
      (if seismic
        (setq AOI "9")
        (setq AOI "6")
      );end if 
      (setq coordinatesA (list xA yA zA)
            coordinatesA+ (list (- xA 3) (+ yA 1) zA));end setq
      (if doubleSupportAll
        (setq coordinatesB (list xB yB zB)
              coordinatesB+ (list (- xB 3) (+ yB 1) zB));end setq
      );end if
      (if(wcmatch pointDescription "St: ")
        (if(= decision "No")
          (setq Description (strcat servicePrefix pointDescription Automation2));end setq
          (setq Description (strcat servicePrefix pointDescription "3/8\""));end setq
        );end if
        (if(wcmatch pointDescription "Se: ")
          (setq Description (strcat servicePrefix pointDescription "1/2"));end setq
          (setq Description (strcat servicePrefix pointDescription Automation2));end setq
      ) );end ifs
      (COMMAND "LAYER" "SET" "_TEXT" "")
      (if doubleSupportAll
        (progn
          (initcommandversion 2)
          (command "._circle" coordinatesA "D" AOI)
          (setq lastent (entlast))
          (ssadd lastent pointlocations)
          (command "._circle" coordinatesB "D" AOI)
          (setq lastent (entlast))
          (ssadd lastent pointlocations)
          (command "-mtext" coordinatesA+ coordinatesA Description "" "")
          (setq lastent (entlast))
	  (command "scale" lastent "" coordinatesA+ scaleFactor)
          (ssadd lastent pointlocations)
          (command "-mtext" coordinatesB+ coordinatesB Description "" "")
          (setq lastent (entlast))
	  (command "scale" lastent "" coordinatesB+ scaleFactor)
          (ssadd lastent pointlocations)
          (initcommandversion 1)
	  );end progn
        (if singleGravitySeismic
          (progn
          (initcommandversion 2)
          (command "._circle" coordinatesA "D" AOI)
          (setq lastent (entlast))
          (ssadd lastent pointlocations)
          (command "-mtext" coordinatesA+ coordinatesA Description "" "")
          (setq lastent (entlast))
	  (command "scale" lastent "" coordinatesA+ scaleFactor)
          (ssadd lastent pointlocations)
          (initcommandversion 1)
	  );end progn
        ) );end ifs 

            (setq h (1+ h));increment the sub loop
      );end while
    );end progn
  );end if
  (vl-file-delete vbCode)
  (command "copyclip" pointlocations "")
  (command "erase" pointlocations "")
  (princ "Layout point location labels are now copied to your clipboard: paste them in a new drawing using \"PO\" (Paste_to_Original_Coordinates)")(terpri)
  (setvar "cmdecho" 1)
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
;turn off all xref layers
(defun c:XRF ()
  (command "_.-layer" "_off" "*|*" "")
  (princ)
);end defun
;**************************************************************************************************************************************************
(defun c:XRLL ()
  (command "_.-layer" "_lock" "*|*" "")
  (princ)
);end defun
;**************************************************************************************************************************************************
(defun c:XRUL ()
  (command "_.-layer" "_unlock" "*|*" "")
  (princ)
);end defun
;**************************************************************************************************************************************************
;UNLOAD ALL XREFS
(defun c:XRU ()
  (command "_.-xref" "_UNLOAD" "*")
  (princ)
);end defun
;**************************************************************************************************************************************************
;RELOAD ALL XREFS
(defun c:XRR ()
  (command "_.-xref" "_RELOAD" "*" )
  (princ)
);end defun
;**************************************************************************************************************************************************
(defun c:ZO ()
  ;;;; ZO even from section cut
  (command "LASTVIEW")
  (command "ucs" "w")
  (command "pselect" "p" "")
  (command "zoom" "object")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:UPDATE_JOB_INFO ()
  (setvar "cmdecho" 0)
  (setq i 0
        sset (ssget "_X" '((0 . "MAPS_SOLID")))
  );end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (UpdateJobData 10 jobName)
  (UpdateJobData 11 job#)
  (UpdateJobData 14 jobCreationDate)
  (if(not(= dwgLevel nil))
    (UpdateJobData 2 dwgLevel)
    (progn
      (setq dwgLevel (getstring T "\nPlease enter this drawing's floor/level #:"))
      (if(not(= dwgLevel ""))
        (UpdateJobData 2 dwgLevel)
      );end if
    );end progn
  );end if
  (setq foremanName (getstring T "\nPlease enter the job foreman's name:"))
  (if(not(= foremanName ""))
    (progn
      (UpdateJobData 12 foremanName)
      (setq foremanContact (getstring T "\nPlease enter the job foreman's contact #:"))
      (if(not(= foremanContact ""))
        (UpdateJobData 13 foremanContact)
      );end if
    );end progn
  );end if
  (setq decision nil)
  (initget 0 "Yes No")
  (setq decision (getkword "\nDo you wish to update all items in the drawing? Depending on drawing size this may take a few minutes: [Yes/No] <No>?:"))
  (if(= decision nil)
    (setq decision "No"))
  (if(= decision "Yes")
    (progn
    (alert "I will be checking the activity #s and ItemCIDs of each item and updating as needed. \nThis may take a few minutes, please wait...")
    (while(< i limit)
    (INSIDE_LOOP_VARIABLES sset i)
    (if(or(wcmatch(strcase ItemServiceType)(strcase "*Equipment*"))
        (wcmatch(strcase ItemSourceFileName)(strcase "*Diffuser*"))
        (wcmatch(strcase ItemSourceFileName)(strcase "*Register*"))
        (wcmatch(strcase ItemSourceFileName)(strcase "*Grille*"))
        (wcmatch(strcase ItemSourceFileName)(strcase "*Titus*")))
    (setq Activity# "75")
    (if(or(wcmatch(strcase ItemServiceType)(strcase "*Fire Damper*"))
          (wcmatch(strcase ItemDescription)(strcase "*Canvas*"))
          (wcmatch(strcase ItemDescription)(strcase "*Access Door*"))
          (wcmatch(strcase ItemDescription)(strcase "*Damper Sleeve*"))
          (wcmatch(strcase ItemDescription)(strcase "*Plate*"))
          (and(wcmatch(strcase ItemSourceFileName)(strcase "*Angle*"))(not(wcmatch(strcase ItemSourceFileName)(strcase "*Rectangle*"))))
          (wcmatch(strcase ItemSourceFileName)(strcase "*Can*")))
      (setq Activity# "302")
      (if(or allSupport (wcmatch(strcase ItemServiceType)(strcase "*Hanger*")))
        (setq Activity# "303")
    (if(and(wcmatch(strcase ItemServiceType)(strcase "*Ductboard*"))
          (wcmatch(strcase ItemSourceFileName)(strcase "*Straight*")))
      (setq Activity# "304")
    (if(and(wcmatch(strcase ItemServiceType)(strcase "*Ductboard*"))
          (not(wcmatch(strcase ItemSourceFileName)(strcase "*Straight*"))))
      (setq Activity# "305")
        (if(and(not(or(wcmatch(strcase ItemService)(strcase "*Weld*"))(wcmatch(strcase ItemServiceType)(strcase "*Equipment*"))))
	  (or
           (and(wcmatch(strcase ItemDescription)(strcase "Straight"))
               (wcmatch(strcase c1Spec)(strcase "TDF"))
               (= ItemLengthAngle 56))
           (and(wcmatch(strcase ItemDescription)(strcase "Straight"))
               (or(wcmatch(strcase c1Spec)(strcase "Stand S&D"))
                  (wcmatch(strcase c1Spec)(strcase "Flat S&D")))
               (= ItemLengthAngle 59))
          ))
          (setq Activity# "310")
          (if(and(wcmatch(strcase ItemSourceFileName)(strcase "*SPIRAL"))(not(or(wcmatch(strcase ItemService)(strcase "*Weld*"))(wcmatch(strcase ItemServiceType)(strcase "*Equipment*")))))
            (setq Activity# "312")
            (if(and(not(or(wcmatch(strcase ItemService)(strcase "*Weld*"))(wcmatch(strcase ItemServiceType)(strcase "*Equipment*"))))
               (or
               (wcmatch(strcase ItemSourceFileName)(strcase "*Pipe*"))
               (and
               (= ItemLengthAngle 18)
               (or(wcmatch(strcase ItemSourceFileName)(strcase "*Wye*"))
                  (wcmatch(strcase ItemSourceFileName)(strcase "*No Dampers*"))
                  (wcmatch(strcase ItemSourceFileName)(strcase "*KS7L*"))
                  (wcmatch(strcase ItemSourceFileName)(strcase "*3-8 Rod*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Lateral 45*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Cross*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Tee*")))
               (not(wcmatch ItemCID "807"))
               (not(wcmatch ItemCID "812"))
               (or(wcmatch(strcase ItemDescription)(strcase "*8/6/6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10/8/6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10/8/8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12/8/6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12/8/8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12/10/6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12/10/8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12/10/10*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14/10/8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14/10/10*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14/12/6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14/12/8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14/12/10*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16/10/10*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16/12/8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16/12/10*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16/14/8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16/14/10*")))
               )
               (and
               (= ItemLengthAngle 20)
               (or(wcmatch(strcase ItemSourceFileName)(strcase "*Wye*"))
                  (wcmatch(strcase ItemSourceFileName)(strcase "*No Dampers*"))
                  (wcmatch(strcase ItemSourceFileName)(strcase "*KS7L*"))
                  (wcmatch(strcase ItemSourceFileName)(strcase "*3-8 Rod*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Lateral 45*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Cross*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Tee*")))
               (not(wcmatch ItemCID "807"))
               (not(wcmatch ItemCID "812"))
               (or(wcmatch(strcase ItemDescription)(strcase "*14/12/12*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16/12/12*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16/14/12*")))
               )
               (and
               (= ItemLengthAngle 30)
               (or(wcmatch(strcase ItemSourceFileName)(strcase "*Wye*"))
                  (wcmatch(strcase ItemSourceFileName)(strcase "*No Dampers*"))
                  (wcmatch(strcase ItemSourceFileName)(strcase "*KS7L*"))
                  (wcmatch(strcase ItemSourceFileName)(strcase "*3-8 Rod*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Lateral 45*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Cross*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Tee*")))
               (not(wcmatch ItemCID "807"))
               (not(wcmatch ItemCID "812"))
               (or(wcmatch(strcase ItemDescription)(strcase "*16/14/14*"))
                  (wcmatch(strcase ItemDescription)(strcase "*18/14/14*")))
               )
               (and
               (= ItemLengthAngle 18)
               (or(wcmatch(strcase ItemSourceFileName)(strcase "*Lateral 45*"))
               (wcmatch(strcase ItemSourceFileName)(strcase "*No Dampers*"))
               (wcmatch(strcase ItemSourceFileName)(strcase "*KS7L*"))
               (wcmatch(strcase ItemSourceFileName)(strcase "*3-8 Rod*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Wye*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Cross*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Tee*")))
               (not(wcmatch ItemCID "53"))
               (not(wcmatch ItemCID "812"))
               (or(wcmatch(strcase ItemDescription)(strcase "*6/6/6*"))
               (wcmatch(strcase ItemDescription)(strcase "*8/8/8*"))
               (wcmatch(strcase ItemDescription)(strcase "*10/10/6*"))
               (wcmatch(strcase ItemDescription)(strcase "*10/10/8*"))
               (wcmatch(strcase ItemDescription)(strcase "*10/10/10*"))
               (wcmatch(strcase ItemDescription)(strcase "*12/12/6*"))
               (wcmatch(strcase ItemDescription)(strcase "*12/12/8*"))
               (wcmatch(strcase ItemDescription)(strcase "*12/12/10*"))
               (wcmatch(strcase ItemDescription)(strcase "*14/14/6*"))
               (wcmatch(strcase ItemDescription)(strcase "*14/14/8*"))
               (wcmatch(strcase ItemDescription)(strcase "*14/14/10*"))
               (wcmatch(strcase ItemDescription)(strcase "*16/16/8*")))
               )
               (and
               (= ItemLengthAngle 20)
               (or(wcmatch(strcase ItemSourceFileName)(strcase "*Lateral 45*"))
               (wcmatch(strcase ItemSourceFileName)(strcase "*No Dampers*"))
               (wcmatch(strcase ItemSourceFileName)(strcase "*KS7L*"))
               (wcmatch(strcase ItemSourceFileName)(strcase "*3-8 Rod*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Wye*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Cross*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Tee*")))
               (not(wcmatch ItemCID "53"))
               (not(wcmatch ItemCID "812"))
               (or(wcmatch(strcase ItemDescription)(strcase "*12/12/12*"))
               (wcmatch(strcase ItemDescription)(strcase "*14/14/12*")))
               )
               (and
               (= ItemLengthAngle 30)
               (or(wcmatch(strcase ItemSourceFileName)(strcase "*Lateral 45*"))
               (wcmatch(strcase ItemSourceFileName)(strcase "*No Dampers*"))
               (wcmatch(strcase ItemSourceFileName)(strcase "*KS7L*"))
               (wcmatch(strcase ItemSourceFileName)(strcase "*3-8 Rod*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Wye*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Cross*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Tee*")))
               (not(wcmatch ItemCID "53"))
               (not(wcmatch ItemCID "812"))
               (or(wcmatch(strcase ItemDescription)(strcase "*14/14/14*")))
               )
               (and
               (wcmatch ItemCID "60")
               (wcmatch(strcase ItemSourceFileName)(strcase "*Cap*"))
               (or(wcmatch(strcase ItemDescription)(strcase "*5\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*18\"*")))
               )
               (and
               (wcmatch ItemCID "60")
               (wcmatch(strcase ItemSourceFileName)(strcase "*End Cap*"))
               (or(wcmatch(strcase ItemDescription)(strcase "*5\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*18\"*")))
               )
               (and
               (wcmatch ItemCID "1112")
               (wcmatch(strcase ItemDescription)(strcase "*3\" Collar*"))
               (or(wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*18\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*20\"*")))
               )
               (and
               (wcmatch ItemCID "1112")
               (wcmatch(strcase ItemDescription)(strcase "*Spin-in*"))
               (or(wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16\"*")))
               )
               (and
                  (wcmatch(strcase ItemDescription)(strcase "*6\" Long Taper*"))
               (or(wcmatch(strcase ItemDescription)(strcase "*7-5*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8-6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9-7*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10-8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10-9*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12-10*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14-12*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16-14*"))
                  (wcmatch(strcase ItemDescription)(strcase "*18-16*")))
               )
               (and
                  (wcmatch(strcase ItemDescription)(strcase "*12\" Long Taper*"))
               (or(wcmatch(strcase ItemDescription)(strcase "*10-6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12-8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14-10*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16-12*"))
                  (wcmatch(strcase ItemDescription)(strcase "*18-14*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8-5*"))
                  (wcmatch(strcase ItemDescription)(strcase "*7-6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9-6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8-7*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9-7*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10-7*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12-7*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10-9*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12-6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12-10*"))
                  (wcmatch(strcase ItemDescription)(strcase "*18-10*")))
               )
               (and
                  (wcmatch(strcase ItemDescription)(strcase "*18\" Long Taper*"))
               (or(wcmatch(strcase ItemDescription)(strcase "*12-6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14-6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12-8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14-8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16-8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16-12*"))
                  (wcmatch(strcase ItemDescription)(strcase "*18-12*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16-14*"))
                  (wcmatch(strcase ItemDescription)(strcase "*18-14*"))
                  (wcmatch(strcase ItemDescription)(strcase "*20-14*"))
                  (wcmatch(strcase ItemDescription)(strcase "*18-16*"))
                  (wcmatch(strcase ItemDescription)(strcase "*20-18*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6-5*"))
                  (wcmatch(strcase ItemDescription)(strcase "*7-6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8-7*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9-8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10-9*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9-6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9-7*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10-7*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12-7*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14-7*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12-9*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14-9*")))
               )
               (and
               (or(wcmatch(strcase ItemSourceFileName)(strcase "*45Deg on Rd Saddle*"))
                  (wcmatch(strcase ItemDescription)(strcase "*45 Deg Sad*"))
                  (wcmatch ItemCID "875"))
               (or(wcmatch(strcase ItemDescription)(strcase "*6\" on 6\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6 on 6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\" on 8\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6 on 8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\" on 10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6 on 10*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\" on 12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6 on 12*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\" on 14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6 on 14*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\" on 16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6 on 16*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\" on 18\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6 on 18*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\" on 8\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8 on 8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\" on 10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8 on 10*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\" on 12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8 on 12*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\" on 14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8 on 14*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\" on 16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8 on 16*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\" on 18\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8 on 18*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\" on 10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10 on 10*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\" on 12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10 on 12*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\" on 14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10 on 14*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\" on 16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10 on 16*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\" on 18\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10 on 18*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\" on 20\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10 on 20*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14\" on 14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14 on 14*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14\" on 16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14 on 16*")))
               )
               (and
               (or(wcmatch(strcase ItemSourceFileName)(strcase "*45Deg Flat Saddle*"))
                  (wcmatch(strcase ItemDescription)(strcase "*45D Flat*"))
                  (wcmatch ItemCID "16"))
               (or(wcmatch(strcase ItemDescription)(strcase "*5\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16\"*")))
               )
               (and
               (or(wcmatch(strcase ItemSourceFileName)(strcase "*Rd on Rd Conical*"))
                  (wcmatch(strcase ItemDescription)(strcase "*#8 *"))
                  (wcmatch ItemCID "751"))
               (or(wcmatch(strcase ItemDescription)(strcase "*6\" on 8\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6 on 8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\" on 10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6 on 10*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\" on 12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6 on 12*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\" on 14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6 on 14*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\" on 16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6 on 16*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\" on 18\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6 on 18*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\" on 20\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6 on 20*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\" on 10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8 on 10*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\" on 12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8 on 12*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\" on 14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8 on 14*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\" on 16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8 on 16*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\" on 18\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8 on 18*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\" on 12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10 on 12*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\" on 14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10 on 14*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\" on 16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10 on 16*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\" on 18\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10 on 18*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12\" on 14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12 on 14*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12\" on 16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12 on 16*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12\" on 18\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12 on 18*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12\" on 20\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12 on 20*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14\" on 16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14 on 16*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14\" on 18\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14 on 18*")))
               )
               (and
               (or(wcmatch(strcase ItemSourceFileName)(strcase "*Round Access Door*"))
                  (wcmatch(strcase ItemSourceFileName)(strcase "*#7 Access Door*")))
               (or(wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14\"*")))
               )
               (and
               (or(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Flat Tap*"))
                  (wcmatch(strcase ItemSourceFileName)(strcase "*Flat Conical 1\" Flg*"))
                  (wcmatch ItemCID "345"))
               (or(wcmatch(strcase ItemDescription)(strcase "*5\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*18\"*")))
               )
               (and
               (or(and(wcmatch ItemCID "51")(wcmatch(strcase ItemSourceFileName)(strcase "*6\" Start Collar wFlg*"))(wcmatch(strcase ItemDescription)(strcase "*for Damper*")))
                  (and(wcmatch ItemCID "51")(wcmatch(strcase ItemDescription)(strcase "*Damper*"))))
               (or(wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*18\"*")))
               )
               (and
               (or(and(wcmatch ItemCID "51")(wcmatch(strcase ItemSourceFileName)(strcase "*6\" Start Collar wFlg*"))(not(wcmatch(strcase ItemDescription)(strcase "*for Damper*"))))
                  (and(wcmatch ItemCID "51")(not(wcmatch(strcase ItemDescription)(strcase "*Damper*")))))
               (or(wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14\"*")))
               )
               (and
               (or(wcmatch(strcase ItemSourceFileName)(strcase "Coupling")))
               (or(wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*18\"*")))
               )
               (and
               (or(wcmatch ItemCID "522")
                  (wcmatch(strcase ItemSourceFileName)(strcase "#2 Coupling")))
               (or(= dim1 6)
                  (= dim1 7)
                  (= dim1 8)
                  (= dim1 9)
                  (= dim1 10)
                  (= dim1 12)
                  (= dim1 14)
                  (= dim1 16)
                  (= dim1 18)
                  (= dim1 20))
               )
               )
               )
              (setq Activity# "316")
              (if(or
                 (or(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Cross*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*Conical Tee*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*90 Adj.*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*45 Adj.*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*Misc. Elbow*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*Welded Elbow*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*90Deg Adj.*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*45Deg Adj.*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "Misc. Adj. Elbow*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "Misc. Adjustable Elbow*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "Misc. El*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*Shoe Barrel*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*Shoe Saddle*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*Mitered Offset Fixed*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*Deflector Hood*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*FULL RAD.*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*HALF RAD.*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*Pancake*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*Flex*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*Welded Pipe*"))
                    (wcmatch(strcase ItemDescription)(strcase "* CROSS*"))
                 )
                 (and
                 (= ItemLengthAngle 18)
                 (or(wcmatch(strcase ItemSourceFileName)(strcase "*Wye*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*No Dampers*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*KS7L*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*3-8 Rod*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Lateral 45*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Cross*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Tee*")))
                 (not(wcmatch ItemCID "807"))
                 (not(wcmatch ItemCID "812"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*8/6/6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10/8/6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10/8/8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12/8/6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12/8/8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12/10/6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12/10/8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12/10/10*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14/10/8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14/10/10*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14/12/6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14/12/8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14/12/10*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16/10/10*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16/12/8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16/12/10*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16/14/8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16/14/10*"))))
                 )
                 (and
                 (= ItemLengthAngle 20)
                 (or(wcmatch(strcase ItemSourceFileName)(strcase "*Wye*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*No Dampers*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*KS7L*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*3-8 Rod*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Lateral 45*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Cross*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Tee*")))
                 (not(wcmatch ItemCID "807"))
                 (not(wcmatch ItemCID "812"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*14/12/12*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16/12/12*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16/14/12*"))))
                 )
                 (and
                 (= ItemLengthAngle 30)
                 (or(wcmatch(strcase ItemSourceFileName)(strcase "*Wye*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*No Dampers*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*KS7L*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*3-8 Rod*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Lateral 45*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Cross*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Tee*")))
                 (not(wcmatch ItemCID "807"))
                 (not(wcmatch ItemCID "812"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*16/14/14*"))
                    (wcmatch(strcase ItemDescription)(strcase "*18/14/14*"))))
                 )
                 (and
                 (= ItemLengthAngle 18)
                 (or(wcmatch(strcase ItemSourceFileName)(strcase "*Lateral 45*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*No Dampers*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*KS7L*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*3-8 Rod*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Wye*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Cross*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Tee*")))
                 (not(wcmatch ItemCID "53"))
                 (not(wcmatch ItemCID "812"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*6/6/6*"))
                 (wcmatch(strcase ItemDescription)(strcase "*8/8/8*"))
                 (wcmatch(strcase ItemDescription)(strcase "*10/10/6*"))
                 (wcmatch(strcase ItemDescription)(strcase "*10/10/8*"))
                 (wcmatch(strcase ItemDescription)(strcase "*10/10/10*"))
                 (wcmatch(strcase ItemDescription)(strcase "*12/12/6*"))
                 (wcmatch(strcase ItemDescription)(strcase "*12/12/8*"))
                 (wcmatch(strcase ItemDescription)(strcase "*12/12/10*"))
                 (wcmatch(strcase ItemDescription)(strcase "*14/14/6*"))
                 (wcmatch(strcase ItemDescription)(strcase "*14/14/8*"))
                 (wcmatch(strcase ItemDescription)(strcase "*14/14/10*"))
                 (wcmatch(strcase ItemDescription)(strcase "*16/16/8*"))))
                 )
                 (and
                 (= ItemLengthAngle 20)
                 (or(wcmatch(strcase ItemSourceFileName)(strcase "*Lateral 45*"))
                 (wcmatch(strcase ItemSourceFileName)(strcase "*No Dampers*"))
                 (wcmatch(strcase ItemSourceFileName)(strcase "*KS7L*"))
                 (wcmatch(strcase ItemSourceFileName)(strcase "*3-8 Rod*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Wye*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Cross*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Tee*")))
                 (not(wcmatch ItemCID "53"))
                 (not(wcmatch ItemCID "812"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*12/12/12*"))
                 (wcmatch(strcase ItemDescription)(strcase "*14/14/12*"))))
                 )
                 (and
                 (= ItemLengthAngle 30)
                 (or(wcmatch(strcase ItemSourceFileName)(strcase "*Lateral 45*"))
                 (wcmatch(strcase ItemSourceFileName)(strcase "*No Dampers*"))
                 (wcmatch(strcase ItemSourceFileName)(strcase "*KS7L*"))
                 (wcmatch(strcase ItemSourceFileName)(strcase "*3-8 Rod*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Wye*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Cross*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Tee*")))
                 (not(wcmatch ItemCID "53"))
                 (not(wcmatch ItemCID "812"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*14/14/14*"))))
                 )
                 (and(wcmatch ItemCID "60")
                     (wcmatch(strcase ItemSourceFileName)(strcase "*Cap*"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*5\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*18\"*"))))
                 )
                 (and(wcmatch ItemCID "60")
                     (wcmatch(strcase ItemSourceFileName)(strcase "*End Cap*"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*5\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*18\"*"))))
                 )
                 (and(wcmatch ItemCID "1112")
                     (wcmatch(strcase ItemDescription)(strcase "*3\" Collar*"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*18\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*20\"*"))))
                 )
                 (and(wcmatch ItemCID "1112")
                     (wcmatch(strcase ItemDescription)(strcase "*Spin-in*"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16\"*"))))
                 )
                 (and(wcmatch(strcase ItemDescription)(strcase "*6\" Long Taper*"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*7-5*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8-6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9-7*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10-8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10-9*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12-10*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14-12*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16-14*"))
                    (wcmatch(strcase ItemDescription)(strcase "*18-16*"))))
                 )
                 (and(wcmatch(strcase ItemDescription)(strcase "*12\" Long Taper*"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*10-6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12-8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14-10*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16-12*"))
                    (wcmatch(strcase ItemDescription)(strcase "*18-14*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8-5*"))
                    (wcmatch(strcase ItemDescription)(strcase "*7-6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9-6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8-7*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9-7*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10-7*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12-7*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10-9*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12-6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12-10*"))
                    (wcmatch(strcase ItemDescription)(strcase "*18-10*"))))
                 )
                 (and(wcmatch(strcase ItemDescription)(strcase "*18\" Long Taper*"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*12-6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14-6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12-8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14-8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16-8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16-12*"))
                    (wcmatch(strcase ItemDescription)(strcase "*18-12*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16-14*"))
                    (wcmatch(strcase ItemDescription)(strcase "*18-14*"))
                    (wcmatch(strcase ItemDescription)(strcase "*20-14*"))
                    (wcmatch(strcase ItemDescription)(strcase "*18-16*"))
                    (wcmatch(strcase ItemDescription)(strcase "*20-18*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6-5*"))
                    (wcmatch(strcase ItemDescription)(strcase "*7-6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8-7*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9-8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10-9*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9-6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9-7*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10-7*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12-7*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14-7*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12-9*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14-9*"))))
                 )
                 (and
                 (or(wcmatch(strcase ItemSourceFileName)(strcase "*45Deg on Rd Saddle*"))
                    (wcmatch(strcase ItemDescription)(strcase "*45 Deg Sad*"))
                    (wcmatch ItemCID "875"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*6\" on 6\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6 on 6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\" on 8\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6 on 8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\" on 10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6 on 10*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\" on 12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6 on 12*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\" on 14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6 on 14*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\" on 16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6 on 16*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\" on 18\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6 on 18*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\" on 8\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8 on 8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\" on 10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8 on 10*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\" on 12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8 on 12*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\" on 14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8 on 14*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\" on 16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8 on 16*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\" on 18\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8 on 18*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\" on 10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10 on 10*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\" on 12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10 on 12*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\" on 14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10 on 14*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\" on 16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10 on 16*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\" on 18\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10 on 18*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\" on 20\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10 on 20*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14\" on 14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14 on 14*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14\" on 16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14 on 16*"))))
                 )
                 (and
                 (or(wcmatch(strcase ItemSourceFileName)(strcase "*45Deg Flat Saddle*"))
                    (wcmatch(strcase ItemDescription)(strcase "*45D Flat*"))
                    (wcmatch ItemCID "16"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*5\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16\"*"))))
                 )
                 (and
                 (or(wcmatch(strcase ItemSourceFileName)(strcase "*Rd on Rd Conical*"))
                    (wcmatch(strcase ItemDescription)(strcase "*#8 *"))
                    (wcmatch ItemCID "751"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*6\" on 8\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6 on 8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\" on 10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6 on 10*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\" on 12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6 on 12*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\" on 14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6 on 14*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\" on 16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6 on 16*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\" on 18\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6 on 18*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\" on 20\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6 on 20*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\" on 10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8 on 10*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\" on 12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8 on 12*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\" on 14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8 on 14*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\" on 16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8 on 16*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\" on 18\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8 on 18*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\" on 12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10 on 12*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\" on 14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10 on 14*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\" on 16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10 on 16*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\" on 18\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10 on 18*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12\" on 14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12 on 14*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12\" on 16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12 on 16*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12\" on 18\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12 on 18*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12\" on 20\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12 on 20*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14\" on 16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14 on 16*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14\" on 18\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14 on 18*"))))
                 )
                 (and
                 (or(wcmatch(strcase ItemSourceFileName)(strcase "*Round Access Door*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*#7 Access Door*")))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14\"*"))))
                 )
                 (and
                 (or(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Flat Tap*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*Flat Conical 1\" Flg*"))
                    (wcmatch ItemCID "345"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*5\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*18\"*"))))
                 )
                 (and
                 (or(and(wcmatch ItemCID "51")(wcmatch(strcase ItemSourceFileName)(strcase "*6\" Start Collar wFlg*"))(wcmatch(strcase ItemDescription)(strcase "*for Damper*")))
                    (and(wcmatch ItemCID "51")(wcmatch(strcase ItemDescription)(strcase "*Damper*"))))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*18\"*"))))
                 )
                 (and
                 (or(and(wcmatch ItemCID "51")(wcmatch(strcase ItemSourceFileName)(strcase "*6\" Start Collar wFlg*"))(not(wcmatch(strcase ItemDescription)(strcase "*for Damper*"))))
                    (and(wcmatch ItemCID "51")(not(wcmatch(strcase ItemDescription)(strcase "*Damper*")))))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14\"*"))))
                 )
                 (and
                 (or(wcmatch(strcase ItemSourceFileName)(strcase "Coupling")))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*18\"*"))))
                 )
                 (and
                 (or(wcmatch ItemCID "522")
                    (wcmatch(strcase ItemSourceFileName)(strcase "#2 Coupling")))
                 (not(or(= dim1 6)
                    (= dim1 7)
                    (= dim1 8)
                    (= dim1 9)
                    (= dim1 10)
                    (= dim1 12)
                    (= dim1 14)
                    (= dim1 16)
                    (= dim1 18)
                    (= dim1 20)))
                 )
                 )
                (setq Activity# "313")
                (if(and(not(or(wcmatch(strcase ItemService)(strcase "*Weld*"))(wcmatch(strcase ItemServiceType)(strcase "*Equipment*"))))
		  (or
                   (and(wcmatch(strcase ItemDescription)(strcase "Straight"))
                       (wcmatch(strcase c1Spec)(strcase "TDF"))
                       (/= ItemLengthAngle 56)
                   )
                   (and(wcmatch(strcase ItemDescription)(strcase "Straight"))
                       (or(wcmatch(strcase c1Spec)(strcase "Stand S&D"))
                          (wcmatch(strcase c1Spec)(strcase "Flat S&D")))
                       (/= ItemLengthAngle 59))
                   (wcmatch(strcase ItemDescription)(strcase "Cut Joint"))
                   (wcmatch(strcase ItemDescription)(strcase "Plenum"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "Transition"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "*Rect Elbow"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "F16"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "F 16"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "F17"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "F41"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "F2"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "F4"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "SQ-RD"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "TDF CAP"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "SD CAP"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "PLUG CAP"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "S&D CAP"))
                   ))
                  (setq Activity# "317")
                (if(wcmatch(strcase ItemService)(strcase "*Weld*"))
                  (setq Activity# "318")
		  (setq Activity# "Unassigned")

		 ) ) ) ) ) ) ) ) ) ) );end ifs
      (vlax-put-property vla "CustomData" (strcat "ItemCID" " = " ItemCID ","))
      (vlax-put-property vla "CustomData" (strcat "Activity_#" " = " Activity# ","))
        (setq i (1+ i))
      );end while
  (princ "Thank you for waiting, this drawing and its items have been updated with Job information, Activity Numbers, and ItemCIDs")
    );end progn
  (princ "This drawing has been updated with Job information.")
  );end if
  (princ)
);end defun
;**************************************************************************************************************************************************
;**************************************************************************************************************************************************
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
;**************************************************************************************************************************************************
(defun GET_TOP_SECTION ()
  (tblnext "layer" T)
  (setq topSection 0)
  (while(setq evalLayer (cdr(assoc 2 (tblnext "layer"))))
    (if(wcmatch evalLayer "*FLOR-SECT-HGHT*")
      (setq sectionLayers (append sectionLayers (list evallayer)))
    );end if
  );end while
  (if(not(= sectionLayers nil))
    (foreach elmt sectionLayers
      (STRING_SPLIT ")-[" elmt)
      (STRING_SPLIT "]" nth1)
      (if(> (atoi nth0) topSection)(setq topSection (atoi nth0)))
    );end foreach
    (c:Make_Section_Layers)
  );end if
  (princ (strcat "Highest section datum floor elevation found was: " (rtos topSection 2 0) " inches above zero."))
  (setq evalLayer nil
        sectionLayers nil)
  (princ)
);end defun
;**************************************************************************************************************************************************
(defun PRINT_ALL_LAYERS ()
  (tblnext "layer" T)
  (while(setq a (tblnext "layer"))
    (princ a)(terpri)
  );end while
);end defun
;**************************************************************************************************************************************************
(defun QUICK_SS ()
  (setq i 0
        sset (ssget "X" '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (INSIDE_LOOP_VARIABLES sset i)
);end defun
;**************************************************************************************************************************************************
(defun Delete_TextDummy_Layer&Items ()
    (tblnext "layer" T)
    (while(setq evalLayer (cdr(assoc 2 (tblnext "layer"))))
      (if(wcmatch evalLayer "*TEXT-DUMY*")
        (progn
          (command "_.layer" "unlock" evalLayer "Thaw" evalLayer "ON" evalLayer "")
          (setq sset (ssget "X" (list(cons 8 evalLayer))))
          (if(not(= sset nil))
            (command "erase" sset ""))
          (if(/= (getvar "CLAYER") evalLayer)
            (command "_PURGE" "_LAY" evalLayer "_NO"))
        );progn
      );end if
    );end while
  (setvar 're-init 16)
);end defun
;(command "MAP_SWAPOUT" "")
;**************************************************************************************************************************************************
;(alert "MADE IT THIS FAR");MADE IT THIS FAR - MADE IT THIS FAR - MADE IT THIS FAR - MADE IT THIS FAR - MADE IT THIS FAR - MADE IT THIS FAR - MADE IT THIS FAR - MADE IT THIS FAR - MADE IT THIS FAR - MADE IT THIS FAR - 
(defun c:Update_Drawing ()
  (setvar "cmdecho" 0)
  (OUTSIDE_LOOP_VARIABLES nil)
  (terpri)(princ "Updating Blocks --")(princ)
  (if(not(= block_WorkingTemplateName nil))(command "._purge" "B" block_WorkingTemplateName "Y" (if(> (getvar 'cmdactive) 0) "Y")))
  (if(not(= block_WorkingTemplateName nil))(command "._insert" (strcat customBlocksDirectory "\\" block_WorkingTemplateName)(command)))
  (if(not(= block_ElevName nil))(command "._insert" (strcat customBlocksDirectory "\\" block_SizeName)(command))(command "attsync" "n" block_ElevName))
  (if(not(= block_SizeName nil))(command "._insert" (strcat customBlocksDirectory "\\" block_SizeName)(command))(command "attsync" "n" block_SizeName))
  (if(not(= block_DiamName nil))(command "._insert" (strcat customBlocksDirectory "\\" block_DiamName)(command))(command "attsync" "n" block_DiamName))
  (if(not(= block_TagName nil))(command "._insert" (strcat customBlocksDirectory "\\" block_TagName)(command))(command "attsync" "n" block_TagName))
  (if(not(= block_StampName nil))(command "._insert" (strcat customBlocksDirectory "\\" block_StampName)(command))(command "attsync" "n" block_StampName))
  (if(not(= block_TitleBlockName nil))(command "._insert" (strcat customBlocksDirectory "\\" block_TitleBlockName)(command))(command "attsync" "n" block_TitleBlockName))
  (Delete_TextDummy_Layer&Items)
  (c:Set_Layer_Filters)
  (terpri)(princ "-- Blocks Updated")(princ)
  (setq i 0
        sset (ssget "X" '((0 . "MAPS_SOLID"))));end setq
  (if(not(= sset nil))
    (progn
      (terpri)(princ "Updating Services and Specifications --")(princ)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if ((wildcard(item.service, \"*SUPPLY*\") = 1) and (wildcard(item.service, \"*2\"+qt+\"*\") = 1)) or ((wildcard(item.specification, \"*+2*\") = 1) and (wildcard(item.service, \"*None*\") = 1)) then" writeToVBCode)
(write-line "item.service = \"Supply Air (+2''WG) Low Pressure\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif ((wildcard(item.service, \"*SUPPLY*\") = 1) and (wildcard(item.service, \"*3\"+qt+\"*\") = 1)) or ((wildcard(item.specification, \"*+3*\") = 1) and (wildcard(item.service, \"*None*\") = 1)) then" writeToVBCode)
(write-line "item.service = \"Supply Air (+3''WG) Medium Pressure\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif ((wildcard(item.service, \"*SUPPLY*\") = 1) and (wildcard(item.service, \"*4\"+qt+\"*\") = 1)) or ((wildcard(item.specification, \"*+4*\") = 1) and (wildcard(item.service, \"*None*\") = 1)) then" writeToVBCode)
(write-line "item.service = \"Supply Air (+4''WG) High Pressure\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif ((wildcard(item.service, \"*SUPPLY*\") = 1) and (wildcard(item.service, \"*6\"+qt+\"*\") = 1)) or ((wildcard(item.specification, \"*+6*\") = 1) and (wildcard(item.service, \"*None*\") = 1)) then" writeToVBCode)
(write-line "item.service = \"Supply Air (+6''WG) High Pressure\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif ((wildcard(item.service, \"*SUPPLY*\") = 1) and (wildcard(item.service, \"*10\"+qt+\"*\") = 1)) or ((wildcard(item.specification, \"*+10*\") = 1) and (wildcard(item.service, \"*None*\") = 1)) then" writeToVBCode)
(write-line "item.service = \"Supply Air (+10''WG) High Pressure\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif ((wildcard(item.service, \"*RETURN*\") = 1) and (wildcard(item.service, \"*2\"+qt+\"*\") = 1)) then" writeToVBCode)
(write-line "item.service = \"Return Air (-2''WG) Low Pressure\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif ((wildcard(item.service, \"*RETURN*\") = 1) and (wildcard(item.service, \"*3\"+qt+\"*\") = 1)) then" writeToVBCode)
(write-line "item.service = \"Return Air (-3''WG) Medium Pressure\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif ((wildcard(item.service, \"*RETURN*\") = 1) and (wildcard(item.service, \"*4\"+qt+\"*\") = 1)) then" writeToVBCode)
(write-line "item.service = \"Return Air (-4''WG) High Pressure\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif ((wildcard(item.service, \"*RETURN*\") = 1) and (wildcard(item.service, \"*6\"+qt+\"*\") = 1)) then" writeToVBCode)
(write-line "item.service = \"Return Air (-6''WG) High Pressure\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif ((wildcard(item.service, \"*RETURN*\") = 1) and (wildcard(item.service, \"*10\"+qt+\"*\") = 1)) then" writeToVBCode)
(write-line "item.service = \"Return Air (-10''WG) High Pressure\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service, \"*EXHAUST*\") = 1) and (wildcard(item.service, \"*WELD*\") = 0) and (wildcard(item.service, \"*PVC*\") = 0) and (wildcard(item.service, \"*2\"+qt+\"*\") = 1) or ((wildcard(item.specification, \"*-2*\") = 1) and (wildcard(item.specification, \"*WELD*\") = 0) and (wildcard(item.service, \"*None*\") = 1)) then" writeToVBCode)
(write-line "item.service = \"Exhaust Air (-2''WG) Low Pressure\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service, \"*EXHAUST*\") = 1) and (wildcard(item.service, \"*WELD*\") = 0) and (wildcard(item.service, \"*PVC*\") = 0) and (wildcard(item.service, \"*3\"+qt+\"*\") = 1) or ((wildcard(item.specification, \"*-3*\") = 1) and (wildcard(item.specification, \"*WELD*\") = 0) and (wildcard(item.service, \"*None*\") = 1)) then" writeToVBCode)
(write-line "item.service = \"Exhaust Air (-3''WG) Medium Pressure\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service, \"*EXHAUST*\") = 1) and (wildcard(item.service, \"*WELD*\") = 0) and (wildcard(item.service, \"*PVC*\") = 0) and (wildcard(item.service, \"*4\"+qt+\"*\") = 1) or ((wildcard(item.specification, \"*-4*\") = 1) and (wildcard(item.specification, \"*WELD*\") = 0) and (wildcard(item.service, \"*None*\") = 1)) then" writeToVBCode)
(write-line "item.service = \"Exhaust Air (-4''WG) High Pressure\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service, \"*EXHAUST*\") = 1) and (wildcard(item.service, \"*WELD*\") = 0) and (wildcard(item.service, \"*PVC*\") = 0) and (wildcard(item.service, \"*6\"+qt+\"*\") = 1) or ((wildcard(item.specification, \"*-6*\") = 1) and (wildcard(item.specification, \"*WELD*\") = 0) and (wildcard(item.service, \"*None*\") = 1)) then" writeToVBCode)
(write-line "item.service = \"Exhaust Air (-6''WG) High Pressure\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service, \"*EXHAUST*\") = 1) and (wildcard(item.service, \"*WELD*\") = 0) and (wildcard(item.service, \"*PVC*\") = 0) and (wildcard(item.service, \"*10\"+qt+\"*\") = 1) or ((wildcard(item.specification, \"*-10*\") = 1) and (wildcard(item.specification, \"*WELD*\") = 0) and (wildcard(item.service, \"*None*\") = 1)) then" writeToVBCode)
(write-line "item.service = \"Exhaust Air (-10''WG) High Pressure\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif ((wildcard(item.service, \"*EXHAUST*\") = 1) and (wildcard(item.service, \"*WELD*\") = 1) and (wildcard(item.service, \"*2\"+qt+\"*\") = 1)) or ((wildcard(item.specification, \"*WELD 2*\") = 1) and (wildcard(item.service, \"*None*\") = 1)) then" writeToVBCode)
(write-line "item.service = \"Exhaust Air Welded (-2''WG) Low Pressure\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif ((wildcard(item.service, \"*EXHAUST*\") = 1) and (wildcard(item.service, \"*WELD*\") = 1) and (wildcard(item.service, \"*3\"+qt+\"*\") = 1)) or ((wildcard(item.specification, \"*WELD 3*\") = 1) and (wildcard(item.service, \"*None*\") = 1)) then" writeToVBCode)
(write-line "item.service = \"Exhaust Air Welded (-3''WG) Medium Pressure\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif ((wildcard(item.service, \"*EXHAUST*\") = 1) and (wildcard(item.service, \"*WELD*\") = 1) and (wildcard(item.service, \"*4\"+qt+\"*\") = 1)) or ((wildcard(item.specification, \"*WELD 4*\") = 1) and (wildcard(item.service, \"*None*\") = 1)) then" writeToVBCode)
(write-line "item.service = \"Exhaust Air Welded (-4''WG) High Pressure\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif ((wildcard(item.service, \"*EXHAUST*\") = 1) and (wildcard(item.service, \"*WELD*\") = 1) and (wildcard(item.service, \"*6\"+qt+\"*\") = 1)) or ((wildcard(item.specification, \"*WELD 6*\") = 1) and (wildcard(item.service, \"*None*\") = 1)) then" writeToVBCode)
(write-line "item.service = \"Exhaust Air Welded (-6''WG) High Pressure\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif ((wildcard(item.service, \"*EXHAUST*\") = 1) and (wildcard(item.service, \"*WELD*\") = 1) and (wildcard(item.service, \"*10\"+qt+\"*\") = 1)) or ((wildcard(item.specification, \"*WELD 10*\") = 1) and (wildcard(item.service, \"*None*\") = 1)) then" writeToVBCode)
(write-line "item.service = \"Exhaust Air Welded (-10''WG) High Pressure\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service, \"*EXHAUST*\") = 1) and (wildcard(item.service, \"*PVC*\") = 1) and (wildcard(item.service, \"*2\"+qt+\"*\") = 1) then" writeToVBCode)
(write-line "item.service = \"Exhaust Air PVC (-2''WG) Low Pressure\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service, \"*COMBUSTION*\") = 1) and (wildcard(item.service, \"*2\"+qt+\"*\") = 1) then" writeToVBCode)
(write-line "item.service = \"Combustion Air (-2''WG) Low Pressure\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service, \"*OUTSIDE*\") = 1) and (wildcard(item.service, \"*2\"+qt+\"*\") = 1) then" writeToVBCode)
(write-line "item.service = \"Outside Air (-2''WG) Low Pressure\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service, \"*TRANSFER*\") = 1) and (wildcard(item.service, \"*2\"+qt+\"*\") = 1) then" writeToVBCode)
(write-line "item.service = \"Transfer Air (-2''WG) Low Pressure\"" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "else" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if (wildcard(item.service,\"*combustion*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-2''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*exhaust*\" + \"*-10*\") = 1) and (wildcard(item.service,\"*weld*\") = 0) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-10''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*exhaust*\" + \"*-6*\") = 1) and (wildcard(item.service,\"*weld*\") = 0) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-6''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*exhaust*\" + \"*-4*\") = 1) and (wildcard(item.service,\"*weld*\") = 0) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-4''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*exhaust*\" + \"*inslab*\") = 1) and (wildcard(item.service,\"*weld*\") = 0) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-2''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*exhaust*\" + \"*low*\") = 1) and (wildcard(item.service,\"*weld*\") = 0) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-2''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*exhaust*\" + \"*medium*\") = 1) and (wildcard(item.service,\"*weld*\") = 0) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-3''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*exhaust*\" + \"*weld*\" + \"*-10*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"WELD 10\" + qt + \" 5FT\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*exhaust*\" + \"*weld*\" + \"*-6*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"WELD 6\" + qt + \" 5FT\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*exhaust*\" + \"*weld*\" + \"*-4*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"WELD 4\" + qt + \" 5FT\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*exhaust*\" + \"*weld*\" + \"*-2*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"WELD 2\" + qt + \" 5FT\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*outside*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-2''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*return*\" + \"*-10*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-10''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*return*\" + \"*-6*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-6''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*return*\" + \"*-4*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-4''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*return*\" + \"*-2*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-2''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*return*\" + \"*medium*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-3''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*supply*\" + \"*+10*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"+10''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*supply*\" + \"*+6*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"+6''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*supply*\" + \"*+4*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"+4''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*supply*\" + \"*medium*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"+3''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*supply*\" + \"*low*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"+2''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*transfer*\") = 1) then" writeToVBCode)
(write-line "item.speclock = false" writeToVBCode)
(write-line "item.gaugelock = false" writeToVBCode)
(write-line "item.specification = \"-2''\"" writeToVBCode)
(write-line "item.speclock = true" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
    (princ)
    (close writeToVBCode)
    (executescript vbCode sset)
    (terpri)(princ "-- Services and Specifications Updated")(princ)
    );progn
  );end if
(progn
  (if(>= (distof acadVersionYear) 2019)
    (progn
      (terpri)(prompt "Updating Activity Numbers and ItemCIDs for all items --")(princ)
    (while(< i limit)
    (INSIDE_LOOP_VARIABLES sset i)
    (if(or(wcmatch(strcase ItemServiceType)(strcase "*Equipment*"))
        (wcmatch(strcase ItemSourceFileName)(strcase "*Diffuser*"))
        (wcmatch(strcase ItemSourceFileName)(strcase "*Register*"))
        (wcmatch(strcase ItemSourceFileName)(strcase "*Grille*"))
        (wcmatch(strcase ItemSourceFileName)(strcase "*Titus*")))
    (setq Activity# "75")
    (if(or(wcmatch(strcase ItemServiceType)(strcase "*Fire Damper*"))
          (wcmatch(strcase ItemDescription)(strcase "*Canvas*"))
          (wcmatch(strcase ItemDescription)(strcase "*Access Door*"))
          (wcmatch(strcase ItemDescription)(strcase "*Damper Sleeve*"))
          (wcmatch(strcase ItemDescription)(strcase "*Plate*"))
          (and(wcmatch(strcase ItemSourceFileName)(strcase "*Angle*"))(not(wcmatch(strcase ItemSourceFileName)(strcase "*Rectangle*"))))
          (wcmatch(strcase ItemSourceFileName)(strcase "*Can*")))
      (setq Activity# "302")
      (if(or allSupport (wcmatch(strcase ItemServiceType)(strcase "*Hanger*")))
        (setq Activity# "303")
    (if(and(wcmatch(strcase ItemServiceType)(strcase "*Ductboard*"))
          (wcmatch(strcase ItemSourceFileName)(strcase "*Straight*")))
      (setq Activity# "304")
    (if(and(wcmatch(strcase ItemServiceType)(strcase "*Ductboard*"))
          (not(wcmatch(strcase ItemSourceFileName)(strcase "*Straight*"))))
      (setq Activity# "305")
        (if(and(not(or(wcmatch(strcase ItemService)(strcase "*Weld*"))(wcmatch(strcase ItemServiceType)(strcase "*Equipment*"))))
           (or
           (and(wcmatch(strcase ItemSourceFileName)(strcase "Straight"))
                       (or(wcmatch(strcase c1Name)(strcase "TDF*"))
                          (wcmatch(strcase c2Name)(strcase "TDF*"))
                          (wcmatch(strcase c1Name)(strcase "*JF*"))
                          (wcmatch(strcase c2Name)(strcase "*JF*")))
               (>= ItemLengthAngle 56))
           (and(wcmatch(strcase ItemSourceFileName)(strcase "Straight"))
               (or(wcmatch(strcase c1Name)(strcase "Stand S&D"))
                  (wcmatch(strcase c1Name)(strcase "Flat S&D"))
                  (wcmatch(strcase c2Name)(strcase "Stand S&D"))
                  (wcmatch(strcase c2Name)(strcase "Flat S&D"))
                  (wcmatch(strcase c1Name)(strcase "*S&D*"))
                  (wcmatch(strcase c2Name)(strcase "*S&D*")))
               (>= ItemLengthAngle 59))
          ))
          (setq Activity# "310")
          (if(wcmatch(strcase ItemSourceFileName)(strcase "*SPIRAL"))
            (setq Activity# "312")
            (if(and(not(or(wcmatch(strcase ItemService)(strcase "*Weld*"))(wcmatch(strcase ItemServiceType)(strcase "*Equipment*"))))
               (or
               (wcmatch(strcase ItemSourceFileName)(strcase "*Pipe*"))
               (and
               (= ItemLengthAngle 18)
               (or(wcmatch(strcase ItemSourceFileName)(strcase "*Wye*"))
                  (wcmatch(strcase ItemSourceFileName)(strcase "*No Dampers*"))
                  (wcmatch(strcase ItemSourceFileName)(strcase "*KS7L*"))
                  (wcmatch(strcase ItemSourceFileName)(strcase "*3-8 Rod*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Lateral 45*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Cross*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Tee*")))
               (not(wcmatch ItemCID "807"))
               (not(wcmatch ItemCID "812"))
               (or(wcmatch(strcase ItemDescription)(strcase "*8/6/6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10/8/6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10/8/8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12/8/6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12/8/8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12/10/6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12/10/8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12/10/10*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14/10/8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14/10/10*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14/12/6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14/12/8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14/12/10*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16/10/10*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16/12/8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16/12/10*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16/14/8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16/14/10*")))
               )
               (and
               (= ItemLengthAngle 20)
               (or(wcmatch(strcase ItemSourceFileName)(strcase "*Wye*"))
                  (wcmatch(strcase ItemSourceFileName)(strcase "*No Dampers*"))
                  (wcmatch(strcase ItemSourceFileName)(strcase "*KS7L*"))
                  (wcmatch(strcase ItemSourceFileName)(strcase "*3-8 Rod*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Lateral 45*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Cross*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Tee*")))
               (not(wcmatch ItemCID "807"))
               (not(wcmatch ItemCID "812"))
               (or(wcmatch(strcase ItemDescription)(strcase "*14/12/12*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16/12/12*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16/14/12*")))
               )
               (and
               (= ItemLengthAngle 30)
               (or(wcmatch(strcase ItemSourceFileName)(strcase "*Wye*"))
                  (wcmatch(strcase ItemSourceFileName)(strcase "*No Dampers*"))
                  (wcmatch(strcase ItemSourceFileName)(strcase "*KS7L*"))
                  (wcmatch(strcase ItemSourceFileName)(strcase "*3-8 Rod*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Lateral 45*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Cross*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Tee*")))
               (not(wcmatch ItemCID "807"))
               (not(wcmatch ItemCID "812"))
               (or(wcmatch(strcase ItemDescription)(strcase "*16/14/14*"))
                  (wcmatch(strcase ItemDescription)(strcase "*18/14/14*")))
               )
               (and
               (= ItemLengthAngle 18)
               (or(wcmatch(strcase ItemSourceFileName)(strcase "*Lateral 45*"))
               (wcmatch(strcase ItemSourceFileName)(strcase "*No Dampers*"))
               (wcmatch(strcase ItemSourceFileName)(strcase "*KS7L*"))
               (wcmatch(strcase ItemSourceFileName)(strcase "*3-8 Rod*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Wye*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Cross*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Tee*")))
               (not(wcmatch ItemCID "53"))
               (not(wcmatch ItemCID "812"))
               (or(wcmatch(strcase ItemDescription)(strcase "*6/6/6*"))
               (wcmatch(strcase ItemDescription)(strcase "*8/8/8*"))
               (wcmatch(strcase ItemDescription)(strcase "*10/10/6*"))
               (wcmatch(strcase ItemDescription)(strcase "*10/10/8*"))
               (wcmatch(strcase ItemDescription)(strcase "*10/10/10*"))
               (wcmatch(strcase ItemDescription)(strcase "*12/12/6*"))
               (wcmatch(strcase ItemDescription)(strcase "*12/12/8*"))
               (wcmatch(strcase ItemDescription)(strcase "*12/12/10*"))
               (wcmatch(strcase ItemDescription)(strcase "*14/14/6*"))
               (wcmatch(strcase ItemDescription)(strcase "*14/14/8*"))
               (wcmatch(strcase ItemDescription)(strcase "*14/14/10*"))
               (wcmatch(strcase ItemDescription)(strcase "*16/16/8*")))
               )
               (and
               (= ItemLengthAngle 20)
               (or(wcmatch(strcase ItemSourceFileName)(strcase "*Lateral 45*"))
               (wcmatch(strcase ItemSourceFileName)(strcase "*No Dampers*"))
               (wcmatch(strcase ItemSourceFileName)(strcase "*KS7L*"))
               (wcmatch(strcase ItemSourceFileName)(strcase "*3-8 Rod*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Wye*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Cross*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Tee*")))
               (not(wcmatch ItemCID "53"))
               (not(wcmatch ItemCID "812"))
               (or(wcmatch(strcase ItemDescription)(strcase "*12/12/12*"))
               (wcmatch(strcase ItemDescription)(strcase "*14/14/12*")))
               )
               (and
               (= ItemLengthAngle 30)
               (or(wcmatch(strcase ItemSourceFileName)(strcase "*Lateral 45*"))
               (wcmatch(strcase ItemSourceFileName)(strcase "*No Dampers*"))
               (wcmatch(strcase ItemSourceFileName)(strcase "*KS7L*"))
               (wcmatch(strcase ItemSourceFileName)(strcase "*3-8 Rod*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Wye*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Cross*")))
               (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Tee*")))
               (not(wcmatch ItemCID "53"))
               (not(wcmatch ItemCID "812"))
               (or(wcmatch(strcase ItemDescription)(strcase "*14/14/14*")))
               )
               (and
               (wcmatch ItemCID "60")
               (wcmatch(strcase ItemSourceFileName)(strcase "*Cap*"))
               (or(wcmatch(strcase ItemDescription)(strcase "*5\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*18\"*")))
               )
               (and
               (wcmatch ItemCID "60")
               (wcmatch(strcase ItemSourceFileName)(strcase "*End Cap*"))
               (or(wcmatch(strcase ItemDescription)(strcase "*5\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*18\"*")))
               )
               (and
               (wcmatch ItemCID "1112")
               (wcmatch(strcase ItemDescription)(strcase "*3\" Collar*"))
               (or(wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*18\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*20\"*")))
               )
               (and
               (wcmatch ItemCID "1112")
               (wcmatch(strcase ItemDescription)(strcase "*Spin-in*"))
               (or(wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16\"*")))
               )
               (and
                  (wcmatch(strcase ItemDescription)(strcase "*6\" Long Taper*"))
               (or(wcmatch(strcase ItemDescription)(strcase "*7-5*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8-6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9-7*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10-8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10-9*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12-10*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14-12*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16-14*"))
                  (wcmatch(strcase ItemDescription)(strcase "*18-16*")))
               )
               (and
                  (wcmatch(strcase ItemDescription)(strcase "*12\" Long Taper*"))
               (or(wcmatch(strcase ItemDescription)(strcase "*10-6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12-8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14-10*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16-12*"))
                  (wcmatch(strcase ItemDescription)(strcase "*18-14*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8-5*"))
                  (wcmatch(strcase ItemDescription)(strcase "*7-6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9-6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8-7*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9-7*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10-7*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12-7*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10-9*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12-6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12-10*"))
                  (wcmatch(strcase ItemDescription)(strcase "*18-10*")))
               )
               (and
                  (wcmatch(strcase ItemDescription)(strcase "*18\" Long Taper*"))
               (or(wcmatch(strcase ItemDescription)(strcase "*12-6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14-6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12-8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14-8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16-8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16-12*"))
                  (wcmatch(strcase ItemDescription)(strcase "*18-12*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16-14*"))
                  (wcmatch(strcase ItemDescription)(strcase "*18-14*"))
                  (wcmatch(strcase ItemDescription)(strcase "*20-14*"))
                  (wcmatch(strcase ItemDescription)(strcase "*18-16*"))
                  (wcmatch(strcase ItemDescription)(strcase "*20-18*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6-5*"))
                  (wcmatch(strcase ItemDescription)(strcase "*7-6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8-7*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9-8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10-9*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9-6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9-7*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10-7*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12-7*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14-7*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12-9*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14-9*")))
               )
               (and
               (or(wcmatch(strcase ItemSourceFileName)(strcase "*45Deg on Rd Saddle*"))
                  (wcmatch(strcase ItemDescription)(strcase "*45 Deg Sad*"))
                  (wcmatch ItemCID "875"))
               (or(wcmatch(strcase ItemDescription)(strcase "*6\" on 6\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6 on 6*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\" on 8\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6 on 8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\" on 10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6 on 10*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\" on 12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6 on 12*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\" on 14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6 on 14*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\" on 16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6 on 16*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\" on 18\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6 on 18*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\" on 8\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8 on 8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\" on 10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8 on 10*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\" on 12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8 on 12*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\" on 14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8 on 14*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\" on 16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8 on 16*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\" on 18\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8 on 18*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\" on 10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10 on 10*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\" on 12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10 on 12*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\" on 14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10 on 14*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\" on 16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10 on 16*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\" on 18\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10 on 18*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\" on 20\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10 on 20*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14\" on 14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14 on 14*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14\" on 16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14 on 16*")))
               )
               (and
               (or(wcmatch(strcase ItemSourceFileName)(strcase "*45Deg Flat Saddle*"))
                  (wcmatch(strcase ItemDescription)(strcase "*45D Flat*"))
                  (wcmatch ItemCID "16"))
               (or(wcmatch(strcase ItemDescription)(strcase "*5\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16\"*")))
               )
               (and
               (or(wcmatch(strcase ItemSourceFileName)(strcase "*Rd on Rd Conical*"))
                  (wcmatch(strcase ItemDescription)(strcase "*#8 *"))
                  (wcmatch ItemCID "751"))
               (or(wcmatch(strcase ItemDescription)(strcase "*6\" on 8\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6 on 8*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\" on 10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6 on 10*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\" on 12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6 on 12*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\" on 14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6 on 14*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\" on 16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6 on 16*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\" on 18\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6 on 18*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\" on 20\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6 on 20*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\" on 10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8 on 10*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\" on 12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8 on 12*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\" on 14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8 on 14*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\" on 16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8 on 16*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\" on 18\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8 on 18*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\" on 12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10 on 12*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\" on 14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10 on 14*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\" on 16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10 on 16*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\" on 18\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10 on 18*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12\" on 14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12 on 14*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12\" on 16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12 on 16*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12\" on 18\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12 on 18*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12\" on 20\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12 on 20*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14\" on 16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14 on 16*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14\" on 18\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14 on 18*")))
               )
               (and
               (or(wcmatch(strcase ItemSourceFileName)(strcase "*Round Access Door*"))
                  (wcmatch(strcase ItemSourceFileName)(strcase "*#7 Access Door*")))
               (or(wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14\"*")))
               )
               (and
               (or(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Flat Tap*"))
                  (wcmatch(strcase ItemSourceFileName)(strcase "*Flat Conical 1\" Flg*"))
                  (wcmatch ItemCID "345"))
               (or(wcmatch(strcase ItemDescription)(strcase "*5\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*18\"*")))
               )
               (and
               (or(and(wcmatch ItemCID "51")(wcmatch(strcase ItemSourceFileName)(strcase "*6\" Start Collar wFlg*"))(wcmatch(strcase ItemDescription)(strcase "*for Damper*")))
                  (and(wcmatch ItemCID "51")(wcmatch(strcase ItemDescription)(strcase "*Damper*"))))
               (or(wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*18\"*")))
               )
               (and
               (or(and(wcmatch ItemCID "51")(wcmatch(strcase ItemSourceFileName)(strcase "*6\" Start Collar wFlg*"))(not(wcmatch(strcase ItemDescription)(strcase "*for Damper*"))))
                  (and(wcmatch ItemCID "51")(not(wcmatch(strcase ItemDescription)(strcase "*Damper*")))))
               (or(wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14\"*")))
               )
               (and
               (or(wcmatch(strcase ItemSourceFileName)(strcase "Coupling")))
               (or(wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*16\"*"))
                  (wcmatch(strcase ItemDescription)(strcase "*18\"*")))
               )
               (and
               (or(wcmatch ItemCID "522")
                  (wcmatch(strcase ItemSourceFileName)(strcase "#2 Coupling")))
               (or(= dim1 6)
                  (= dim1 7)
                  (= dim1 8)
                  (= dim1 9)
                  (= dim1 10)
                  (= dim1 12)
                  (= dim1 14)
                  (= dim1 16)
                  (= dim1 18)
                  (= dim1 20))
               )
               )
               )
              (setq Activity# "316")
            (if(and(not(or(wcmatch(strcase ItemService)(strcase "*Weld*"))(wcmatch(strcase ItemServiceType)(strcase "*Equipment*"))))
               (or
                 (or(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Cross*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*Conical Tee*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*90 Adj.*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*45 Adj.*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*Misc. Elbow*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*Welded Elbow*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*90Deg Adj.*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*45Deg Adj.*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "Misc. Adj. Elbow*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "Misc. Adjustable Elbow*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "Misc. El*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*Shoe Barrel*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*Shoe Saddle*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*Mitered Offset Fixed*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*Deflector Hood*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*FULL RAD.*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*HALF RAD.*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*Pancake*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*Flex*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*Welded Pipe*"))
                    (wcmatch(strcase ItemDescription)(strcase "* CROSS*"))
                 )
                 (and
                 (= ItemLengthAngle 18)
                 (or(wcmatch(strcase ItemSourceFileName)(strcase "*Wye*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*No Dampers*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*KS7L*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*3-8 Rod*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Lateral 45*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Cross*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Tee*")))
                 (not(wcmatch ItemCID "807"))
                 (not(wcmatch ItemCID "812"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*8/6/6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10/8/6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10/8/8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12/8/6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12/8/8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12/10/6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12/10/8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12/10/10*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14/10/8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14/10/10*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14/12/6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14/12/8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14/12/10*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16/10/10*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16/12/8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16/12/10*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16/14/8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16/14/10*"))))
                 )
                 (and
                 (= ItemLengthAngle 20)
                 (or(wcmatch(strcase ItemSourceFileName)(strcase "*Wye*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*No Dampers*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*KS7L*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*3-8 Rod*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Lateral 45*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Cross*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Tee*")))
                 (not(wcmatch ItemCID "807"))
                 (not(wcmatch ItemCID "812"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*14/12/12*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16/12/12*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16/14/12*"))))
                 )
                 (and
                 (= ItemLengthAngle 30)
                 (or(wcmatch(strcase ItemSourceFileName)(strcase "*Wye*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*No Dampers*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*KS7L*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*3-8 Rod*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Lateral 45*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Cross*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Tee*")))
                 (not(wcmatch ItemCID "807"))
                 (not(wcmatch ItemCID "812"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*16/14/14*"))
                    (wcmatch(strcase ItemDescription)(strcase "*18/14/14*"))))
                 )
                 (and
                 (= ItemLengthAngle 18)
                 (or(wcmatch(strcase ItemSourceFileName)(strcase "*Lateral 45*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*No Dampers*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*KS7L*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*3-8 Rod*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Wye*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Cross*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Tee*")))
                 (not(wcmatch ItemCID "53"))
                 (not(wcmatch ItemCID "812"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*6/6/6*"))
                 (wcmatch(strcase ItemDescription)(strcase "*8/8/8*"))
                 (wcmatch(strcase ItemDescription)(strcase "*10/10/6*"))
                 (wcmatch(strcase ItemDescription)(strcase "*10/10/8*"))
                 (wcmatch(strcase ItemDescription)(strcase "*10/10/10*"))
                 (wcmatch(strcase ItemDescription)(strcase "*12/12/6*"))
                 (wcmatch(strcase ItemDescription)(strcase "*12/12/8*"))
                 (wcmatch(strcase ItemDescription)(strcase "*12/12/10*"))
                 (wcmatch(strcase ItemDescription)(strcase "*14/14/6*"))
                 (wcmatch(strcase ItemDescription)(strcase "*14/14/8*"))
                 (wcmatch(strcase ItemDescription)(strcase "*14/14/10*"))
                 (wcmatch(strcase ItemDescription)(strcase "*16/16/8*"))))
                 )
                 (and
                 (= ItemLengthAngle 20)
                 (or(wcmatch(strcase ItemSourceFileName)(strcase "*Lateral 45*"))
                 (wcmatch(strcase ItemSourceFileName)(strcase "*No Dampers*"))
                 (wcmatch(strcase ItemSourceFileName)(strcase "*KS7L*"))
                 (wcmatch(strcase ItemSourceFileName)(strcase "*3-8 Rod*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Wye*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Cross*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Tee*")))
                 (not(wcmatch ItemCID "53"))
                 (not(wcmatch ItemCID "812"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*12/12/12*"))
                 (wcmatch(strcase ItemDescription)(strcase "*14/14/12*"))))
                 )
                 (and
                 (= ItemLengthAngle 30)
                 (or(wcmatch(strcase ItemSourceFileName)(strcase "*Lateral 45*"))
                 (wcmatch(strcase ItemSourceFileName)(strcase "*No Dampers*"))
                 (wcmatch(strcase ItemSourceFileName)(strcase "*KS7L*"))
                 (wcmatch(strcase ItemSourceFileName)(strcase "*3-8 Rod*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Wye*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Cross*")))
                 (not(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Tee*")))
                 (not(wcmatch ItemCID "53"))
                 (not(wcmatch ItemCID "812"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*14/14/14*"))))
                 )
                 (and(wcmatch ItemCID "60")
                     (wcmatch(strcase ItemSourceFileName)(strcase "*Cap*"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*5\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*18\"*"))))
                 )
                 (and(wcmatch ItemCID "60")
                     (wcmatch(strcase ItemSourceFileName)(strcase "*End Cap*"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*5\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*18\"*"))))
                 )
                 (and(wcmatch ItemCID "1112")
                     (wcmatch(strcase ItemDescription)(strcase "*3\" Collar*"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*18\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*20\"*"))))
                 )
                 (and(wcmatch ItemCID "1112")
                     (wcmatch(strcase ItemDescription)(strcase "*Spin-in*"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16\"*"))))
                 )
                 (and(wcmatch(strcase ItemDescription)(strcase "*6\" Long Taper*"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*7-5*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8-6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9-7*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10-8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10-9*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12-10*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14-12*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16-14*"))
                    (wcmatch(strcase ItemDescription)(strcase "*18-16*"))))
                 )
                 (and(wcmatch(strcase ItemDescription)(strcase "*12\" Long Taper*"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*10-6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12-8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14-10*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16-12*"))
                    (wcmatch(strcase ItemDescription)(strcase "*18-14*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8-5*"))
                    (wcmatch(strcase ItemDescription)(strcase "*7-6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9-6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8-7*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9-7*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10-7*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12-7*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10-9*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12-6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12-10*"))
                    (wcmatch(strcase ItemDescription)(strcase "*18-10*"))))
                 )
                 (and(wcmatch(strcase ItemDescription)(strcase "*18\" Long Taper*"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*12-6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14-6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12-8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14-8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16-8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16-12*"))
                    (wcmatch(strcase ItemDescription)(strcase "*18-12*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16-14*"))
                    (wcmatch(strcase ItemDescription)(strcase "*18-14*"))
                    (wcmatch(strcase ItemDescription)(strcase "*20-14*"))
                    (wcmatch(strcase ItemDescription)(strcase "*18-16*"))
                    (wcmatch(strcase ItemDescription)(strcase "*20-18*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6-5*"))
                    (wcmatch(strcase ItemDescription)(strcase "*7-6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8-7*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9-8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10-9*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9-6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9-7*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10-7*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12-7*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14-7*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12-9*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14-9*"))))
                 )
                 (and
                 (or(wcmatch(strcase ItemSourceFileName)(strcase "*45Deg on Rd Saddle*"))
                    (wcmatch(strcase ItemDescription)(strcase "*45 Deg Sad*"))
                    (wcmatch ItemCID "875"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*6\" on 6\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6 on 6*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\" on 8\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6 on 8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\" on 10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6 on 10*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\" on 12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6 on 12*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\" on 14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6 on 14*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\" on 16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6 on 16*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\" on 18\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6 on 18*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\" on 8\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8 on 8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\" on 10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8 on 10*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\" on 12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8 on 12*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\" on 14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8 on 14*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\" on 16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8 on 16*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\" on 18\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8 on 18*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\" on 10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10 on 10*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\" on 12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10 on 12*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\" on 14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10 on 14*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\" on 16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10 on 16*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\" on 18\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10 on 18*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\" on 20\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10 on 20*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14\" on 14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14 on 14*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14\" on 16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14 on 16*"))))
                 )
                 (and
                 (or(wcmatch(strcase ItemSourceFileName)(strcase "*45Deg Flat Saddle*"))
                    (wcmatch(strcase ItemDescription)(strcase "*45D Flat*"))
                    (wcmatch ItemCID "16"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*5\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16\"*"))))
                 )
                 (and
                 (or(wcmatch(strcase ItemSourceFileName)(strcase "*Rd on Rd Conical*"))
                    (wcmatch(strcase ItemDescription)(strcase "*#8 *"))
                    (wcmatch ItemCID "751"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*6\" on 8\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6 on 8*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\" on 10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6 on 10*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\" on 12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6 on 12*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\" on 14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6 on 14*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\" on 16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6 on 16*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\" on 18\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6 on 18*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\" on 20\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6 on 20*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\" on 10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8 on 10*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\" on 12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8 on 12*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\" on 14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8 on 14*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\" on 16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8 on 16*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\" on 18\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8 on 18*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\" on 12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10 on 12*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\" on 14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10 on 14*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\" on 16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10 on 16*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\" on 18\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10 on 18*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12\" on 14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12 on 14*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12\" on 16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12 on 16*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12\" on 18\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12 on 18*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12\" on 20\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12 on 20*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14\" on 16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14 on 16*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14\" on 18\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14 on 18*"))))
                 )
                 (and
                 (or(wcmatch(strcase ItemSourceFileName)(strcase "*Round Access Door*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*#7 Access Door*")))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14\"*"))))
                 )
                 (and
                 (or(wcmatch(strcase ItemSourceFileName)(strcase "*Conical Flat Tap*"))
                    (wcmatch(strcase ItemSourceFileName)(strcase "*Flat Conical 1\" Flg*"))
                    (wcmatch ItemCID "345"))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*5\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*18\"*"))))
                 )
                 (and
                 (or(and(wcmatch ItemCID "51")(wcmatch(strcase ItemSourceFileName)(strcase "*6\" Start Collar wFlg*"))(wcmatch(strcase ItemDescription)(strcase "*for Damper*")))
                    (and(wcmatch ItemCID "51")(wcmatch(strcase ItemDescription)(strcase "*Damper*"))))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*18\"*"))))
                 )
                 (and
                 (or(and(wcmatch ItemCID "51")(wcmatch(strcase ItemSourceFileName)(strcase "*6\" Start Collar wFlg*"))(not(wcmatch(strcase ItemDescription)(strcase "*for Damper*"))))
                    (and(wcmatch ItemCID "51")(not(wcmatch(strcase ItemDescription)(strcase "*Damper*")))))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14\"*"))))
                 )
                 (and
                 (or(wcmatch(strcase ItemSourceFileName)(strcase "Coupling")))
                 (not(or(wcmatch(strcase ItemDescription)(strcase "*6\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*7\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*8\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*9\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*10\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*12\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*14\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*16\"*"))
                    (wcmatch(strcase ItemDescription)(strcase "*18\"*"))))
                 )
                 (and
                 (or(wcmatch ItemCID "522")
                    (wcmatch(strcase ItemSourceFileName)(strcase "#2 Coupling")))
                 (not(or(= dim1 6)
                    (= dim1 7)
                    (= dim1 8)
                    (= dim1 9)
                    (= dim1 10)
                    (= dim1 12)
                    (= dim1 14)
                    (= dim1 16)
                    (= dim1 18)
                    (= dim1 20)))
                 )
                 )
                 )
                (setq Activity# "313")
                (if(and(not(or(wcmatch(strcase ItemService)(strcase "*Weld*"))(wcmatch(strcase ItemServiceType)(strcase "*Equipment*"))))
                   (or
                   (and(wcmatch(strcase ItemDescription)(strcase "Straight"))
                       (or(wcmatch(strcase c1Name)(strcase "TDF*"))
                          (wcmatch(strcase c2Name)(strcase "TDF*"))
                          (wcmatch(strcase c1Name)(strcase "*JF*"))
                          (wcmatch(strcase c2Name)(strcase "*JF*")))
                       (< ItemLengthAngle 56)
                   )
                   (and(wcmatch(strcase ItemDescription)(strcase "Straight"))
                       (or(wcmatch(strcase c1Name)(strcase "Stand S&D"))
                          (wcmatch(strcase c1Name)(strcase "Flat S&D"))
                          (wcmatch(strcase c2Name)(strcase "Stand S&D"))
                          (wcmatch(strcase c2Name)(strcase "Flat S&D"))
                          (wcmatch(strcase c1Name)(strcase "*S&D*"))
                          (wcmatch(strcase c2Name)(strcase "*S&D*")))
                       (< ItemLengthAngle 59))
                   (wcmatch(strcase ItemDescription)(strcase "Cut Joint"))
                   (wcmatch(strcase ItemDescription)(strcase "Plenum"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "Transition"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "*Rect Elbow"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "F16"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "F 16"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "F17"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "F41"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "F2"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "F4"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "SQ-RD"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "TDF CAP"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "SD CAP"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "PLUG CAP"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "S&D CAP"))
                   ))
                  (setq Activity# "317")
                (if(wcmatch(strcase ItemService)(strcase "*Weld*"))
                  (setq Activity# "318")
                  (setq Activity# "Unassigned")
  ) ) ) ) ) ) ) ) ) ) );end ifs
      (vlax-put-property vla "CustomData" (strcat "ItemCID" " = " ItemCID ","))
      (vlax-put-property vla "CustomData" (strcat "Activity_#" " = " Activity# ","))
        (setq i (1+ i))
      );end while
  (UpdateJobData 10 jobName)
  (UpdateJobData 11 job#)
  (terpri)(princ "-- Activity Numbers and ItemCIDs Updated")(princ)
  (princ)
      );end progn
    (progn(terpri)(princ "-- Activity Number and ItemCID Update Skipped (Only Version 2019 or Later) --")(princ))
    );end if
  );end progn
  (terpri)(princ "Updating Layer Colors --")(princ)
  (Fix_Colors)
  (terpri)(princ "-- Layer Colors Updated")(princ)
  (if(not(= writeToVBCode nil))(progn(close writeToVBCode)(setq writeToVBCode nil)))
  (if(not(= vbcode nil))(progn(vl-file-delete vbCode)(setq vbcode nil)))
  (if(not(= doc nil))(vla-endundomark doc))
  (terpri)(princ "-- Update Complete")(princ)
  ;(command-s "._qsave" (if(> (getvar 'cmdactive) 0) "")(if(> (getvar 'cmdactive) 0) "N"))
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Adjust_Dampers ()
;;;; KS7L = Switch Damper to KS7L
  (OUTSIDE_LOOP_VARIABLES nil)
  (setq sset (ssget '((0 . "MAPS_SOLID"))))
  (initget 0 "C T 2 3 4 23 24 34 234 _ClearAll,C TapsOnly,T 2Trunk(D2),2 3Branch(D3),3 4Branch(D4),4 23(D2&D3),23 24(D2&D4),24 34(D3&D4),34 234(D2&D3&D4),234")
  (setq choice (getkword "\nEnter desired damper location(s): [Clear all/Tap Dampers/(2) Trunk D2/(3) Left Branch D3/(4) Right Branch D4/(23) D2 & D3/(24) D2 & D4/(34) D3 & D4/(234) D2 & D3 & D4] <Esc>")
        3/8thsRod "\"3/8\"+qt+\" ROD-L\""
        KS7L "\"KS7L-DN\""
        i 0);end setq
    (if(wcmatch choice "*TapsOnly*")
      (progn
        (write-line "requires task.selection" writeToVBCode)
        (write-line "dim i = 1" writeToVBCode)
        (write-line "dim qt = ASCII(34)" writeToVBCode)
        (write-line "while i <= task.selection.count" writeToVBCode)
        (write-line "dim item = task.selection[i]" writeToVBCode)
        (write-line "if item.filename = \"Rd on Rd Conical 1'' Flg (for Damper)\" then" writeToVBCode)
        (write-line "if item.dim[\"Branch Diameter\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Branch Diameter\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "elseif item.filename = \"6'' Start Collar wFlg (for Damper)\" then" writeToVBCode)
        (write-line "if item.dim[\"Diameter In\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Diameter In\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "elseif item.filename = \"45Deg on Rd Saddle\" or item.filename = \"Rd on Rd Straight 1'' Flg\" then" writeToVBCode)
        (write-line "if item.dim[\"Branch Diameter #1\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Branch Diameter #1\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "elseif item.filename = \"Flat Conical 1'' Flg (for Damper)\" or item.filename = \"45Deg Flat Saddle\" then" writeToVBCode)
        (write-line "if item.dim[\"Branch Diameter\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[1].value = \"3/8\"+qt+\" ROD-DN\"" writeToVBCode)
        (write-line "item.damper[1].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Branch Diameter\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[1].value = \"KS7L-DN\"" writeToVBCode)
        (write-line "item.damper[1].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "i = i + 1" writeToVBCode)
        (write-line "end while" writeToVBCode)
        (close writeToVBCode)
        (Executescript vbCode sset)
        (vl-file-delete vbCode)
        (prompt "Added Tap dampers.")(princ)
        (princ)
      );progn
    (if(and(wcmatch choice "*Trunk*")(wcmatch choice "2*"))
      (progn
        (write-line "requires task.selection" writeToVBCode)
        (write-line "dim i = 1" writeToVBCode)
        (write-line "dim qt = ASCII(34)" writeToVBCode)
        (write-line "while i <= task.selection.count" writeToVBCode)
        (write-line "dim item = task.selection[i]" writeToVBCode)
        (write-line "if item.filename = \"Rd on Rd Conical 1'' Flg (for Damper)\" then" writeToVBCode)
        (write-line "if item.dim[\"Branch Diameter\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Branch Diameter\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "elseif item.filename = \"6'' Start Collar wFlg (for Damper)\" then" writeToVBCode)
        (write-line "if item.dim[\"Diameter In\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Diameter In\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "elseif item.filename = \"45Deg on Rd Saddle\" or item.filename = \"Rd on Rd Straight 1'' Flg\" then" writeToVBCode)
        (write-line "if item.dim[\"Branch Diameter #1\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Branch Diameter #1\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "elseif item.filename = \"Flat Conical 1'' Flg (for Damper)\" or item.filename = \"45Deg Flat Saddle\" then" writeToVBCode)
        (write-line "if item.dim[\"Branch Diameter\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[1].value = \"3/8\"+qt+\" ROD-DN\"" writeToVBCode)
        (write-line "item.damper[1].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Branch Diameter\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[1].value = \"KS7L-DN\"" writeToVBCode)
        (write-line "item.damper[1].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "if item.dampers > 0 and item.dampers < 5 then" writeToVBCode)
        (write-line "if item.filename = \"Wye\" or item.filename = \"Lateral 45\" or item.filename = \"Conical Cross\" then" writeToVBCode)
        (write-line "if item.dim[\"D2 Trunk Diameter\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "item.dim[\"D2 DAMPER COLLAR\"].value = 6" writeToVBCode)
        (write-line "elseif item.dim[\"D2 Trunk Diameter\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "item.dim[\"D2 DAMPER COLLAR\"].value = 6" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "i = i + 1" writeToVBCode)
        (write-line "end while" writeToVBCode)
        (close writeToVBCode)
        (Executescript vbCode sset)
        (vl-file-delete vbCode)
        (prompt "Added Trunk dampers to item(s).")(princ)
        (princ)
      );progn
      (if(and(wcmatch choice "*Branch*")(wcmatch choice "4*"))
        (progn
          (write-line "requires task.selection" writeToVBCode)
          (write-line "dim i = 1" writeToVBCode)
          (write-line "dim qt = ASCII(34)" writeToVBCode)
          (write-line "while i <= task.selection.count" writeToVBCode)
          (write-line "dim item = task.selection[i]" writeToVBCode)
        (write-line "if item.filename = \"Rd on Rd Conical 1'' Flg (for Damper)\" then" writeToVBCode)
        (write-line "if item.dim[\"Branch Diameter\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Branch Diameter\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "elseif item.filename = \"6'' Start Collar wFlg (for Damper)\" then" writeToVBCode)
        (write-line "if item.dim[\"Diameter In\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Diameter In\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "elseif item.filename = \"45Deg on Rd Saddle\" or item.filename = \"Rd on Rd Straight 1'' Flg\" then" writeToVBCode)
        (write-line "if item.dim[\"Branch Diameter #1\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Branch Diameter #1\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "elseif item.filename = \"Flat Conical 1'' Flg (for Damper)\" or item.filename = \"45Deg Flat Saddle\" then" writeToVBCode)
        (write-line "if item.dim[\"Branch Diameter\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[1].value = \"3/8\"+qt+\" ROD-DN\"" writeToVBCode)
        (write-line "item.damper[1].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Branch Diameter\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[1].value = \"KS7L-DN\"" writeToVBCode)
        (write-line "item.damper[1].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
          (write-line "if item.dampers > 3 and item.dampers < 5 then" writeToVBCode)
          (write-line "if item.filename = \"Wye\" or item.filename = \"Lateral 45\" or item.filename = \"Conical Cross\" then" writeToVBCode)
          (write-line "if item.dim[\"D4 Right Branch Diameter\"].value > 12 then" writeToVBCode)
          (write-line "item.damper[4].value = \"3/8\"+qt+\" ROD-DN\"" writeToVBCode)
          (write-line "item.damper[4].locked = true" writeToVBCode)
          (write-line "item.update()" writeToVBCode)
          (write-line "elseif item.dim[\"D4 Right Branch Diameter\"].value < 13 then" writeToVBCode)
          (write-line "item.damper[4].value = \"KS7L-DN\"" writeToVBCode)
          (write-line "item.damper[4].locked = true" writeToVBCode)
          (write-line "item.update()" writeToVBCode)
          (write-line "end if" writeToVBCode)
          (write-line "if item.damper[2].value <> \"None\" then" writeToVBCode)
          (write-line "item.dim[\"D2 DAMPER COLLAR\"].value = 6" writeToVBCode)
          (write-line "item.update()" writeToVBCode)
          (write-line "end if" writeToVBCode)
          (write-line "end if" writeToVBCode)
          (write-line "end if" writeToVBCode)
          (write-line "i = i + 1" writeToVBCode)
          (write-line "end while" writeToVBCode)
          (close writeToVBCode)
          (Executescript vbCode sset)
          (vl-file-delete vbCode)
          (prompt "Added Right dampers to item(s).")(princ)
          (princ)
        );progn
        (if(and(wcmatch choice "*Branch*")(wcmatch choice "3*"))
          (progn
            (write-line "requires task.selection" writeToVBCode)
            (write-line "dim i = 1" writeToVBCode)
            (write-line "dim qt = ASCII(34)" writeToVBCode)
            (write-line "while i <= task.selection.count" writeToVBCode)
            (write-line "dim item = task.selection[i]" writeToVBCode)
        (write-line "if item.filename = \"Rd on Rd Conical 1'' Flg (for Damper)\" then" writeToVBCode)
        (write-line "if item.dim[\"Branch Diameter\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Branch Diameter\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "elseif item.filename = \"6'' Start Collar wFlg (for Damper)\" then" writeToVBCode)
        (write-line "if item.dim[\"Diameter In\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Diameter In\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "elseif item.filename = \"45Deg on Rd Saddle\" or item.filename = \"Rd on Rd Straight 1'' Flg\" then" writeToVBCode)
        (write-line "if item.dim[\"Branch Diameter #1\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Branch Diameter #1\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "elseif item.filename = \"Flat Conical 1'' Flg (for Damper)\" or item.filename = \"45Deg Flat Saddle\" then" writeToVBCode)
        (write-line "if item.dim[\"Branch Diameter\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[1].value = \"3/8\"+qt+\" ROD-DN\"" writeToVBCode)
        (write-line "item.damper[1].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Branch Diameter\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[1].value = \"KS7L-DN\"" writeToVBCode)
        (write-line "item.damper[1].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
            (write-line "if item.dampers > 2 and item.dampers < 5 then" writeToVBCode)
            (write-line "if item.filename = \"Wye\" or item.filename = \"Lateral 45\" or item.filename = \"Conical Cross\" then" writeToVBCode)
            (write-line "if item.dim[\"D3 Left Branch Diameter\"].value > 12 then" writeToVBCode)
            (write-line "item.damper[3].value = \"3/8\"+qt+\" ROD-DN\"" writeToVBCode)
            (write-line "item.damper[3].locked = true" writeToVBCode)
            (write-line "item.update()" writeToVBCode)
            (write-line "elseif item.dim[\"D3 Left Branch Diameter\"].value < 13 then" writeToVBCode)
            (write-line "item.damper[3].value = \"KS7L-DN\"" writeToVBCode)
            (write-line "item.damper[3].locked = true" writeToVBCode)
            (write-line "item.update()" writeToVBCode)
            (write-line "end if" writeToVBCode)
            (write-line "if item.damper[2].value <> \"None\" then" writeToVBCode)
            (write-line "item.dim[\"D2 DAMPER COLLAR\"].value = 6" writeToVBCode)
            (write-line "item.update()" writeToVBCode)
            (write-line "end if" writeToVBCode)
            (write-line "end if" writeToVBCode)
            (write-line "end if" writeToVBCode)
            (write-line "i = i + 1" writeToVBCode)
            (write-line "end while" writeToVBCode)
            (close writeToVBCode)
            (Executescript vbCode sset)
            (vl-file-delete vbCode)
            (prompt "Added Left dampers to item(s).")(princ)
            (princ)
          );progn
          (if(wcmatch choice "Clear*")
            (progn
              (write-line "requires task.selection" writeToVBCode)
              (write-line "dim i = 1" writeToVBCode)
              (write-line "dim qt = ASCII(34)" writeToVBCode)
              (write-line "while i <= task.selection.count" writeToVBCode)
              (write-line "dim item = task.selection[i]" writeToVBCode)
        (write-line "if item.filename = \"Rd on Rd Conical 1'' Flg (for Damper)\" then" writeToVBCode)
        (write-line "item.damper[2].value = \"None\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "elseif item.filename = \"6'' Start Collar wFlg (for Damper)\" then" writeToVBCode)
        (write-line "item.damper[2].value = \"None\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "elseif item.filename = \"45Deg on Rd Saddle\" or item.filename = \"Rd on Rd Straight 1'' Flg\" then" writeToVBCode) 
        (write-line "item.damper[2].value = \"None\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "elseif item.filename = \"Flat Conical 1'' Flg (for Damper)\" or item.filename = \"45Deg Flat Saddle\" then" writeToVBCode)
        (write-line "item.damper[1].value = \"None\"" writeToVBCode)
        (write-line "item.damper[1].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
              (write-line "if item.dampers > 0 and item.dampers < 5 then" writeToVBCode)
              (write-line "if item.filename = \"Wye\" or item.filename = \"Lateral 45\" or item.filename = \"Conical Cross\" then" writeToVBCode)
              (write-line "item.damper[2].value = \"None\"" writeToVBCode)
              (write-line "item.damper[2].locked = true" writeToVBCode)
              (write-line "item.dim[\"D2 DAMPER COLLAR\"].value = 0" writeToVBCode)
              (write-line "item.update()" writeToVBCode)
              (write-line "item.damper[3].value = \"None\"" writeToVBCode)
              (write-line "item.damper[3].locked = true" writeToVBCode)
              (write-line "item.update()" writeToVBCode)
              (write-line "item.damper[4].value = \"None\"" writeToVBCode)
              (write-line "item.damper[4].locked = true" writeToVBCode)
              (write-line "item.update()" writeToVBCode)
              (write-line "end if" writeToVBCode)
              (write-line "end if" writeToVBCode)
              (write-line "i = i + 1" writeToVBCode)
              (write-line "end while" writeToVBCode)
              (close writeToVBCode)
              (Executescript vbCode sset)
              (vl-file-delete vbCode)
              (prompt "Cleared all (D2,D3,D4) dampers from item(s).")(princ)
              (princ)
            );progn
            (if(wcmatch choice "24(*")
              (progn
                (write-line "requires task.selection" writeToVBCode)
                (write-line "dim i = 1" writeToVBCode)
                (write-line "dim qt = ASCII(34)" writeToVBCode)
                (write-line "while i <= task.selection.count" writeToVBCode)
                (write-line "dim item = task.selection[i]" writeToVBCode)
        (write-line "if item.filename = \"Rd on Rd Conical 1'' Flg (for Damper)\" then" writeToVBCode)
        (write-line "if item.dim[\"Branch Diameter\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Branch Diameter\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "elseif item.filename = \"6'' Start Collar wFlg (for Damper)\" then" writeToVBCode)
        (write-line "if item.dim[\"Diameter In\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Diameter In\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "elseif item.filename = \"45Deg on Rd Saddle\" or item.filename = \"Rd on Rd Straight 1'' Flg\" then" writeToVBCode)
        (write-line "if item.dim[\"Branch Diameter #1\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Branch Diameter #1\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "elseif item.filename = \"Flat Conical 1'' Flg (for Damper)\" or item.filename = \"45Deg Flat Saddle\" then" writeToVBCode)
        (write-line "if item.dim[\"Branch Diameter\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[1].value = \"3/8\"+qt+\" ROD-DN\"" writeToVBCode)
        (write-line "item.damper[1].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Branch Diameter\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[1].value = \"KS7L-DN\"" writeToVBCode)
        (write-line "item.damper[1].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
                (write-line "if item.dampers > 3 and item.dampers < 5 then" writeToVBCode)
                (write-line "if item.filename = \"Wye\" or item.filename = \"Lateral 45\" or item.filename = \"Conical Cross\" then" writeToVBCode)
                (write-line "if item.dim[\"D2 Trunk Diameter\"].value > 12 then" writeToVBCode)
                (write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
                (write-line "item.damper[2].locked = true" writeToVBCode)
                (write-line "item.dim[\"D2 DAMPER COLLAR\"].value = 6" writeToVBCode)
                (write-line "item.update()" writeToVBCode)
                (write-line "elseif item.dim[\"D2 Trunk Diameter\"].value < 13 then" writeToVBCode)
                (write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
                (write-line "item.damper[2].locked = true" writeToVBCode)
                (write-line "item.dim[\"D2 DAMPER COLLAR\"].value = 6" writeToVBCode)
                (write-line "item.update()" writeToVBCode)
                (write-line "end if" writeToVBCode)
                (write-line "if item.dim[\"D4 Right Branch Diameter\"].value > 12 then" writeToVBCode)
                (write-line "item.damper[4].value = \"3/8\"+qt+\" ROD-DN\"" writeToVBCode)
                (write-line "item.damper[4].locked = true" writeToVBCode)
                (write-line "item.update()" writeToVBCode)
                (write-line "elseif item.dim[\"D4 Right Branch Diameter\"].value < 13 then" writeToVBCode)
                (write-line "item.damper[4].value = \"KS7L-DN\"" writeToVBCode)
                (write-line "item.damper[4].locked = true" writeToVBCode)
                (write-line "item.update()" writeToVBCode)
                (write-line "end if" writeToVBCode)
                (write-line "end if" writeToVBCode)
                (write-line "end if" writeToVBCode)
                (write-line "i = i + 1" writeToVBCode)
                (write-line "end while" writeToVBCode)
                (close writeToVBCode)
                (Executescript vbCode sset)
                (vl-file-delete vbCode)
                (prompt "Added Trunk and Right dampers to item(s).")(princ)
                (princ)
              );progn
              (if(wcmatch choice "23(*")
                (progn
                  (write-line "requires task.selection" writeToVBCode)
                  (write-line "dim i = 1" writeToVBCode)
                  (write-line "dim qt = ASCII(34)" writeToVBCode)
                  (write-line "while i <= task.selection.count" writeToVBCode)
                  (write-line "dim item = task.selection[i]" writeToVBCode)
        (write-line "if item.filename = \"Rd on Rd Conical 1'' Flg (for Damper)\" then" writeToVBCode)
        (write-line "if item.dim[\"Branch Diameter\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Branch Diameter\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "elseif item.filename = \"6'' Start Collar wFlg (for Damper)\" then" writeToVBCode)
        (write-line "if item.dim[\"Diameter In\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Diameter In\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "elseif item.filename = \"45Deg on Rd Saddle\" or item.filename = \"Rd on Rd Straight 1'' Flg\" then" writeToVBCode)
        (write-line "if item.dim[\"Branch Diameter #1\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Branch Diameter #1\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "elseif item.filename = \"Flat Conical 1'' Flg (for Damper)\" or item.filename = \"45Deg Flat Saddle\" then" writeToVBCode)
        (write-line "if item.dim[\"Branch Diameter\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[1].value = \"3/8\"+qt+\" ROD-DN\"" writeToVBCode)
        (write-line "item.damper[1].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Branch Diameter\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[1].value = \"KS7L-DN\"" writeToVBCode)
        (write-line "item.damper[1].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
                  (write-line "if item.dampers > 2 and item.dampers < 5 then" writeToVBCode)
                  (write-line "if item.filename = \"Wye\" or item.filename = \"Lateral 45\" or item.filename = \"Conical Cross\" then" writeToVBCode)
                  (write-line "if item.dim[\"D2 Trunk Diameter\"].value > 12 then" writeToVBCode)
                  (write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
                  (write-line "item.damper[2].locked = true" writeToVBCode)
                  (write-line "item.dim[\"D2 DAMPER COLLAR\"].value = 6" writeToVBCode)
                  (write-line "item.update()" writeToVBCode)
                  (write-line "elseif item.dim[\"D2 Trunk Diameter\"].value < 13 then" writeToVBCode)
                  (write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
                  (write-line "item.damper[2].locked = true" writeToVBCode)
                  (write-line "item.dim[\"D2 DAMPER COLLAR\"].value = 6" writeToVBCode)
                  (write-line "item.update()" writeToVBCode)
                  (write-line "end if" writeToVBCode)
                  (write-line "if item.dim[\"D3 Left Branch Diameter\"].value > 12 then" writeToVBCode)
                  (write-line "item.damper[3].value = \"3/8\"+qt+\" ROD-DN\"" writeToVBCode)
                  (write-line "item.damper[3].locked = true" writeToVBCode)
                  (write-line "item.update()" writeToVBCode)
                  (write-line "elseif item.dim[\"D3 Left Branch Diameter\"].value < 13 then" writeToVBCode)
                  (write-line "item.damper[3].value = \"KS7L-DN\"" writeToVBCode)
                  (write-line "item.damper[3].locked = true" writeToVBCode)
                  (write-line "item.update()" writeToVBCode)
                  (write-line "end if" writeToVBCode)
                  (write-line "end if" writeToVBCode)
                  (write-line "end if" writeToVBCode)
                  (write-line "i = i + 1" writeToVBCode)
                  (write-line "end while" writeToVBCode)
                  (close writeToVBCode)
                  (Executescript vbCode sset)
                  (vl-file-delete vbCode)
                  (prompt "Added Trunk and Left dampers to item(s).")(princ)
                  (princ)
                );progn
                (if(wcmatch choice "234(*")
                  (progn
                    (write-line "requires task.selection" writeToVBCode)
                    (write-line "dim i = 1" writeToVBCode)
                    (write-line "dim qt = ASCII(34)" writeToVBCode)
                    (write-line "while i <= task.selection.count" writeToVBCode)
                    (write-line "dim item = task.selection[i]" writeToVBCode)
        (write-line "if item.filename = \"Rd on Rd Conical 1'' Flg (for Damper)\" then" writeToVBCode)
        (write-line "if item.dim[\"Branch Diameter\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Branch Diameter\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "elseif item.filename = \"6'' Start Collar wFlg (for Damper)\" then" writeToVBCode)
        (write-line "if item.dim[\"Diameter In\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Diameter In\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "elseif item.filename = \"45Deg on Rd Saddle\" or item.filename = \"Rd on Rd Straight 1'' Flg\" then" writeToVBCode)
        (write-line "if item.dim[\"Branch Diameter #1\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Branch Diameter #1\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "elseif item.filename = \"Flat Conical 1'' Flg (for Damper)\" or item.filename = \"45Deg Flat Saddle\" then" writeToVBCode)
        (write-line "if item.dim[\"Branch Diameter\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[1].value = \"3/8\"+qt+\" ROD-DN\"" writeToVBCode)
        (write-line "item.damper[1].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Branch Diameter\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[1].value = \"KS7L-DN\"" writeToVBCode)
        (write-line "item.damper[1].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
                    (write-line "if item.dampers > 3 and item.dampers < 5 then" writeToVBCode)
                    (write-line "if item.filename = \"Wye\" or item.filename = \"Lateral 45\" or item.filename = \"Conical Cross\" then" writeToVBCode)
                    (write-line "if item.dim[\"D2 Trunk Diameter\"].value > 12 then" writeToVBCode)
                    (write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
                    (write-line "item.damper[2].locked = true" writeToVBCode)
                    (write-line "item.dim[\"D2 DAMPER COLLAR\"].value = 6" writeToVBCode)
                    (write-line "item.update()" writeToVBCode)
                    (write-line "elseif item.dim[\"D2 Trunk Diameter\"].value < 13 then" writeToVBCode)
                    (write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
                    (write-line "item.damper[2].locked = true" writeToVBCode)
                    (write-line "item.dim[\"D2 DAMPER COLLAR\"].value = 6" writeToVBCode)
                    (write-line "item.update()" writeToVBCode)
                    (write-line "end if" writeToVBCode)
                    (write-line "if item.dim[\"D3 Left Branch Diameter\"].value > 12 then" writeToVBCode)
                    (write-line "item.damper[3].value = \"3/8\"+qt+\" ROD-DN\"" writeToVBCode)
                    (write-line "item.damper[3].locked = true" writeToVBCode)
                    (write-line "item.update()" writeToVBCode)
                    (write-line "elseif item.dim[\"D3 Left Branch Diameter\"].value < 13 then" writeToVBCode)
                    (write-line "item.damper[3].value = \"KS7L-DN\"" writeToVBCode)
                    (write-line "item.damper[3].locked = true" writeToVBCode)
                    (write-line "item.update()" writeToVBCode)
                    (write-line "end if" writeToVBCode)
                    (write-line "if item.dim[\"D4 Right Branch Diameter\"].value > 12 then" writeToVBCode)
                    (write-line "item.damper[4].value = \"3/8\"+qt+\" ROD-DN\"" writeToVBCode)
                    (write-line "item.damper[4].locked = true" writeToVBCode)
                    (write-line "item.update()" writeToVBCode)
                    (write-line "elseif item.dim[\"D4 Right Branch Diameter\"].value < 13 then" writeToVBCode)
                    (write-line "item.damper[4].value = \"KS7L-DN\"" writeToVBCode)
                    (write-line "item.damper[4].locked = true" writeToVBCode)
                    (write-line "item.update()" writeToVBCode)
                    (write-line "end if" writeToVBCode)
                    (write-line "end if" writeToVBCode)
                    (write-line "end if" writeToVBCode)
                    (write-line "i = i + 1" writeToVBCode)
                    (write-line "end while" writeToVBCode)
                    (close writeToVBCode)
                    (Executescript vbCode sset)
                    (vl-file-delete vbCode)
                    (prompt "Added all (D2,D3,D4) dampers to item(s).")(princ)
                    (princ)
                  );progn
                  (if(wcmatch choice "34(*")
                    (progn
                      (write-line "requires task.selection" writeToVBCode)
                      (write-line "dim i = 1" writeToVBCode)
                      (write-line "dim qt = ASCII(34)" writeToVBCode)
                      (write-line "while i <= task.selection.count" writeToVBCode)
                      (write-line "dim item = task.selection[i]" writeToVBCode)
        (write-line "if item.filename = \"Rd on Rd Conical 1'' Flg (for Damper)\" then" writeToVBCode)
        (write-line "if item.dim[\"Branch Diameter\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Branch Diameter\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "elseif item.filename = \"6'' Start Collar wFlg (for Damper)\" then" writeToVBCode)
        (write-line "if item.dim[\"Diameter In\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Diameter In\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "elseif item.filename = \"45Deg on Rd Saddle\" or item.filename = \"Rd on Rd Straight 1'' Flg\" then" writeToVBCode)
        (write-line "if item.dim[\"Branch Diameter #1\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[2].value = \"3/8\"+qt+\" ROD-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Branch Diameter #1\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
        (write-line "item.damper[2].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
        (write-line "elseif item.filename = \"Flat Conical 1'' Flg (for Damper)\" or item.filename = \"45Deg Flat Saddle\" then" writeToVBCode)
        (write-line "if item.dim[\"Branch Diameter\"].value > 12 then" writeToVBCode)
        (write-line "item.damper[1].value = \"3/8\"+qt+\" ROD-DN\"" writeToVBCode)
        (write-line "item.damper[1].locked = true" writeToVBCode)
        (write-line "elseif item.dim[\"Branch Diameter\"].value < 13 then" writeToVBCode)
        (write-line "item.damper[1].value = \"KS7L-DN\"" writeToVBCode)
        (write-line "item.damper[1].locked = true" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "end if" writeToVBCode)
        (write-line "item.update()" writeToVBCode)
                      (write-line "if item.dampers > 3 and item.dampers < 5 then" writeToVBCode)
                      (write-line "if item.filename = \"Wye\" or item.filename = \"Lateral 45\" or item.filename = \"Conical Cross\" then" writeToVBCode)
                      (write-line "if item.dim[\"D3 Left Branch Diameter\"].value > 12 then" writeToVBCode)
                      (write-line "item.damper[3].value = \"3/8\"+qt+\" ROD-DN\"" writeToVBCode)
                      (write-line "item.damper[3].locked = true" writeToVBCode)
                      (write-line "item.update()" writeToVBCode)
                      (write-line "elseif item.dim[\"D3 Left Branch Diameter\"].value < 13 then" writeToVBCode)
                      (write-line "item.damper[3].value = \"KS7L-DN\"" writeToVBCode)
                      (write-line "item.damper[3].locked = true" writeToVBCode)
                      (write-line "item.update()" writeToVBCode)
                      (write-line "end if" writeToVBCode)
                      (write-line "if item.dim[\"D4 Right Branch Diameter\"].value > 12 then" writeToVBCode)
                      (write-line "item.damper[4].value = \"3/8\"+qt+\" ROD-DN\"" writeToVBCode)
                      (write-line "item.damper[4].locked = true" writeToVBCode)
                      (write-line "item.update()" writeToVBCode)
                      (write-line "elseif item.dim[\"D4 Right Branch Diameter\"].value < 13 then" writeToVBCode)
                      (write-line "item.damper[4].value = \"KS7L-DN\"" writeToVBCode)
                      (write-line "item.damper[4].locked = true" writeToVBCode)
                      (write-line "item.update()" writeToVBCode)
                      (write-line "end if" writeToVBCode)
                      (write-line "if item.damper[2].value <> \"None\" then" writeToVBCode)
                      (write-line "item.dim[\"D2 DAMPER COLLAR\"].value = 6" writeToVBCode)
                      (write-line "item.update()" writeToVBCode)
                      (write-line "end if" writeToVBCode)
                      (write-line "end if" writeToVBCode)
                      (write-line "end if" writeToVBCode)
                      (write-line "i = i + 1" writeToVBCode)
                      (write-line "end while" writeToVBCode)
                      (close writeToVBCode)
                      (Executescript vbCode sset)
                      (vl-file-delete vbCode)
                      (prompt "Added branch (D3,D4) dampers to item(s).")(princ)
                      (princ)
                    );progn
    ) ) ) ) ) ) ) ) )
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Item_Update ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (if(not(= sset nil))
    (progn
      (OUTSIDE_LOOP_VARIABLES nil)
      (write-line "requires task.selection" writeToVBCode)
      (write-line "dim i = 1" writeToVBCode)
      (write-line "dim qt = ASCII(34)" writeToVBCode)
      (write-line "while i <= task.selection.count" writeToVBCode)
      (write-line "dim item = task.selection[i]" writeToVBCode)
      (write-line "item.update()" writeToVBCode)
      (write-line "i = i + 1" writeToVBCode)
      (write-line "end while" writeToVBCode)
      (close writeToVBCode)
      (Executescript vbCode sset)
      (vl-file-delete vbCode)
    );progn
  );end if
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Multi_Variable_Edit ()
  (OUTSIDE_LOOP_VARIABLES nil)
  (print "Please select your desired items:")(princ)(terpri)
  (setq i 0
        index nil
        operator nil
        parameterChoice nil
        valueChoice nil
        parameter nil
        dimIndexPara nil
        optionIndexPara nil
        valueChoice nil
        operator nil
        twoVariables nil
        stringValue1 nil
        stringValue2 nil
        dimIndexValue1 nil
        indexValue1 nil
        valueParameter1 nil
        value1Type nil
        optionIndexValue1 nil
        providedNumber1 nil
        stringValue2 nil
        dimIndexValue2 nil
        indexValue2 nil
        valueParameter2 nil
        value2Type nil
        optionIndexValue2 nil
        providedNumber2 nil
        dimIndexValue nil
        indexValue nil
        valueParameter nil
        valueType nil
        providedNumber nil
        dimIndexList nil
        optionIndexList nil
        dimCompare nil
        optionCompare nil
        dimElement nil
        dimComparison nil
        optionElement nil
        optionComparison nil
        adjustedValue nil
        validityCheck nil
        variableValue nil
        variableValue1 nil
        variableValue2 nil
        decisionLine nil
        sset (ssget '((0 . "MAPS_SOLID"))))
  (print "Always include D for Dimension or O for option (absence assumes Dimension is desired).")(princ)(terpri)
  (print "Index locations can be used; IE: D3 or O12.")(princ)(terpri)
  (print "Use quotation marks around dimension/option names; IE: D\"This is my dimension's name\" or O\"This is my option's name\".")(princ)(terpri)
  (setq parameterChoice (getstring "\nEnter parameter \"name\" or index# to be adjusted: [D*/O*]" T))
  (print "Direct values or equations can be applied; Special variables available: Calc,Dependent,Auto,Self,+,-,*,/")(princ)(terpri)
  (print "Examples of direct values: 123,D6,D1,O11,O3,Calc,Dependent,Auto")(princ)(terpri)
  (print "Examples of equations: 3+33,D6*D1,D3/O14,D3+D4,D4-D3,Self+Self,Self+33,Self+D4")(princ)(terpri)
  (setq valueChoice (getstring "\nEnter desired value or equation:" T))
    (if(or(wcmatch parameterChoice "D*")(wcmatch parameterChoice "d*"))
      (progn
        (if(wcmatch parameterChoice "D*")(STRING_SPLIT "D" parameterChoice)(STRING_SPLIT "d" parameterChoice))
        (setq parameter "dim"
              dimIndexPara nth0
              index nth0)
      );end progn
      (if(or(wcmatch parameterChoice "O*")(wcmatch parameterChoice "o*"))
        (progn
          (if(wcmatch parameterChoice "O*")(STRING_SPLIT "O" parameterChoice)(STRING_SPLIT "o" parameterChoice))
          (setq parameter "option"
                optionIndexPara nth0
                index nth0)
        );end progn
        (setq parameter "dim"
              index parameterChoice)
    ) );end ifs
    (if(wcmatch valueChoice "*[+]*")
      (setq operator "+"
            twoVariables T)
      (if(wcmatch valueChoice "*[-]*")
        (setq operator "-"
              twoVariables T)
        (if(wcmatch valueChoice "*[*]*")
          (setq operator "*"
                twoVariables T)
          (if(wcmatch valueChoice "*[/]*")
            (setq operator "/"
                  twoVariables T)
            (setq twoVariables nil)
    ) ) ) );end ifs
    (if twoVariables
      (progn
        (STRING_SPLIT operator valueChoice)
        (setq stringValue1 nth0
              stringValue2 nth1)
        (if(or(wcmatch stringValue1 "D*")(wcmatch stringValue1 "d*"))
          (progn(if(wcmatch stringValue1 "D*")(STRING_SPLIT "D" stringValue1)(STRING_SPLIT "d" stringValue1))
          (setq dimIndexValue1 nth0
                indexValue1 nth0
                valueParameter1 "dim"
                value1Type "Dimension"))
          (if(or(wcmatch stringValue1 "O*")(wcmatch stringValue1 "o*"))
            (progn(if(wcmatch stringValue1 "O*")(STRING_SPLIT "O" stringValue1)(STRING_SPLIT "o" stringValue1))
            (setq optionIndexValue1 nth0
                  indexValue1 nth0
                  valueParameter1 "option"
                  value1Type "Option"))
            (if(not(wcmatch stringValue1 "*@*"))
              (setq providedNumber1 stringValue1
                    value1Type "NumberValue")
              (if(or(wcmatch stringValue1 "*D*[\"]*")(wcmatch stringValue1 "*d*[\"]*"))
                (progn(STRING_SPLIT "\"" stringValue1)
                (setq indexValue1 nth1
                      valueParameter1 "dim"
                      valueType "DimensionName"))
                (if(or(wcmatch stringValue1 "*O*[\"]*")(wcmatch stringValue1 "*o*[\"]*"))
                  (progn(STRING_SPLIT "\"" stringValue1)
                  (setq indexValue1 nth1
                        valueParameter1 "option"
                        valueType "DimensionName"))
                  (if(wcmatch stringValue1 "*[\"]*")
                    (progn(STRING_SPLIT "\"" stringValue1)
                    (setq indexValue1 nth0
                          valueParameter1 "dim"
                          valueType "DimensionName"))
                    (if(or(wcmatch stringValue1 "*self*")(wcmatch stringValue1 "*Self*")(wcmatch stringValue1 "*SELF*"))
                      (setq indexValue1 index
                            valueParameter1 parameter
                            valueType "Self")
        ) ) ) ) ) ) );end ifs
        (if(or(wcmatch stringValue2 "D*")(wcmatch stringValue2 "d*"))
          (progn(if(wcmatch stringValue2 "D*")(STRING_SPLIT "D" stringValue2)(STRING_SPLIT "d" stringValue2))
          (setq dimIndexValue2 nth0
                indexValue2 nth0
                valueParameter2 "dim"
                value2Type "Dimension"))
          (if(or(wcmatch stringValue2 "O*")(wcmatch stringValue2 "o*"))
            (progn(if(wcmatch stringValue2 "O*")(STRING_SPLIT "O" stringValue2)(STRING_SPLIT "o" stringValue2))
            (setq optionIndexValue2 nth0
                  indexValue2 nth0
                  valueParameter2 "option"
                  value2Type "Option"))
            (if(not(wcmatch stringValue2 "*@*"))
              (setq providedNumber2 stringValue2
                    value2Type "NumberValue")
              (if(or(wcmatch stringValue2 "*D*[\"]*")(wcmatch stringValue2 "*d*[\"]*"))
                (progn(STRING_SPLIT "\"" stringValue2)
                (setq indexValue2 nth1
                      valueParameter2 "dim"
                      valueType "DimensionName"))
                (if(or(wcmatch stringValue2 "*O*[\"]*")(wcmatch stringValue2 "*o*[\"]*"))
                  (progn(STRING_SPLIT "\"" stringValue2)
                  (setq indexValue2 nth1
                        valueParameter2 "option"
                        valueType "DimensionName"))
                  (if(wcmatch stringValue2 "*[\"]*")
                    (progn(STRING_SPLIT "\"" stringValue2)
                    (setq indexValue2 nth0
                          valueParameter2 "dim"
                          valueType "DimensionName"))
                    (if(or(wcmatch stringValue2 "*self*")(wcmatch stringValue2 "*Self*")(wcmatch stringValue2 "*SELF*"))
                      (setq indexValue2 index
                            valueParameter2 parameter
                            valueType "Self")
        ) ) ) ) ) ) );end ifs
      );end progn
      (progn;or else condition for single value
        (if(or(wcmatch valueChoice "D*")(wcmatch valueChoice "d*"))
          (progn(if(wcmatch valueChoice "D*")(STRING_SPLIT "D" valueChoice)(STRING_SPLIT "d" valueChoice))
          (setq dimIndexValue nth0
                indexValue nth0
                valueParameter "dim"
                valueType "Dimension"))
          (if(or(wcmatch valueChoice "O*")(wcmatch valueChoice "o*"))
            (progn(if(wcmatch valueChoice "O*")(STRING_SPLIT "O" valueChoice)(STRING_SPLIT "o" valueChoice))
            (setq optionIndexValue nth0
                  indexValue nth0
                  valueParameter "option"
                  valueType "Option"))
            (if(or(wcmatch valueChoice "*calc*")(wcmatch valueChoice "*Calc*")(wcmatch valueChoice "*CALC*"))
              (setq providedNumber "1100001"
                    valueType "Calc")
              (if(or(wcmatch valueChoice "*dependent*")(wcmatch valueChoice "*Dependent*")(wcmatch valueChoice "*DEPENDENT*"))
                (setq providedNumber "1100000"
                      valueType "Dependent")
                (if(or(wcmatch valueChoice "*auto*")(wcmatch valueChoice "*Auto*")(wcmatch valueChoice "*AUTO*"))
                  (setq providedNumber "1000000"
                        valueType "Auto")
                  (if(not(wcmatch valueChoice "*@*"))
                    (setq providedNumber valueChoice
                          valueType "NumberValue")
                    (if(or(wcmatch valueChoice "*D*[\"]*")(wcmatch valueChoice "*d*[\"]*"))
                      (progn(STRING_SPLIT "\"" valueChoice)
                      (setq indexValue nth1
                            valueParameter "dim"
                            valueType "DimensionName"))
                      (if(or(wcmatch valueChoice "*O*[\"]*")(wcmatch valueChoice "*o*[\"]*"))
                        (progn(STRING_SPLIT "\"" valueChoice)
                        (setq indexValue nth1
                              valueParameter "option"
                              valueType "DimensionName"))
                        (if(wcmatch valueChoice "*[\"]*")
                          (progn(STRING_SPLIT "\"" valueChoice)
                          (setq indexValue nth0
                                valueParameter "dim"
                                valueType "DimensionName"))
                          (if(or(wcmatch valueChoice "*self*")(wcmatch valueChoice "*Self*")(wcmatch valueChoice "*SELF*"))
                            (setq indexValue index
                                  valueParameter parameter
                                  valueType "Self")
       ) ) ) ) ) ) ) ) ) );end ifs
      );end progn
    );end if
    (if(and(not(= valueType "DimensionName"))(not(= value1Type "DimensionName"))(not(= value2Type "DimensionName")))
      (progn
        (setq dimIndexList (list dimIndexPara dimIndexValue dimIndexValue1 dimIndexValue2)
              optionIndexList (list optionIndexPara optionIndexValue optionIndexValue1 optionIndexValue2)
              dimCompare 1
              optionCompare 1)
        (foreach elm dimIndexlist
          (if(and(not(=(type elm) 'INT))(not(= elm ""))(not(= elm nil)))(setq dimElement (atoi elm)))
          (if(and(not(=(type dimComparison) 'INT))(not(= dimComparison ""))(not(= dimComparison nil)))(setq dimComparison (atoi dimComparison)))
          (if(> dimElement dimComparison)(setq dimCompare dimElement))
        );end foreach
        (foreach elm optionIndexList
          (if(and(not(=(type elm) 'INT))(not(= elm ""))(not(= elm nil)))(setq optionElement (atoi elm)))
          (if(and(not(=(type optionComparison) 'INT))(not(= optionComparison ""))(not(= optionComparison nil)))(setq optionComparison (atoi optionComparison)))
          (if(> optionElement optionComparison)(setq optionCompare optionElement))
        );end foreach
      );progn
    );end if
    (setq adjustedValue (strcat "item." parameter "[" index "].value")
          validityCheck (strcat "if " (rtos dimCompare 2 0) " <= item.dims and " (rtos optionCompare 2 0) " <= item.options then"))
    (if(and(not twoVariables)(not(= valueType "Calc"))(not(= valueType "Dependent"))(not(= valueType "Auto"))(not(= valueType "NumberValue")))
      (setq variableValue (strcat "item." valueParameter "[" indexValue "].numvalue")))
    (if(and twoVariables (not(= valueType "Calc"))(not(= valueType "Dependent"))(not(= valueType "Auto"))(not(= valueType "NumberValue")))
      (setq variableValue1 (strcat "item." valueParameter1 "[" indexValue1 "].numvalue")
            variableValue2 (strcat "item." valueParameter2 "[" indexValue2 "].numvalue")))
    (if(and(< dimCompare dimensionListCount) twoVariables (not(= value1Type "Calc"))(not(= value1Type "Dependent"))(not(= value1Type "Auto"))(not(= value1Type "NumberValue"))(not(= value2Type "Calc"))(not(= value2Type "Dependent"))(not(= value2Type "Auto"))(not(= value2Type "NumberValue")))
        (setq decisionLine (strcat adjustedValue " = " variableValue1 " " operator " "  variableValue2))
      (if(and(< dimCompare dimensionListCount)(not twoVariables)(not(= valueType "Calc"))(not(= valueType "Dependent"))(not(= valueType "Auto"))(not(= valueType "NumberValue")))
          (setq decisionLine (strcat adjustedValue " = " variableValue))
        (if(and(< dimCompare dimensionListCount) twoVariables (= value1Type "NumberValue")(= value2Type "NumberValue"))
            (setq decisionLine (strcat adjustedValue " = " providedNumber1 " " operator " " providedNumber2))
          (if(and(< dimCompare dimensionListCount)(not twoVariables)(or(= valueType "Calc")(= valueType "Dependent")(= valueType "Auto")(= valueType "NumberValue")))
              (setq decisionLine (strcat adjustedValue " = " providedNumber))
            (if(and(< dimCompare dimensionListCount) twoVariables (not(= value1Type "Calc"))(not(= value1Type "Dependent"))(not(= value1Type "Auto"))(not(= value1Type "NumberValue"))(= value2Type "NumberValue"))
                (setq decisionLine (strcat adjustedValue " = " variableValue1 " " operator " " providedNumber2))
              (if(and(< dimCompare dimensionListCount) twoVariables (= value1Type "NumberValue")(not(= value2Type "Calc"))(not(= value2Type "Dependent"))(not(= value2Type "Auto"))(not(= value2Type "NumberValue")))
                  (setq decisionLine (strcat adjustedValue " = " providedNumber1 " " operator " " variableValue2))
    ) ) ) ) ) );end ifs
  (write-line "requires task.selection" writeToVBCode)
  (write-line "dim i = 1" writeToVBCode)
  (write-line "while i <= task.selection.count" writeToVBCode)
  (write-line "dim item = task.selection[i]" writeToVBCode)
  (write-line validityCheck writeToVBCode)
  (write-line decisionLine writeToVBCode)
  (write-line "item.update()" writeToVBCode)
  (write-line "end if" writeToVBCode)
  (write-line "i = i + 1" writeToVBCode)
  (write-line "end while" writeToVBCode)
  (close writeToVBCode)
  (Executescript vbCode sset)
  (vl-file-delete vbCode)
  (setq index nil
        operator nil
        parameterChoice nil
        valueChoice nil
        parameter nil
        dimIndexPara nil
        optionIndexPara nil
        valueChoice nil
        operator nil
        twoVariables nil
        stringValue1 nil
        stringValue2 nil
        dimIndexValue1 nil
        indexValue1 nil
        valueParameter1 nil
        value1Type nil
        optionIndexValue1 nil
        providedNumber1 nil
        stringValue2 nil
        dimIndexValue2 nil
        indexValue2 nil
        valueParameter2 nil
        value2Type nil
        optionIndexValue2 nil
        providedNumber2 nil
        dimIndexValue nil
        indexValue nil
        valueParameter nil
        valueType nil
        providedNumber nil
        dimIndexList nil
        optionIndexList nil
        dimCompare nil
        optionCompare nil
        dimElement nil
        dimComparison nil
        optionElement nil
        optionComparison nil
        adjustedValue nil
        validityCheck nil
        variableValue nil
        variableValue1 nil
        variableValue2 nil
        decisionLine nil)
  (princ)
  (END_ROUTINE)
);end defun
;**************************************************************************************************************************************************
(defun c:C1 ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (while(< i limit)
    (INSIDE_LOOP_VARIABLES sset i)
    (setq cNumber "1"
          connectionName c1Name)
    (if(= c1Spec "TDF")
      (if(wcmatch connectionName "TDF*")
        (setq newConnection "JF")
        (if(wcmatch connectionName "JF")
          (setq newConnection "JF-OFF")
          (if(wcmatch connectionName "JF-OFF")
            (setq newConnection "Cap")
            (if(wcmatch connectionName "Cap")
              (setq newConnection "RAW")
              (if(wcmatch connectionName "RAW")
                (setq newConnection "PG")
                (if(wcmatch connectionName "PG")
                (setq newConnection "1 Flg In")
                (if(or(wcmatch connectionName "1 Flg In")(wcmatch connectionName "Tap Inside"))
                  (setq newConnection "1 Flg Out")
                  (if(wcmatch connectionName "1 Flg Out")
                    (setq newConnection "1.25 flg out")
                    (if(wcmatch connectionName "1.25 flg out")
                      (setq newConnection "1.25 flg in")
                      (if(wcmatch connectionName "1.25 flg in")
                          (setq newConnection "1.5 flg out")
                          (if(wcmatch connectionName "1.5 flg out")
                            (setq newConnection "1.5 flg in")
                            (if(wcmatch connectionName "1.5 flg in")
                              (setq newConnection "JF 1\" + qt + \" DD")
                              (if(wcmatch connectionName "JF 1\" DD")
                                (setq newConnection "JF 1.5\" + qt + \" DD")
                                (if(wcmatch connectionName "JF 1.5\" DD")
                                  (setq newConnection "JF 2\" + qt + \" DD")
                                  (if(wcmatch connectionName "JF 2\" DD")
                                    (setq newConnection "JF 3\" + qt + \" DD")
                                    (if(wcmatch connectionName "JF 3\" DD")
                                      (setq newConnection "JF 4\" + qt + \" DD")
                                      (if(wcmatch connectionName "JF 4\" DD")
                                        (setq newConnection "TDF ")
      ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
    (if(= c1Spec "Stand S&D")
      (if(wcmatch connectionName "Stand S&D")
        (setq newConnection "4S")
        (if(wcmatch connectionName "4S")
          (setq newConnection "Cap")
          (if(wcmatch connectionName "Cap")
            (setq newConnection "RAW")
            (if(wcmatch connectionName "RAW")
              (setq newConnection "PG")
              (if(wcmatch connectionName "PG")
                (setq newConnection "1 Flg In")
                (if(or(wcmatch connectionName "1 Flg In")(wcmatch connectionName "Tap Inside"))
                  (setq newConnection "1 Flg Out")
                  (if(wcmatch connectionName "1 Flg Out")
                    (setq newConnection "1.25 flg out")
                    (if(wcmatch connectionName "1.25 flg out")
                      (setq newConnection "1.25 flg in")
                      (if(wcmatch connectionName "1.25 flg in")
                        (setq newConnection "1.5 flg out")
                        (if(wcmatch connectionName "1.5 flg out")
                          (setq newConnection "1.5 flg in")
                          (if(wcmatch connectionName "1.5 flg in")
                            (setq newConnection "SD 1 SD")
                            (if(wcmatch connectionName "SD 1 SD")
                              (setq newConnection "SD 1.5 SD")
                              (if(wcmatch connectionName "SD 1.5 SD")
                                (setq newConnection "SD 2 SD")
                                (if(wcmatch connectionName "SD 2 SD")
                                  (setq newConnection "Stand S&D")
      ) ) ) ) ) ) ) ) ) ) ) ) ) )
    (if(= c1Spec "Flat S&D")
      (if(wcmatch connectionName "Flat S&D")
        (setq newConnection "4S")
        (if(wcmatch connectionName "4S")
          (setq newConnection "Cap")
          (if(wcmatch connectionName "Cap")
            (setq newConnection "RAW")
            (if(wcmatch connectionName "RAW")
              (setq newConnection "PG")
              (if(wcmatch connectionName "PG")
                (setq newConnection "1 Flg In")
                (if(or(wcmatch connectionName "1 Flg In")(wcmatch connectionName "Tap Inside"))
                  (setq newConnection "1 Flg Out")
                  (if(wcmatch connectionName "1 Flg Out")
                    (setq newConnection "1.25 flg out")
                    (if(wcmatch connectionName "1.25 flg out")
                      (setq newConnection "1.25 flg in")
                      (if(wcmatch connectionName "1.25 flg in")
                        (setq newConnection "1.5 flg out")
                        (if(wcmatch connectionName "1.5 flg out")
                          (setq newConnection "1.5 flg in")
                          (if(wcmatch connectionName "1.5 flg in")
                            (setq newConnection "SD 1 SD")
                            (if(wcmatch connectionName "SD 1 SD")
                              (setq newConnection "SD 1.5 SD")
                              (if(wcmatch connectionName "SD 1.5 SD")
                                (setq newConnection "SD 2 SD")
                                (if(wcmatch connectionName "SD 2 SD")
                                  (setq newConnection "Flat S&D")
      ) ) ) ) ) ) ) ) ) ) ) ) ) )
      ) ) )
      (if(or(wcmatch connectionName "TDF*")
            (wcmatch connectionName "JF")
            (wcmatch connectionName "JF-OFF")
            (wcmatch connectionName "JF 1\" DD")
            (wcmatch connectionName "JF 1.5\" DD")
            (wcmatch connectionName "JF 2\" DD")
            (wcmatch connectionName "JF 3\" DD")
            (wcmatch connectionName "JF 4\" DD"))
        (setq connectionGroup "Duct - Flg Connector")
        (if(or(wcmatch connectionName "Cap")
              (wcmatch connectionName "RAW")
              (wcmatch connectionName "PG"))
          (setq connectionGroup "Duct - Other")
          (if(or(wcmatch connectionName "1 Flg Out")
                (wcmatch connectionName "1 Flg In")
                (wcmatch connectionName "1.25 flg out")
                (wcmatch connectionName "1.25 flg in")
                (wcmatch connectionName "1.5 flg out")
                (wcmatch connectionName "1.5 flg in"))
            (setq connectionGroup "Duct - Flanged")
            (if(wcmatch connectionName "Tap Inside")
              (setq connectionGroup "Standard")
              (if(or(wcmatch connectionName "Flat S&D")
                   (wcmatch connectionName "4S")
                  (wcmatch connectionName "Stand S&D")
                  (wcmatch connectionName "SD 1 SD")
                  (wcmatch connectionName "SD 1.5 SD")
                  (wcmatch connectionName "SD 2 SD"))
              (setq connectionGroup "Duct - S&D")
      ) ) ) ) )
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line (strcat "dim conNum = " cNumber) writeToVBCode)
(write-line (strcat "dim conName = \"" newConnection "\"") writeToVBCode)
(write-line (strcat "dim conGrp = \"" connectionGroup "\"") writeToVBCode)
(write-line "function connFind(cnum,cgrp,cnam)" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "while item.connector[cnum].group <> cgrp" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "while item.connector[cnum].value <> cnam" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "item.connector[conNum].value = conName" writeToVBCode)
(write-line "item.connector[conNum].locked = true" writeToVBCode)
(write-line "if item.connector[conNum].group <> conGrp then" writeToVBCode)
(write-line "connFind(conNum,conGrp,conName)" writeToVBCode)
(write-line "end if" writeToVBCode)
(if(and(= connectionGroup "Duct - Flg Connector")(= ItemCID "2"))
  (progn
    (write-line "if item.dim[6].value < 1.5 then" writeToVBCode)
    (write-line "item.dim[6].value = 1.5" writeToVBCode)
    (write-line "item.update()" writeToVBCode)
    (write-line "end if" writeToVBCode)
  );progn
);end if
(write-line "item.update()" writeToVBCode)
    (close writeToVBCode)
    (executescript vbCode sset)
    (setq writeToVBCode (open vbCode "w"))
    (princ (strcat "Connection " cNumber " changed from " connectionName " to " newConnection))(terpri)
    (setq i (1+ i))
  );end while
  (command "pselect" sset "")
  (command "regen")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:C2 ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (while(< i limit)
    (INSIDE_LOOP_VARIABLES sset i)
    (setq cNumber "2"
          connectionName c2Name)
    (if(= c2Spec "TDF")
      (if(wcmatch connectionName "TDF*")
        (setq newConnection "JF")
        (if(wcmatch connectionName "JF")
          (setq newConnection "JF-OFF")
          (if(wcmatch connectionName "JF-OFF")
            (setq newConnection "Cap")
            (if(wcmatch connectionName "Cap")
              (setq newConnection "RAW")
              (if(wcmatch connectionName "RAW")
                (setq newConnection "PG")
                (if(wcmatch connectionName "PG")
                (setq newConnection "1 Flg In")
                (if(or(wcmatch connectionName "1 Flg In")(wcmatch connectionName "Tap Inside"))
                  (setq newConnection "1 Flg Out")
                  (if(wcmatch connectionName "1 Flg Out")
                    (setq newConnection "1.25 flg out")
                    (if(wcmatch connectionName "1.25 flg out")
                      (setq newConnection "1.25 flg in")
                      (if(wcmatch connectionName "1.25 flg in")
                          (setq newConnection "1.5 flg out")
                          (if(wcmatch connectionName "1.5 flg out")
                            (setq newConnection "1.5 flg in")
                            (if(wcmatch connectionName "1.5 flg in")
                              (setq newConnection "JF 1\" + qt + \" DD")
                              (if(wcmatch connectionName "JF 1\" DD")
                                (setq newConnection "JF 1.5\" + qt + \" DD")
                                (if(wcmatch connectionName "JF 1.5\" DD")
                                  (setq newConnection "JF 2\" + qt + \" DD")
                                  (if(wcmatch connectionName "JF 2\" DD")
                                    (setq newConnection "JF 3\" + qt + \" DD")
                                    (if(wcmatch connectionName "JF 3\" DD")
                                      (setq newConnection "JF 4\" + qt + \" DD")
                                      (if(wcmatch connectionName "JF 4\" DD")
                                        (setq newConnection "TDF ")
      ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
    (if(= c2Spec "Stand S&D")
      (if(wcmatch connectionName "Stand S&D")
        (setq newConnection "4S")
        (if(wcmatch connectionName "4S")
          (setq newConnection "Cap")
          (if(wcmatch connectionName "Cap")
            (setq newConnection "RAW")
            (if(wcmatch connectionName "RAW")
              (setq newConnection "PG")
              (if(wcmatch connectionName "PG")
                (setq newConnection "1 Flg In")
                (if(or(wcmatch connectionName "1 Flg In")(wcmatch connectionName "Tap Inside"))
                  (setq newConnection "1 Flg Out")
                  (if(wcmatch connectionName "1 Flg Out")
                    (setq newConnection "1.25 flg out")
                    (if(wcmatch connectionName "1.25 flg out")
                      (setq newConnection "1.25 flg in")
                      (if(wcmatch connectionName "1.25 flg in")
                        (setq newConnection "1.5 flg out")
                        (if(wcmatch connectionName "1.5 flg out")
                          (setq newConnection "1.5 flg in")
                          (if(wcmatch connectionName "1.5 flg in")
                            (setq newConnection "SD 1 SD")
                            (if(wcmatch connectionName "SD 1 SD")
                              (setq newConnection "SD 1.5 SD")
                              (if(wcmatch connectionName "SD 1.5 SD")
                                (setq newConnection "SD 2 SD")
                                (if(wcmatch connectionName "SD 2 SD")
                                  (setq newConnection "Stand S&D")
      ) ) ) ) ) ) ) ) ) ) ) ) ) )
    (if(= c2Spec "Flat S&D")
      (if(wcmatch connectionName "Flat S&D")
        (setq newConnection "4S")
        (if(wcmatch connectionName "4S")
          (setq newConnection "Cap")
          (if(wcmatch connectionName "Cap")
            (setq newConnection "RAW")
            (if(wcmatch connectionName "RAW")
              (setq newConnection "PG")
              (if(wcmatch connectionName "PG")
                (setq newConnection "1 Flg In")
                (if(or(wcmatch connectionName "1 Flg In")(wcmatch connectionName "Tap Inside"))
                  (setq newConnection "1 Flg Out")
                  (if(wcmatch connectionName "1 Flg Out")
                    (setq newConnection "1.25 flg out")
                    (if(wcmatch connectionName "1.25 flg out")
                      (setq newConnection "1.25 flg in")
                      (if(wcmatch connectionName "1.25 flg in")
                        (setq newConnection "1.5 flg out")
                        (if(wcmatch connectionName "1.5 flg out")
                          (setq newConnection "1.5 flg in")
                          (if(wcmatch connectionName "1.5 flg in")
                            (setq newConnection "SD 1 SD")
                            (if(wcmatch connectionName "SD 1 SD")
                              (setq newConnection "SD 1.5 SD")
                              (if(wcmatch connectionName "SD 1.5 SD")
                                (setq newConnection "SD 2 SD")
                                (if(wcmatch connectionName "SD 2 SD")
                                  (setq newConnection "Flat S&D")
      ) ) ) ) ) ) ) ) ) ) ) ) ) )
      ) ) )
      (if(or(wcmatch connectionName "TDF*")
            (wcmatch connectionName "JF")
            (wcmatch connectionName "JF-OFF")
            (wcmatch connectionName "JF 1\" DD")
            (wcmatch connectionName "JF 1.5\" DD")
            (wcmatch connectionName "JF 2\" DD")
            (wcmatch connectionName "JF 3\" DD")
            (wcmatch connectionName "JF 4\" DD"))
        (setq connectionGroup "Duct - Flg Connector")
        (if(or(wcmatch connectionName "Cap")
              (wcmatch connectionName "RAW")
              (wcmatch connectionName "PG"))
          (setq connectionGroup "Duct - Other")
          (if(or(wcmatch connectionName "1 Flg Out")
                (wcmatch connectionName "1 Flg In")
                (wcmatch connectionName "1.25 flg out")
                (wcmatch connectionName "1.25 flg in")
                (wcmatch connectionName "1.5 flg out")
                (wcmatch connectionName "1.5 flg in"))
            (setq connectionGroup "Duct - Flanged")
            (if(wcmatch connectionName "Tap Inside")
            (setq connectionGroup "Duct - Flanged")
            (if(or(wcmatch connectionName "Flat S&D")
                  (wcmatch connectionName "4S")
                  (wcmatch connectionName "Stand S&D")
                  (wcmatch connectionName "SD 1 SD")
                  (wcmatch connectionName "SD 1.5 SD")
                  (wcmatch connectionName "SD 2 SD"))
              (setq connectionGroup "Duct - S&D")
      ) ) ) ) )
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line (strcat "dim conNum = " cNumber) writeToVBCode)
(write-line (strcat "dim conName = \"" newConnection "\"") writeToVBCode)
(write-line (strcat "dim conGrp = \"" connectionGroup "\"") writeToVBCode)
(write-line "function connFind(cnum,cgrp,cnam)" writeToVBCode)
(write-line "dim count = 1" writeToVBCode)
(write-line "while item.connector[cnum].group <> cgrp" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "while item.connector[cnum].value <> cnam" writeToVBCode)
(write-line "item.connector[cnum].value = count" writeToVBCode)
(write-line "count = count + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
(write-line "end function" writeToVBCode)
(write-line "item.connector[conNum].value = conName" writeToVBCode)
(write-line "item.connector[conNum].locked = true" writeToVBCode)
(write-line "if item.connector[conNum].group <> conGrp then" writeToVBCode)
(write-line "connFind(conNum,conGrp,conName)" writeToVBCode)
(write-line "end if" writeToVBCode)
(if(and(= connectionGroup "Duct - Flg Connector")(= ItemCID "2"))
  (progn
    (write-line "if item.dim[7].value < 1.5 then" writeToVBCode)
    (write-line "item.dim[7].value = 1.5" writeToVBCode)
    (write-line "item.update()" writeToVBCode)
    (write-line "end if" writeToVBCode)
  );progn
);end if
(write-line "item.update()" writeToVBCode)
    (close writeToVBCode)
    (executescript vbCode sset)
    (setq writeToVBCode (open vbCode "w"))
    (princ (strcat "Connection " cNumber " changed from " connectionName " to " newConnection))(terpri)
    (setq i (1+ i))
  );end while
  (command "pselect" sset "")
  (command "regen")
  (princ)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Blockout_Dimensions ()
  ;(setq curUCSORG (getvar 'ucsorg))
  ;(setvar 'ucsorg "0.0 0.0 0.0")
  (if(not(or(= ucsName "WCS")(wcmatch ucsName "_@origin")))
    (progn
      (setq ucsOrg (getvar 'ucsorg)
            ucsXAxis (getvar 'ucsxdir)
            ucsYAxis (getvar 'ucsydir)
            ucsName (getvar 'ucsname)
            ucsAngle (getvar 'ucsaxisang)
      );end setq
      (command "_.UCS" "World" "")
      (command "_.UCS" (list 0 0 0);UCS origin point
                       (list (car ucsXAxis)(cadr ucsXAxis)(caddr ucsXAxis));UCS X axis point
                       (list (car ucsYAxis)(cadr ucsYAxis)(caddr ucsYAxis)) "" "");UCS Y axis point
      (if(not(or(= ucsName nil)(= ucsName "WCS")(= ucsName "")(wcmatch ucsName "_@origin")))
        (command "_.UCS" "Named" "Save" (strcat ucsName "_@origin") "")
      );end if
    );end progn
  );end if
  (setq i 0
        sset (ssget "_X" '((0 . "MAPS_SOLID")(-4 . "<OR")(300 . "Sleeve Rectangular")(300 . "Supply Blockout")(300 . "Return-Transfer Blockout")(300 . "Exhaust Blockout")(-4 . "OR>"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setvar "cmdecho" 0)
  (while(< i limit)
    (INSIDE_LOOP_VARIABLES sset i)
    (if(or(=(strcase ItemSourceFileName)(strcase "Sleeve Rectangular"))
          (=(strcase ItemSourceFileName)(strcase "Supply Blockout"))
          (=(strcase ItemSourceFileName)(strcase "Return-Transfer Blockout"))
          (=(strcase ItemSourceFileName)(strcase "Exhaust Blockout")))
      (progn
	;(setq xPts (list c4x c5x c6x c7x)
        ;      yPts (list c4y c5y c6y c7y)
        ;      leftestX (car xPts)
        ;      upestY (cadr yPts)
        ;);end setq
        ;(foreach elm xPts
        ;  (if(< elm leftestX)
        ;    (setq leftesetX elm)
        ;  );end if
        ;);foreach
        (setq pt1 (list c4x c4y c4z)
              pt2 (list c5x c5y c5z)
              pt3 (list c6x c6y c6z)
        );end setq
        (command "CAL" "translatedPt1=w2u(pt1)")
        (command "CAL" "translatedPt2=w2u(pt2)")
        (command "CAL" "translatedPt3=w2u(pt3)")
        (setvar 'osnapz 1)
        (initcommandversion 1)
        (setq oldCurrentLayer (getvar 'clayer))
        (command "LAYER" "SET" "M-AMC-GDIM-USER" "")
        (initcommandversion 2)
        (TRIG_MY_POINTS translatedPt1 nil nil translatedPt2 nil nil nil nil nil nil)
        (command "._dimlinear" translatedPt1 translatedPt2 side1Pos3)
        (TRIG_MY_POINTS translatedPt2 nil nil translatedPt3 nil nil nil nil nil nil)
        (command "._dimlinear" translatedPt2 translatedPt3 side1Pos3)
        (initcommandversion 1)
        (command "LAYER" "SET" oldCurrentLayer "")
        (setvar 'osnapz 0)
      );progn
    );end if
    (setq i (1+ i))
  );end while
  ;(setvar 'ucsorg curUCSORG)
  (if(not(or(= UCSname nil)(= UCSname "WCS")(= UCSname "")(= UCSname "Unnamed")))
    (command "_.UCS" "Named" "Restore" UCSname "")
    (if(not(= UCSname "_@origin"))
      (command "_.UCS" "Previous" "")
    );end if
  );end if
  (princ)
(END_ROUTINE)
);end defun
;**************************************************************************************************************************************************
(defun c:Fix_Elbows ()
  ;(setvar 'filedia 0)
  (setq i 0
        sset (ssget "_X" '((0 . "MAPS_SOLID")
                               (-4 . "<OR")
                                 (300 . "90Deg Welded Elbow")
                                 (300 . "45Deg Welded Elbow")
                               (-4 . "OR>"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (while(< i limit)
    (close writeToVBCode)
    (setq writeToVBCode (open vbCode "w"))
    (INSIDE_LOOP_VARIABLES sset i)
    (setq oldItem ent
          oldItemDescription ItemDescription
          elbowAngle (rtos ItemLengthAngle 2 0)
          oldItemC1xyz (list c2x c2y c2z)
          oldItemC2xyz (list c3x c3y c3z))
    (if(wcmatch (strcase ItemDescription) "*HALF*")
      (progn
        (write-line (strcat "item.dim[\"Inner Radius\"].value = " (rtos dim2 2 0)) writeToVBCode)
        (write-line (strcat "item.dim[\"Angle\"].value = " elbowAngle) writeToVBCode)
        (write-line "item.update()" writeToVBCode)
      );end progn
      (progn
        (write-line (strcat "item.dim[\"Angle\"].value = " elbowAngle) writeToVBCode)
        (write-line "item.update()" writeToVBCode)
      );end progn
    );end if
    (close writeToVBCode)
    (command "attacher" oldItemC2xyz)
    (REDRAW)
    (command (takeoff "Q:/PM Shared/Libraries/Common/STANDARD ITEMS/2.) ROUND/#1 SPIRAL.itm" "" "") "")
    (command "._rotateatend" "180" "")
    (command "attachoff")
    (setq straightItem (entlast)
          ssStraightItem (ssadd straightItem))
    (INSIDE_LOOP_VARIABLES ssStraightItem 0)
    (setq straightC1xyz (list c1x c1y c1z)
          straightC2xyz (list c2x c2y c2z))
    (command "erase" oldItem "")
    (command "attacher" straightC1xyz)
    (REDRAW)
    (command (takeoff "Q:/PM Shared/Libraries/Common/STANDARD ITEMS/2.) ROUND/WELDED ELBOWS/Misc. Welded Elbow.ITM" "" "") "")
    (setq newItem (entlast)
          ssnewItem (ssadd newItem))
    (Executescript vbCode ssnewItem)
    (redraw)
    (command)(command)
    (INSIDE_LOOP_VARIABLES ssnewItem 0)
    (setq newItemC1xyz (list c2x c2y c2z)
          newItemC2xyz (list c3x c3y c3z))
    (command "erase" straightItem "")
    (command ".move" newItem "" newItemC1xyz straightC1xyz)
    (vl-file-delete vbCode)
    (setq i (1+ i))
  );end while
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Automation1_Cdata ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq NewAutomation1 (getstring T "n/Enter the new Automation1 value (no commas): "))
  (if(and(not(= NewAutomation1 nil))(not(= NewAutomation1 "")))
    (while(< i limit)
      (INSIDE_LOOP_VARIABLES sset i)
      (vlax-put-property vla "CustomData" (strcat "Automation1" " = " NewAutomation1 ","))
      (setq i (1+ i))
    );end while
  );end if
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Automation2_Cdata ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq NewAutomation2 (getstring T "n/Enter the new Automation2 value (no commas): "))
  (if(and(not(= NewAutomation2 nil))(not(= NewAutomation2 "")))
    (while(< i limit)
      (INSIDE_LOOP_VARIABLES sset i)
      (vlax-put-property vla "CustomData" (strcat "Automation2" " = " NewAutomation2 ","))
      (setq i (1+ i))
    );end while
  );end if
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Tag_ID_Cdata ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq NewTag_ID (getstring T "n/Enter the new Tag_ID value (no commas): "))
  (if(and(not(= NewTag_ID nil))(not(= NewTag_ID "")))
    (while(< i limit)
      (INSIDE_LOOP_VARIABLES sset i)
      (vlax-put-property vla "CustomData" (strcat "Tag_ID" " = " NewTag_ID ","))
      (setq i (1+ i))
    );end while
  );end if
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:ItemCID_Cdata ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq NewItemCID (getstring T "n/Enter the new ItemCID value (no commas): "))
  (if(and(not(= NewItemCID nil))(not(= NewItemCID "")))
    (while(< i limit)
      (INSIDE_LOOP_VARIABLES sset i)
      (vlax-put-property vla "CustomData" (strcat "ItemCID" " = " NewItemCID ","))
      (setq i (1+ i))
    );end while
  );end if
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Activity_#_Cdata ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq NewActivity_# (getstring T "n/Enter the new Activity_# value (no commas): "))
  (if(and(not(= NewActivity_# nil))(not(= NewActivity_# "")))
    (while(< i limit)
      (INSIDE_LOOP_VARIABLES sset i)
      (vlax-put-property vla "CustomData" (strcat "Activity_#" " = " NewActivity_# ","))
      (setq i (1+ i))
    );end while
  );end if
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Manufacturer_Cdata ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq NewManufacturer (getstring T "n/Enter the new Manufacturer value (no commas): "))
  (if(and(not(= NewManufacturer nil))(not(= NewManufacturer "")))
    (while(< i limit)
      (INSIDE_LOOP_VARIABLES sset i)
      (vlax-put-property vla "CustomData" (strcat "Manufacturer" " = " NewManufacturer ","))
      (setq i (1+ i))
    );end while
  );end if
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Model_Cdata ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq NewModel (getstring T "n/Enter the new Model value (no commas): "))
  (if(and(not(= NewModel nil))(not(= NewModel "")))
    (while(< i limit)
      (INSIDE_LOOP_VARIABLES sset i)
      (vlax-put-property vla "CustomData" (strcat "Model" " = " NewModel ","))
      (setq i (1+ i))
    );end while
  );end if
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Size/Tonnage_Cdata ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq NewSize/Tonnage (getstring T "n/Enter the new Size/Tonnage value (no commas): "))
  (if(and(not(= NewSize/Tonnage nil))(not(= NewSize/Tonnage "")))
    (while(< i limit)
      (INSIDE_LOOP_VARIABLES sset i)
      (vlax-put-property vla "CustomData" (strcat "Size/Tonnage" " = " NewSize/Tonnage ","))
      (setq i (1+ i))
    );end while
  );end if
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Tonnage_Cdata ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq Tonnage (getstring T "n/Enter the new Tonnage value (no commas): "))
  (if(and(not(= Tonnage nil))(not(= Tonnage "")))
    (while(< i limit)
      (INSIDE_LOOP_VARIABLES sset i)
      (vlax-put-property vla "CustomData" (strcat "Size/Tonnage" " = " Tonnage ","))
      (setq i (1+ i))
    );end while
  );end if
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Size_Cdata ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq NewSize (getstring T "n/Enter the new Size value (no commas): "))
  (if(and(not(= NewSize nil))(not(= NewSize "")))
    (while(< i limit)
      (INSIDE_LOOP_VARIABLES sset i)
      (vlax-put-property vla "CustomData" (strcat "Size/Tonnage" " = " NewSize ","))
      (setq i (1+ i))
    );end while
  );end if
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Weight_Cdata ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq NewWeight (getstring T "n/Enter the new Weight value (no commas): "))
  (if(and(not(= NewWeight nil))(not(= NewWeight "")))
    (while(< i limit)
      (INSIDE_LOOP_VARIABLES sset i)
      (vlax-put-property vla "CustomData" (strcat "Weight" " = " NewWeight ","))
      (setq i (1+ i))
    );end while
  );end if
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:CFM/ID#2_Cdata ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq NewCFM/ID#2 (getstring T "n/Enter the new CFM/ID#2 value (no commas): "))
  (if(and(not(= NewCFM/ID#2 nil))(not(= NewCFM/ID#2 "")))
    (while(< i limit)
      (INSIDE_LOOP_VARIABLES sset i)
      (vlax-put-property vla "CustomData" (strcat "CFM/ID#2" " = " NewCFM/ID#2 ","))
      (setq i (1+ i))
    );end while
  );end if
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:CFM_Cdata ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq NewCFM (getstring T "n/Enter the new CFM value (no commas): "))
  (if(and(not(= NewCFM nil))(not(= NewCFM "")))
    (while(< i limit)
      (INSIDE_LOOP_VARIABLES sset i)
      (vlax-put-property vla "CustomData" (strcat "CFM/ID#2" " = " NewCFM ","))
      (setq i (1+ i))
    );end while
  );end if
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:ID#2_Cdata ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq NewID#2 (getstring T "n/Enter the new ID#2 value (no commas): "))
  (if(and(not(= NewID#2 nil))(not(= NewID#2 "")))
    (while(< i limit)
      (INSIDE_LOOP_VARIABLES sset i)
      (vlax-put-property vla "CustomData" (strcat "CFM/ID#2" " = " NewID#2 ","))
      (setq i (1+ i))
    );end while
  );end if
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
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
;**************************************************************************************************************************************************
(defun Fix_Colors ()
  (setq oldCurrentLayer (getvar "CLAYER")
        supplyLowMasterColor 127
        supplyMediumMasterColor 137
        supplyHighMasterColor 147
        supplyUndergroundMasterColor 165
        returnLowMasterColor 217
        returnMediumMasterColor 227
        returnHighMasterColor 237
        exhaustLowMasterColor 17
        exhaustMediumMasterColor 27
        exhaustHighMasterColor 37
        exhaustInslabMasterColor 17
        exhaustPVCMasterColor 197
        combustionAirMasterColor 67
        transferAirMasterColor 77
        outsideAirMasterColor 87
        canvasMasterColor "WHITE"
        accessZoneMasterColor "CYAN"
        accessDoorMasterColor "BLUE"
        blockoutMasterColor "BLUE"
        steelMasterColor 46
        seismicMasterColor 55
        defaultMissedServiceType "WHITE"
        supplyTagColor 126
        returnTagColor 224
        exhaustTagColor 24
        weldedTagColor 44
        transferTagColor 77
        outsideTagColor 86
        combustionTagColor 66
        equipmentTagColor 152
        dimensionColor 160
        textColor 150
  );end setq
  (tblnext "layer" T)
  (initcommandversion 1)
  (while(setq evalLayer (cdr(assoc 2 (tblnext "layer"))))
    (setq -1MasterColorTest (or(wcmatch evalLayer "*-OINS-*")
                               (wcmatch evalLayer "*-IINS-*")
                               (wcmatch evalLayer "*-HIDE-*")
                               (wcmatch evalLayer "*-SYMB-*")
                               (wcmatch evalLayer "*-ALIA-*")
                               (wcmatch evalLayer "*-DIMN-*")
                               (wcmatch evalLayer "*-LEVE-*")
                               (wcmatch evalLayer "*-NUMB-*")
                               (wcmatch evalLayer "*-OSET-*")
                               (wcmatch evalLayer "*-SIZE-*")
                            );or
          MissedServiceTypeTest
                            (or
                               (wcmatch evalLayer "-OINS-*")
                               (wcmatch evalLayer "-IINS-*")
                               (wcmatch evalLayer "-HIDE-*")
                               (wcmatch evalLayer "-SYMB-*")
                               (wcmatch evalLayer "-ALIA-*")
                               (wcmatch evalLayer "-DIMN-*")
                               (wcmatch evalLayer "-LEVE-*")
                               (wcmatch evalLayer "-NUMB-*")
                               (wcmatch evalLayer "-OSET-*")
                               (wcmatch evalLayer "-SIZE-*")
                               (wcmatch evalLayer "-3DOB*")
                               (wcmatch evalLayer "-2DOB*")
                            );or
    );end setq
  (if MissedServiceTypeTest
    (command "LAYER" "COLOR" defaultMissedServiceType evalLayer "")
    (if(wcmatch evalLayer "M-HVAC-CNVS*")
      (command "LAYER" "COLOR" canvasMasterColor evalLayer "")
      (if(wcmatch evalLayer "M-HVAC-ACZN*")
        (command "LAYER" "COLOR" accessZoneMasterColor evalLayer "")
        (if(wcmatch evalLayer "M-HVAC-ACDR*")
          (command "LAYER" "COLOR" accessDoorMasterColor evalLayer "")
          (if(wcmatch evalLayer "M-HVAC-BKOT*")
            (command "LAYER" "COLOR" blockoutMasterColor evalLayer "")
            (if(wcmatch evalLayer "M-HVAC-STEL*")
              (command "LAYER" "COLOR" (rtos steelMasterColor 2 0) evalLayer "")
              (if(wcmatch evalLayer "M-HVAC-ANGL*")
                (command "LAYER" "COLOR" (rtos steelMasterColor 2 0) evalLayer "")
                (if(wcmatch evalLayer "M-HVAC-SEIS*")
                  (command "LAYER" "COLOR" (rtos seismicMasterColor 2 0) evalLayer "")
                ;(if(wcmatch evalLayer "M-AMC-TEXT*")
                  ;(command "LAYER" "COLOR" (rtos textColor 2 0) evalLayer "")
                ;(if(wcmatch evalLayer "M-AMC-GTXT-USER*")
                  ;(command "LAYER" "COLOR" (rtos textColor 2 0) evalLayer "")
                ;(if(wcmatch evalLayer "M-AMC-GDIM-USER*")
                  ;(command "LAYER" "COLOR" (rtos dimensionColor 2 0) evalLayer "")
  (if(wcmatch evalLayer "M-AMC-TAGS-SPLY")
    (command "LAYER" "COLOR" (rtos supplyTagColor 2 0) evalLayer "")
    (if(wcmatch evalLayer "M-AMC-TAGS-RTRN")
      (command "LAYER" "COLOR" (rtos returnTagColor 2 0) evalLayer "")
      (if(wcmatch evalLayer "M-AMC-TAGS-EXHA")
        (command "LAYER" "COLOR" (rtos exhaustTagColor 2 0) evalLayer "")
        (if(wcmatch evalLayer "M-AMC-TAGS-EWLD")
          (command "LAYER" "COLOR" (rtos weldedTagColor 2 0) evalLayer "")
          (if(wcmatch evalLayer "M-AMC-TAGS-XFER")
            (command "LAYER" "COLOR" (rtos transferTagColor 2 0) evalLayer "")
            (if(wcmatch evalLayer "M-AMC-TAGS-OUTA")
              (command "LAYER" "COLOR" (rtos outsideTagColor 2 0) evalLayer "")
              (if(wcmatch evalLayer "M-AMC-TAGS-CBST")
                (command "LAYER" "COLOR" (rtos combustionTagColor 2 0) evalLayer "")
                (if(wcmatch evalLayer "M-AMC-TAGS-EQPM")
                  (command "LAYER" "COLOR" (rtos equipmentTagColor 2 0) evalLayer "")
    (if(wcmatch evalLayer "M-HVAC-SLHG*")
      (command "LAYER" "COLOR" (rtos(- supplyLowMasterColor 4) 2 0) evalLayer "")
      (if(wcmatch evalLayer "M-HVAC-SLDL*")
        (command "LAYER" "COLOR" (rtos(- supplyLowMasterColor 7) 2 0) evalLayer "")
        (if(or(wcmatch evalLayer "M-HVAC-SLDE*")(and(wcmatch evalLayer "M-HVAC-SL*")-1MasterColorTest))
          (command "LAYER" "COLOR" (rtos(- supplyLowMasterColor 1) 2 0) evalLayer "")
          (if(and(wcmatch evalLayer "M-HVAC-SL*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
            (command "LAYER" "COLOR" (rtos supplyLowMasterColor 2 0) evalLayer "")
            (if(wcmatch evalLayer "M-HVAC-SMHG*")
              (command "LAYER" "COLOR" (rtos(- supplyMediumMasterColor 4) 2 0) evalLayer "")
              (if(wcmatch evalLayer "M-HVAC-SMDL*")
                (command "LAYER" "COLOR" (rtos(- supplyMediumMasterColor 7) 2 0) evalLayer "")
                (if(or(wcmatch evalLayer "M-HVAC-SMDE*")(and(wcmatch evalLayer "M-HVAC-SM*")-1MasterColorTest))
                  (command "LAYER" "COLOR" (rtos(- supplyMediumMasterColor 1) 2 0) evalLayer "")
                  (if(and(wcmatch evalLayer "M-HVAC-SM*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
                    (command "LAYER" "COLOR" (rtos supplyMediumMasterColor 2 0) evalLayer "")
                    (if(wcmatch evalLayer "M-HVAC-SHHG*")
                      (command "LAYER" "COLOR" (rtos(- supplyHighMasterColor 4) 2 0) evalLayer "")
                      (if(wcmatch evalLayer "M-HVAC-SHDL*")
                        (command "LAYER" "COLOR" (rtos(- supplyHighMasterColor 7) 2 0) evalLayer "")
                        (if(or(wcmatch evalLayer "M-HVAC-SHDE*")(and(wcmatch evalLayer "M-HVAC-SH*")-1MasterColorTest))
                          (command "LAYER" "COLOR" (rtos(- supplyHighMasterColor 1) 2 0) evalLayer "")
                          (if(and(wcmatch evalLayer "M-HVAC-SH*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
                            (command "LAYER" "COLOR" (rtos supplyHighMasterColor 2 0) evalLayer "")
    (if(wcmatch evalLayer "M-HVAC-RLHG*")
      (command "LAYER" "COLOR" (rtos(- returnLowMasterColor 4) 2 0) evalLayer "")
      (if(wcmatch evalLayer "M-HVAC-RLDL*")
        (command "LAYER" "COLOR" (rtos(- returnLowMasterColor 7) 2 0) evalLayer "")
        (if(or(wcmatch evalLayer "M-HVAC-RLDE*")(and(wcmatch evalLayer "M-HVAC-RL*")-1MasterColorTest))
          (command "LAYER" "COLOR" (rtos(- returnLowMasterColor 1) 2 0) evalLayer "")
          (if(and(wcmatch evalLayer "M-HVAC-RL*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
            (command "LAYER" "COLOR" (rtos returnLowMasterColor 2 0) evalLayer "")
            (if(wcmatch evalLayer "M-HVAC-RMHG*")
              (command "LAYER" "COLOR" (rtos(- returnMediumMasterColor 4) 2 0) evalLayer "")
              (if(wcmatch evalLayer "M-HVAC-RMDL*")
                (command "LAYER" "COLOR" (rtos(- returnMediumMasterColor 7) 2 0) evalLayer "")
                (if(or(wcmatch evalLayer "M-HVAC-RMDE*")(and(wcmatch evalLayer "M-HVAC-RM*")-1MasterColorTest))
                  (command "LAYER" "COLOR" (rtos(- returnMediumMasterColor 1) 2 0) evalLayer "")
                  (if(and(wcmatch evalLayer "M-HVAC-RM*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
                    (command "LAYER" "COLOR" (rtos returnMediumMasterColor 2 0) evalLayer "")
                    (if(wcmatch evalLayer "M-HVAC-RHHG*")
                      (command "LAYER" "COLOR" (rtos(- returnHighMasterColor 4) 2 0) evalLayer "")
                      (if(wcmatch evalLayer "M-HVAC-RHDL*")
                        (command "LAYER" "COLOR" (rtos(- returnHighMasterColor 7) 2 0) evalLayer "")
                        (if(or(wcmatch evalLayer "M-HVAC-RHDE*")(and(wcmatch evalLayer "M-HVAC-RH*")-1MasterColorTest))
                          (command "LAYER" "COLOR" (rtos(- returnHighMasterColor 1) 2 0) evalLayer "")
                          (if(and(wcmatch evalLayer "M-HVAC-RH*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
                            (command "LAYER" "COLOR" (rtos returnHighMasterColor 2 0) evalLayer "")
    (if(wcmatch evalLayer "M-HVAC-ELHG*")
      (command "LAYER" "COLOR" (rtos(- exhaustLowMasterColor 4) 2 0) evalLayer "")
      (if(wcmatch evalLayer "M-HVAC-ELDL*")
        (command "LAYER" "COLOR" (rtos(- exhaustLowMasterColor 7) 2 0) evalLayer "")
        (if(or(wcmatch evalLayer "M-HVAC-ELDE*")(and(wcmatch evalLayer "M-HVAC-EL*")-1MasterColorTest))
          (command "LAYER" "COLOR" (rtos(- exhaustLowMasterColor 1) 2 0) evalLayer "")
          (if(and(wcmatch evalLayer "M-HVAC-EL*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
            (command "LAYER" "COLOR" (rtos exhaustLowMasterColor 2 0) evalLayer "")
            (if(wcmatch evalLayer "M-HVAC-EMHG*")
              (command "LAYER" "COLOR" (rtos(- exhaustMediumMasterColor 4) 2 0) evalLayer "")
              (if(wcmatch evalLayer "M-HVAC-EMDL*")
                (command "LAYER" "COLOR" (rtos(- exhaustMediumMasterColor 7) 2 0) evalLayer "")
                (if(or(wcmatch evalLayer "M-HVAC-EMDE*")(and(wcmatch evalLayer "M-HVAC-EM*")-1MasterColorTest))
                  (command "LAYER" "COLOR" (rtos(- exhaustMediumMasterColor 1) 2 0) evalLayer "")
                  (if(and(wcmatch evalLayer "M-HVAC-EM*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
                    (command "LAYER" "COLOR" (rtos exhaustMediumMasterColor 2 0) evalLayer "")
                    (if(wcmatch evalLayer "M-HVAC-EHHG*")
                      (command "LAYER" "COLOR" (rtos(- exhaustHighMasterColor 4) 2 0) evalLayer "")
                      (if(wcmatch evalLayer "M-HVAC-EHDL*")
                        (command "LAYER" "COLOR" (rtos(- exhaustHighMasterColor 7) 2 0) evalLayer "")
                        (if(or(wcmatch evalLayer "M-HVAC-EHDE*")(and(wcmatch evalLayer "M-HVAC-EH*")-1MasterColorTest))
                          (command "LAYER" "COLOR" (rtos(- exhaustHighMasterColor 1) 2 0) evalLayer "")
                          (if(and(wcmatch evalLayer "M-HVAC-EH*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
                            (command "LAYER" "COLOR" (rtos exhaustHighMasterColor 2 0) evalLayer "")
    (if(wcmatch evalLayer "M-HVAC-OAHG*")
      (command "LAYER" "COLOR" (rtos(- outsideAirMasterColor 4) 2 0) evalLayer "")
      (if(wcmatch evalLayer "M-HVAC-OADL*")
        (command "LAYER" "COLOR" (rtos(- outsideAirMasterColor 7) 2 0) evalLayer "")
        (if(or(wcmatch evalLayer "M-HVAC-OADE*")(and(wcmatch evalLayer "M-HVAC-OA*")-1MasterColorTest))
          (command "LAYER" "COLOR" (rtos(- outsideAirMasterColor 1) 2 0) evalLayer "")
          (if(and(wcmatch evalLayer "M-HVAC-OA*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
            (command "LAYER" "COLOR" (rtos outsideAirMasterColor 2 0) evalLayer "")
    (if(wcmatch evalLayer "M-HVAC-CAHG*")
      (command "LAYER" "COLOR" (rtos(- combustionAirMasterColor 4) 2 0) evalLayer "")
      (if(wcmatch evalLayer "M-HVAC-CADL*")
        (command "LAYER" "COLOR" (rtos(- combustionAirMasterColor 7) 2 0) evalLayer "")
        (if(or(wcmatch evalLayer "M-HVAC-CADE*")(and(wcmatch evalLayer "M-HVAC-CA*")-1MasterColorTest))
          (command "LAYER" "COLOR" (rtos(- combustionAirMasterColor 1) 2 0) evalLayer "")
          (if(and(wcmatch evalLayer "M-HVAC-CA*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
            (command "LAYER" "COLOR" (rtos combustionAirMasterColor 2 0) evalLayer "")
    (if(wcmatch evalLayer "M-HVAC-TAHG*")
      (command "LAYER" "COLOR" (rtos(- transferAirMasterColor 4) 2 0) evalLayer "")
      (if(wcmatch evalLayer "M-HVAC-TADL*")
        (command "LAYER" "COLOR" (rtos(- transferAirMasterColor 7) 2 0) evalLayer "")
        (if(or(wcmatch evalLayer "M-HVAC-TADE*")(and(wcmatch evalLayer "M-HVAC-TA*")-1MasterColorTest))
          (command "LAYER" "COLOR" (rtos(- transferAirMasterColor 1) 2 0) evalLayer "")
          (if(and(wcmatch evalLayer "M-HVAC-TA*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
            (command "LAYER" "COLOR" (rtos transferAirMasterColor 2 0) evalLayer "")
    (if(wcmatch evalLayer "M-HVAC-SUHG*")
      (command "LAYER" "COLOR" (rtos(- supplyUndergroundMasterColor 4) 2 0) evalLayer "")
      (if(wcmatch evalLayer "M-HVAC-SUDL*")
        (command "LAYER" "COLOR" (rtos(- supplyUndergroundMasterColor 7) 2 0) evalLayer "")
        (if(or(wcmatch evalLayer "M-HVAC-SUDE*")(and(wcmatch evalLayer "M-HVAC-SU*")-1MasterColorTest))
          (command "LAYER" "COLOR" (rtos(- supplyUndergroundMasterColor 1) 2 0) evalLayer "")
          (if(and(wcmatch evalLayer "M-HVAC-SU*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
            (command "LAYER" "COLOR" (rtos supplyUndergroundMasterColor 2 0) evalLayer "")
    (if(wcmatch evalLayer "M-HVAC-EIHG*")
      (command "LAYER" "COLOR" (rtos(- exhaustInslabMasterColor 4) 2 0) evalLayer "")
      (if(wcmatch evalLayer "M-HVAC-EIDL*")
        (command "LAYER" "COLOR" (rtos(- exhaustInslabMasterColor 7) 2 0) evalLayer "")
        (if(or(wcmatch evalLayer "M-HVAC-EIDE*")(and(wcmatch evalLayer "M-HVAC-EI*")-1MasterColorTest))
          (command "LAYER" "COLOR" (rtos(- exhaustInslabMasterColor 1) 2 0) evalLayer "")
          (if(and(wcmatch evalLayer "M-HVAC-EI*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
            (command "LAYER" "COLOR" (rtos exhaustInslabMasterColor 2 0) evalLayer "")
    (if(wcmatch evalLayer "M-HVAC-EPHG*")
      (command "LAYER" "COLOR" (rtos(- exhaustPVCMasterColor 4) 2 0) evalLayer "")
      (if(wcmatch evalLayer "M-HVAC-EPDL*")
        (command "LAYER" "COLOR" (rtos(- exhaustPVCMasterColor 7) 2 0) evalLayer "")
        (if(or(wcmatch evalLayer "M-HVAC-EPDE*")(and(wcmatch evalLayer "M-HVAC-EP*")-1MasterColorTest))
          (command "LAYER" "COLOR" (rtos(- exhaustPVCMasterColor 1) 2 0) evalLayer "")
          (if(and(wcmatch evalLayer "M-HVAC-EP*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
            (command "LAYER" "COLOR" (rtos exhaustPVCMasterColor 2 0) evalLayer "")
    ))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));end ifs
  );end while
  (setvar "CLAYER" oldCurrentLayer)
  (setq evalLayer nil)
  (setq sset (ssget "_X" '((0 . "MAPS_SOLID"))));end setq
  (if(not(= sset nil))
    (progn
      (OUTSIDE_LOOP_VARIABLES nil)
      (write-line "requires task.selection" writeToVBCode)
      (write-line "dim i = 1" writeToVBCode)
      (write-line "dim qt = ASCII(34)" writeToVBCode)
      (write-line "while i <= task.selection.count" writeToVBCode)
      (write-line "dim item = task.selection[i]" writeToVBCode)
      (write-line "item.update()" writeToVBCode)
      (write-line "i = i + 1" writeToVBCode)
      (write-line "end while" writeToVBCode)
      (close writeToVBCode)
      (Executescript vbCode sset)
      (vl-file-delete vbCode)
    );progn
  );end if
  (princ)
  (END_ROUTINE)
);end defun
;**************************************************************************************************************************************************
(defun c:Set_Layer_Filters ()
  (vl-load-com)
  (setvar 'cmdecho 0)
    (progn
      (vl-catch-all-apply
        (function
          (lambda ()
            (vlax-for element(vla-Item(vla-GetExtensionDictionary(vla-get-Layers(vla-get-ActiveDocument(vlax-get-acad-object))))"ACAD_LAYERFILTERS")
              (vla-Delete element)
            (vlax-for element (vla-Item(vla-GetExtensionDictionary(vla-get-Layers(vla-get-ActiveDocument(vlax-get-acad-object))))"AcLyDictionary")
              (vla-Delete element)
            )
          );for
        );lamb
      );func
    );catch
  );progn
  (Command "-layer" "filter" "_N" "_P" "All" "NAME==\"~*|*\"" "" "01.) Non-XREF (Native)" "")
  
  (Command "-layer" "filter" "_N" "_P" "All" "NAME==\"*|*\"" "" "02.) XREF Only" "")
  (Command "-layer" "filter" "_N" "_P" "02.) XREF Only" "NAME==\"*|M-HVAC-*-NUMB-*\" or NAME==\"*|M-HVAC-*-SIZE-*\" or NAME==\"*|M-HVAC-*-ALIA-*\" or NAME==\"*|M-HVAC-*-LEVE-*\" or NAME==\"*|M-HVAC-*-DIMN-*\" or NAME==\"*|M-HVAC-*-OSET-*\" or NAME==\"*TEXT*\" or NAME==\"*GTXT*\"" "" "Xref Text" "")
  (Command "-layer" "filter" "_N" "_P" "Xref Text" "NAME==\"*|M-HVAC-*-NUMB-*\" or NAME==\"*|M-HVAC-*-SIZE-*\" or NAME==\"*|M-HVAC-*-ALIA-*\" or NAME==\"*|M-HVAC-*-LEVE-*\" or NAME==\"*|M-HVAC-*-DIMN-*\" or NAME==\"*|M-HVAC-*-OSET-*\"" "" "All CADmep Text" "")
  (Command "-layer" "filter" "_N" "_P" "Xref Text" "NAME==\"*|M-HVAC-*-SIZE-*\" or NAME==\"*|M-HVAC-*-ALIA-*\" or NAME==\"*|M-HVAC-*-LEVE-*\" or NAME==\"*|M-HVAC-*-DIMN-*\" or NAME==\"*|M-HVAC-*-OSET-*\"" "" "Numbers Excluded" "")
  (Command "-layer" "filter" "_N" "_P" "Xref Text" "NAME==\"*|M-HVAC-*-ALIA-*\"" "" "Aliases" "")
  (Command "-layer" "filter" "_N" "_P" "Xref Text" "NAME==\"*|M-HVAC-*-LEVE-*\"" "" "Elevations" "")
  (Command "-layer" "filter" "_N" "_P" "Xref Text" "NAME==\"*|M-HVAC-*-DIMN-*\"" "" "Lengths" "")
  (Command "-layer" "filter" "_N" "_P" "Xref Text" "NAME==\"*|M-HVAC-*-NUMB-*\"" "" "Numbers" "")
  (Command "-layer" "filter" "_N" "_P" "Xref Text" "NAME==\"*|M-HVAC-*-OSET-*\"" "" "Offsets" "")
  (Command "-layer" "filter" "_N" "_P" "Xref Text" "NAME==\"*|M-HVAC-*-SIZE-*\"" "" "Sizes" "")
  (Command "-layer" "filter" "_N" "_P" "Xref Text" "NAME==\"*GTXT*\" or NAME==\"*TEXT*\"" "" "Drawing Text" "")
  
  (Command "-layer" "filter" "_N" "_P" "All" "NAME==\"#-XREF-*\"" "" "03.) Xref Attachment" "")
  (Command "-layer" "filter" "_N" "_P" "All" "NAME==\"M-AMC-BKGD-*\"" "" "04.) Background" "")
  (Command "-layer" "filter" "_N" "_P" "All" "FROZEN==\"FALSE\"" "" "05.) Thawed" "")
  (Command "-layer" "filter" "_N" "_P" "05.) Thawed" "NAME==\"*|*\"" "" "Xref Thawed" "")
  (Command "-layer" "filter" "_N" "_P" "05.) Thawed" "NAME==\"~*|*\"" "" "DWG Thawed" "")
  (Command "-layer" "filter" "_N" "_P" "All" "FROZEN==\"TRUE\"" "" "06.) Frozen" "")
  (Command "-layer" "filter" "_N" "_P" "06.) Frozen" "NAME==\"*|*\"" "" "Xref Frozen" "")
  (Command "-layer" "filter" "_N" "_P" "06.) Frozen" "NAME==\"~*|*\"" "" "DWG Frozen" "")
  (Command "-layer" "filter" "_N" "_P" "All" "LOCKED==\"FALSE\"" "" "07.) Unlocked" "")
  (Command "-layer" "filter" "_N" "_P" "07.) Unlocked" "NAME==\"*|*\"" "" "Xref Unlocked" "")
  (Command "-layer" "filter" "_N" "_P" "07.) Unlocked" "NAME==\"~*|*\"" "" "DWG Unlocked" "")
  (Command "-layer" "filter" "_N" "_P" "All" "LOCKED==\"TRUE\"" "" "08.) Locked" "")
  (Command "-layer" "filter" "_N" "_P" "08.) Locked" "NAME==\"*|*\"" "" "Xref Locked" "")
  (Command "-layer" "filter" "_N" "_P" "08.) Locked" "NAME==\"~*|*\"" "" "DWG Locked" "")
  (Command "-layer" "filter" "_N" "_P" "All" "OFF==\"FALSE\"" "" "09.) On" "")
  (Command "-layer" "filter" "_N" "_P" "09.) On" "NAME==\"*|*\"" "" "Xref On" "")
  (Command "-layer" "filter" "_N" "_P" "09.) On" "NAME==\"~*|*\"" "" "DWG On" "")
  (Command "-layer" "filter" "_N" "_P" "All" "OFF==\"TRUE\"" "" "10.) Off" "")
  (Command "-layer" "filter" "_N" "_P" "10.) Off" "NAME==\"*|*\"" "" "Xref Off" "")
  (Command "-layer" "filter" "_N" "_P" "10.) Off" "NAME==\"~*|*\"" "" "DWG Off" "")
  (Command "-layer" "filter" "_N" "_P" "All" "PLOTTABLE==\"TRUE\"" "" "11.) Plottable" "")
  (Command "-layer" "filter" "_N" "_P" "11.) Plottable" "NAME==\"*|*\"" "" "Xref Off" "")
  (Command "-layer" "filter" "_N" "_P" "11.) Plottable" "NAME==\"~*|*\"" "" "DWG Off" "")
  (Command "-layer" "filter" "_N" "_P" "All" "PLOTTABLE==\"FALSE\"" "" "12.) Not Plottable" "")
  (Command "-layer" "filter" "_N" "_P" "12.) Not Plottable" "NAME==\"*|*\"" "" "Xref Off" "")
  (Command "-layer" "filter" "_N" "_P" "12.) Not Plottable" "NAME==\"~*|*\"" "" "DWG Off" "")

  (Command "-layer" "filter" "_N" "_P" "All" "NAME==\"*|*\"" "" "BACKGROUND" "")
  (Command "-layer" "filter" "_N" "_P" "BACKGROUND" "NAME==\"A-*\" or NAME==\"*ARCH*\"" "" "Arch" "")
  (Command "-layer" "filter" "_N" "_P" "BACKGROUND" "NAME==\"*Floorplan*\" or NAME==\"*Floor plan*\"" "" "Floorplan" "")
  (Command "-layer" "filter" "_N" "_P" "BACKGROUND" "NAME==\"*ReflectedCeilingPlan*\" or NAME==\"*Reflected Ceiling Plan*\" or NAME==\"*RCP*\"" "" "Floorplan" "")
  (Command "-layer" "filter" "_N" "_P" "BACKGROUND" "NAME==\"P-*\"" "" "Plumbing" "")
  (Command "-layer" "filter" "_N" "_P" "BACKGROUND" "NAME==\"S-*\"" "" "Struct" "")
  (Command "-layer" "filter" "_N" "_P" "BACKGROUND" "NAME==\"M-*\"" "" "HVAC" "")
  (Command "-layer" "filter" "_N" "_P" "BACKGROUND" "NAME==\"E-*\"" "" "Electrical" "")
  (Command "-layer" "filter" "_N" "_P" "BACKGROUND" "NAME==\"*GRID*\"" "" "Grid" "")
  (Command "-layer" "filter" "_N" "_P" "BACKGROUND" "NAME==\"*COLS*\"" "" "Cols" "")
  (Command "-layer" "filter" "_N" "_P" "BACKGROUND" "NAME==\"*DOOR*\"" "" "Doors" "")
  (Command "-layer" "filter" "_N" "_P" "BACKGROUND" "NAME==\"*GLAZ*\"" "" "Windows" "")
  (Command "-layer" "filter" "_N" "_P" "BACKGROUND" "NAME==\"*HRAL*\"" "" "Railing" "")
  (Command "-layer" "filter" "_N" "_P" "BACKGROUND" "NAME==\"*PAT*\"" "" "Patterns" "")
  (Command "-layer" "filter" "_N" "_P" "BACKGROUND" "NAME==\"*FURN*\"" "" "Furniture" "")
  (Command "-layer" "filter" "_N" "_P" "BACKGROUND" "NAME==\"*PAT*\"" "" "Patterns" "")
  (Command "-layer" "filter" "_N" "_P" "BACKGROUND" "NAME==\"*A-ANNO*\"" "" "Annotations" "")
  (Command "-layer" "filter" "_N" "_P" "BACKGROUND" "NAME==\"*DIM*\"" "" "Dimensions" "")

  (Command "-layer" "filter" "_N" "_P" "All" "NAME==\"*M-HVAC-*\"" "" "SERVICES" "")
  (Command "-layer" "filter" "_N" "_P" "SERVICES" "NAME==\"M-HVAC-CA*\"" "" "Combustion Air" "")
  (Command "-layer" "filter" "_N" "_P" "Combustion Air" "NAME==\"*|*\"" "" "Xref Combustion Air" "")
  (Command "-layer" "filter" "_N" "_P" "Combustion Air" "NAME==\"~*|*\"" "" "DWG Combustion Air" "")
  (Command "-layer" "filter" "_N" "_P" "SERVICES" "NAME==\"M-HVAC-EL*\"" "" "Exhaust Low Pressure" "")
  (Command "-layer" "filter" "_N" "_P" "Exhaust Low Pressure" "NAME==\"*|*\"" "" "Xref Exhaust Low Pressure" "")
  (Command "-layer" "filter" "_N" "_P" "Exhaust Low Pressure" "NAME==\"~*|*\"" "" "DWG Exhaust Low Pressure" "")
  (Command "-layer" "filter" "_N" "_P" "SERVICES" "NAME==\"M-HVAC-EM*\"" "" "Exhaust Medium Pressure" "")
  (Command "-layer" "filter" "_N" "_P" "Exhaust Medium Pressure" "NAME==\"*|*\"" "" "Xref Exhaust Medium Pressure" "")
  (Command "-layer" "filter" "_N" "_P" "Exhaust Medium Pressure" "NAME==\"~*|*\"" "" "DWG Exhaust Medium Pressure" "")
  (Command "-layer" "filter" "_N" "_P" "SERVICES" "NAME==\"M-HVAC-EH*\"" "" "Exhaust High Pressure" "")
  (Command "-layer" "filter" "_N" "_P" "Exhaust High Pressure" "NAME==\"*|*\"" "" "Xref Exhaust High Pressure" "")
  (Command "-layer" "filter" "_N" "_P" "Exhaust High Pressure" "NAME==\"~*|*\"" "" "DWG Exhaust High Pressure" "")
  (Command "-layer" "filter" "_N" "_P" "SERVICES" "NAME==\"M-HVAC-EW*\"" "" "Exhaust Welded" "")
  (Command "-layer" "filter" "_N" "_P" "Exhaust Welded" "NAME==\"*|*\"" "" "Xref Exhaust Welded" "")
  (Command "-layer" "filter" "_N" "_P" "Exhaust Welded" "NAME==\"~*|*\"" "" "DWG Exhaust Welded" "")
  (Command "-layer" "filter" "_N" "_P" "SERVICES" "NAME==\"M-HVAC-EP*\"" "" "Exhaust Air PVC" "")
  (Command "-layer" "filter" "_N" "_P" "Exhaust Air PVC" "NAME==\"*|*\"" "" "Xref Exhaust Air PVC" "")
  (Command "-layer" "filter" "_N" "_P" "Exhaust Air PVC" "NAME==\"~*|*\"" "" "DWG Exhaust Air PVC" "")
  (Command "-layer" "filter" "_N" "_P" "SERVICES" "NAME==\"M-HVAC-EI*\"" "" "Exhaust Air Inslab" "")
  (Command "-layer" "filter" "_N" "_P" "Exhaust Air Inslab" "NAME==\"*|*\"" "" "Xref Exhaust Air Inslab" "")
  (Command "-layer" "filter" "_N" "_P" "Exhaust Air Inslab" "NAME==\"~*|*\"" "" "DWG Exhaust Air Inslab" "")
  (Command "-layer" "filter" "_N" "_P" "SERVICES" "NAME==\"M-HVAC-OA*\"" "" "Outside Air" "")
  (Command "-layer" "filter" "_N" "_P" "Outside Air" "NAME==\"*|*\"" "" "Xref Outside Air" "")
  (Command "-layer" "filter" "_N" "_P" "Outside Air" "NAME==\"~*|*\"" "" "DWG Outside Air" "")
  (Command "-layer" "filter" "_N" "_P" "SERVICES" "NAME==\"M-HVAC-RL*\"" "" "Return Low Pressure" "")
  (Command "-layer" "filter" "_N" "_P" "Return Low Pressure" "NAME==\"*|*\"" "" "Xref Return Low Pressure" "")
  (Command "-layer" "filter" "_N" "_P" "Return Low Pressure" "NAME==\"~*|*\"" "" "DWG Return Low Pressure" "")
  (Command "-layer" "filter" "_N" "_P" "SERVICES" "NAME==\"M-HVAC-RM*\"" "" "Return Medium Pressure" "")
  (Command "-layer" "filter" "_N" "_P" "Return Medium Pressure" "NAME==\"*|*\"" "" "Xref Return Medium Pressure" "")
  (Command "-layer" "filter" "_N" "_P" "Return Medium Pressure" "NAME==\"~*|*\"" "" "DWG Return Medium Pressure" "")
  (Command "-layer" "filter" "_N" "_P" "SERVICES" "NAME==\"M-HVAC-RH*\"" "" "Return High Pressure" "")
  (Command "-layer" "filter" "_N" "_P" "Return High Pressure" "NAME==\"*|*\"" "" "Xref Return High Pressure" "")
  (Command "-layer" "filter" "_N" "_P" "Return High Pressure" "NAME==\"~*|*\"" "" "DWG Return High Pressure" "")
  (Command "-layer" "filter" "_N" "_P" "SERVICES" "NAME==\"M-HVAC-SL*\"" "" "Supply Low Pressure" "")
  (Command "-layer" "filter" "_N" "_P" "Supply Low Pressure" "NAME==\"*|*\"" "" "Xref Supply Low Pressure" "")
  (Command "-layer" "filter" "_N" "_P" "Supply Low Pressure" "NAME==\"~*|*\"" "" "DWG Supply Low Pressure" "")
  (Command "-layer" "filter" "_N" "_P" "SERVICES" "NAME==\"M-HVAC-SM*\"" "" "Supply Medium Pressure" "")
  (Command "-layer" "filter" "_N" "_P" "Supply Medium Pressure" "NAME==\"*|*\"" "" "Xref Supply Medium Pressure" "")
  (Command "-layer" "filter" "_N" "_P" "Supply Medium Pressure" "NAME==\"~*|*\"" "" "DWG Supply Medium Pressure" "")
  (Command "-layer" "filter" "_N" "_P" "SERVICES" "NAME==\"M-HVAC-SU*\"" "" "Supply High Pressure" "")
  (Command "-layer" "filter" "_N" "_P" "Supply High Pressure" "NAME==\"*|*\"" "" "Xref Supply High Pressure" "")
  (Command "-layer" "filter" "_N" "_P" "Supply High Pressure" "NAME==\"~*|*\"" "" "DWG Supply High Pressure" "")
  (Command "-layer" "filter" "_N" "_P" "SERVICES" "NAME==\"M-HVAC-SH*\"" "" "Supply Underground" "")
  (Command "-layer" "filter" "_N" "_P" "Supply Underground" "NAME==\"*|*\"" "" "Xref Supply Underground" "")
  (Command "-layer" "filter" "_N" "_P" "Supply Underground" "NAME==\"~*|*\"" "" "DWG Supply Underground" "")
  (Command "-layer" "filter" "_N" "_P" "SERVICES" "NAME==\"M-HVAC-TA*\"" "" "Transfer Air" "")
  (Command "-layer" "filter" "_N" "_P" "Transfer Air" "NAME==\"*|*\"" "" "Xref Transfer Air" "")
  (Command "-layer" "filter" "_N" "_P" "Transfer Air" "NAME==\"~*|*\"" "" "DWG Transfer Air" "")
  (Command "-layer" "filter" "_N" "_P" "SERVICES" "NAME==\"M-HVAC-TS*\"" "" "Trimble Seismic" "")
  (Command "-layer" "filter" "_N" "_P" "Trimble Seismic" "NAME==\"*|*\"" "" "Xref Trimble Seismic" "")
  (Command "-layer" "filter" "_N" "_P" "Trimble Seismic" "NAME==\"~*|*\"" "" "DWG Trimble Seismic" "")

  (Command "-layer" "filter" "_N" "_P" "All" "NAME==\"M-HVAC-*-A\" or NAME==\"M-HVAC-*-D\" or NAME==\"M-HVAC-*-I\" or NAME==\"M-HVAC-*-R\" or NAME==\"M-HVAC-*-EXST\"" "" "STATUS" "")
  (Command "-layer" "filter" "_N" "_P" "STATUS" "NAME==\"M-HVAC-*-A\"" "" "Approved" "")
  (Command "-layer" "filter" "_N" "_P" "STATUS" "NAME==\"M-HVAC-*-D\"" "" "Design" "")
  (Command "-layer" "filter" "_N" "_P" "STATUS" "NAME==\"M-HVAC-*-I\"" "" "Issued" "")
  (Command "-layer" "filter" "_N" "_P" "STATUS" "NAME==\"M-HVAC-*-R\"" "" "Revised" "")
  (Command "-layer" "filter" "_N" "_P" "STATUS" "NAME==\"M-HVAC-*-EXST\"" "" "Existing" "")

  (Command "-layer" "filter" "_N" "_P" "All" "NAME==\"M-HVAC-*-NUMB-*\" or NAME==\"M-HVAC-*-SIZE-*\" or NAME==\"M-HVAC-*-ALIA-*\" or NAME==\"M-HVAC-*-LEVE-*\" or NAME==\"M-HVAC-*-DIMN-*\" or NAME==\"M-HVAC-*-OSET-*\" or NAME==\"*TEXT*\" or NAME==\"*GTXT*\"" "" "TEXT" "")
  (Command "-layer" "filter" "_N" "_P" "TEXT" "NAME==\"M-HVAC-*-NUMB-*\" or NAME==\"M-HVAC-*-SIZE-*\" or NAME==\"M-HVAC-*-ALIA-*\" or NAME==\"M-HVAC-*-LEVE-*\" or NAME==\"M-HVAC-*-DIMN-*\" or NAME==\"M-HVAC-*-OSET-*\"" "" "All CADmep Text" "")
  (Command "-layer" "filter" "_N" "_P" "TEXT" "NAME==\"M-HVAC-*-SIZE-*\" or NAME==\"M-HVAC-*-ALIA-*\" or NAME==\"M-HVAC-*-LEVE-*\" or NAME==\"M-HVAC-*-DIMN-*\" or NAME==\"M-HVAC-*-OSET-*\"" "" "Numbers Excluded" "")
  (Command "-layer" "filter" "_N" "_P" "TEXT" "NAME==\"M-HVAC-*-ALIA-*\"" "" "Aliases" "")
  (Command "-layer" "filter" "_N" "_P" "TEXT" "NAME==\"M-HVAC-*-LEVE-*\"" "" "Elevations" "")
  (Command "-layer" "filter" "_N" "_P" "TEXT" "NAME==\"M-HVAC-*-DIMN-*\"" "" "Lengths" "")
  (Command "-layer" "filter" "_N" "_P" "TEXT" "NAME==\"M-HVAC-*-NUMB-*\"" "" "Numbers" "")
  (Command "-layer" "filter" "_N" "_P" "TEXT" "NAME==\"M-HVAC-*-OSET-*\"" "" "Offsets" "")
  (Command "-layer" "filter" "_N" "_P" "TEXT" "NAME==\"M-HVAC-*-SIZE-*\"" "" "Sizes" "")
  (Command "-layer" "filter" "_N" "_P" "TEXT" "NAME==\"*GTXT*\" or NAME==\"*TEXT*\"" "" "Drawing Text" "")

  (Command "-layer" "filter" "_N" "_P" "All" "NAME==\"*GDIM*\"" "" "Drawing Dimensions" "")
  (Command "-layer" "filter" "_N" "_P" "All" "NAME==\"M-HVAC-*-ISRT-*\"" "" "Trimble Points" "")
  (Command "-layer" "filter" "_N" "_P" "All" "NAME==\"M-HVAC-*-BKOT-*\"" "" "Blockouts" "")
  (Command "-layer" "filter" "_N" "_P" "All" "NAME==\"M-HVAC-*HG-*\"" "" "Hangers" "")
  (Command "-layer" "filter" "_N" "_P" "All" "NAME==\"M-AMC-TAGS-*\"" "" "Tags" "")
  (Command "-layer" "filter" "_N" "_P" "All" "NAME==\"M-HVAC-*FS-*\"" "" "Floor Support" "")
  (Command "-layer" "filter" "_N" "_P" "All" "NAME==\"M-HVAC-*-HIDE-*\"" "" "Hidden Lines" "")
  (Command "-layer" "filter" "_N" "_P" "All" "NAME==\"M-AMC-*-KYPL-*\"" "" "Keyplan Layers" "")
  (princ)
);end defun
;**************************************************************************************************************************************************
(defun c:ALL_ATT2TEXT ()
  (setq i 0
        sset (ssget "X" '((0 . "ATTDEF"))));end setq
  (if(not(= sset nil))
    (progn
      (OUTSIDE_LOOP_VARIABLES sset)
      (while(< i limit)
        (INSIDE_LOOP_VARIABLES sset i)
        (command "pselect" ent "")
        (command "TXT2MTXT")
        (setq i (1+ i))
      );end while
    );progn
  );end if
  (END_ROUTINE)
);end defun
;**************************************************************************************************************************************************
(defun GET_RELATIVE_ELEVATIONS ( / )
  (if(not(= ent nil))
    (progn
      (setq relativeTopElevation nil
            relativeBottomElevation nil
            relativeCenterlineElevation nil
            floorSection nil)
      (command "CAL" "translatedC1=w2u(c1xyz)")
      (command "CAL" "translatedC2=w2u(c2xyz)")
      (setq translatedc1x (car translatedC1)
            translatedc1y (cadr translatedC1)
            translatedc1z (caddr translatedC1)
            translatedc2x (car translatedC2)
            translatedc2y (cadr translatedC2)
            translatedc2z (caddr translatedC2)
      );end setq
      (command ".copy" ent "" (list 0 0 c1z) (list 0 0 0))
      (command "UCS" "WORLD")
      (setq itemCopy (ssadd (entlast)))
      (settext itemCopy 4 "on")
      (command "explode" itemCopy)
      (setq debris (ssget "_P")
            floorSection (+(/ c1depth 2)(FORCE_POSITIVE(distof(cdr(assoc 1(entget(entnext(ssname(ssget "P" '((2 . "ELEV")))0)))))))))
      (command "erase" debris "")
      (setq relativeTopElevation (- topElevation floorSection)
            relativeBottomElevation (- bottomElevation floorSection)
            relativeCenterlineElevation (- (+ bottomElevation (/ c1depth 2)) floorSection))
      (RESET_UCS)
    );progn
    (progn(terpri)(princ "Nil entity skipped...")(princ));progn
  );end if
  (END_ROUTINE)
);end defun
;**************************************************************************************************************************************************
(defun c:Blockout_Text ()
  (command "erase" (ssget "X" '((2 . "BLOCKOUT_TEXT"))) "")
  (setq i 0
        orgDIMZIN (getvar "DIMZIN")
        sset (ssget "X" '((0 . "MAPS_SOLID")
                               (-4 . "<OR")
                                 (300 . "Supply Blockout")
                                 (300 . "Return-Transfer Blockout")
                                 (300 . "Exhaust Blockout")
                               (-4 . "OR>"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setvar "DIMZIN" 12)
  (while(< i limit)
    (INSIDE_LOOP_VARIABLES sset i)
    (GET_RELATIVE_ELEVATIONS)
    (setq BOSize (strcat "BO Size: " (rtos dim5 2 2) "x" (rtos dim6 2 2))
          BtmElev (strcat "BTM Elev: " (rtos(ROUND(- relativeBottomElevation dim8)0.5)3 2)))
    (if(= BOSize nil)(setq BOSize ""));end if
    (if(= BtmElev nil)(setq BtmElev ""));end if
    (initcommandversion 2)
    (setvar 'attdia 0)
    (setvar 'attreq 0)
    (command "_.-insert" block_BlockoutTextLink (list
                                                  (+(if(not(= translatedc2x nil))translatedc2x translatedc1x)1)
                                                  (+(if(not(= translatedc2y nil))translatedc2y translatedc1y)4)
                                                  (ROUNDUP(if(not(= translatedc2z nil))translatedc2z translatedc1z) 12000))
                                                "" "" "")
    (setvar 'attdia 1)
    (setvar 'attreq 1)
    (CHANGE_ENTLAST_ATTRIBUTE "BO_SIZE" BOSize)
    (CHANGE_ENTLAST_ATTRIBUTE "BTM_ELEV" BtmElev)
  (setq i (1+ i))
  );end while
  (setvar "DIMZIN" orgDIMZIN)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Get_SSET ()
  (setq i 0
        sset (ssget '((0 . "MAPS_SOLID"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (INSIDE_LOOP_VARIABLES sset i)
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Get_SSET_i ()
  (if(not(= sset nil))
    (progn
      (if(or(= i nil)(>= i limit))(progn(setq i (getint "Enter an \"integer\" as the desired selection set member index number:  "))(terpri)(setq iReset T)))
      (INSIDE_LOOP_VARIABLES sset i)
      (c:SELECT_ENTITY)
      (if(= iReset T)(setq i nil))
    );progn
    (progn
      (terpri)
      (princ "You must first establish your selection set.")
      (terpri)
      (princ)
      (c:Get_SSET)
    );progn
  );end if
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Loop_SSET_Entities ()
  (OUTSIDE_LOOP_VARIABLES sset)
  (setq i 0);end setq
  (while(< i limit)
    (setq iReset nil)
    (c:Get_SSET_i)
    (REDRAW)
    (terpri)(princ i)(princ(strcat " of " (rtos limit 2 0)))
    (setq i (1+ i))
  );end while
(END_ROUTINE));end defun
;**************************************************************************************************************************************************
(defun c:Coordinate ()
  (setq Coordinate (getpoint)
        orgDIMZIN (getvar "DIMZIN"))
  (setvar "DIMZIN" 12)
  (terpri)
  (princ(strcat "x = " (rtos(car Coordinate)2 24)))
  (terpri)
  (princ(strcat "y = " (rtos(cadr Coordinate)2 24)))
  (terpri)
  (princ(strcat "z = " (rtos(caddr Coordinate)2 24)))
  (terpri)(princ)
  (setvar "DIMZIN" orgDIMZIN)
(END_ROUTINE));end defun

;**************************************************************************************************************************************************
;**************************************************************************************************************************************************
;**************************************************************************************************************************************************
;**************************************************************************************************************************************************
;**************************************************************************************************************************************************












;**************************************************************************************************************************************************
(defun c:Select_Similar_SourceFileName&Description ()
  (setq i 0
        sset (ssget "_X" '((0 . "INSERT"))))
  (OUTSIDE_LOOP_VARIABLES nil)
  (INSIDE_LOOP_VARIABLES sset i)
  (if(wcmatch (cdr(nth 9 entlist)) "LEVEL 3_B-outs")
    (command "erase" SSentity "")
  );end if
  (princ)
);end defun





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
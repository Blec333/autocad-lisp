;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;


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
(defun c:LOAD_LCC ( / )
  (vl-load-com)
  (GIVE_ME_STARTUP_CODE)
  (vl-load-all masterLSPLink)
  (SETUP_LCC)
  (command "OPTIONS")
);end defun
;**************************************************************************************************************************************************
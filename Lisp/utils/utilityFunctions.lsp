
(defun FILE_OPEN? (file / fileTest)
  (cond((setq fileTest (open file "a"))
        (close fileTest)))
        (not fileTest)
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
;**************************************************************************************************************************************************
(defun ESC ()
(vl-load-com)
(setq doc (vla-get-ActiveDocument (vlax-get-acad-object)))
(vla-SendCommand doc (chr 27))
(END_ROUTINE));end defun
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
;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

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
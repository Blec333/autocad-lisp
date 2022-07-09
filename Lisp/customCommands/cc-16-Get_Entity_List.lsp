;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

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
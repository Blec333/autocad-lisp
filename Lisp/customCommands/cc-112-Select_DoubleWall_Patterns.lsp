;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

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
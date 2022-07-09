;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

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
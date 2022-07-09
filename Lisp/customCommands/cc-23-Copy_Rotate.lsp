;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

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
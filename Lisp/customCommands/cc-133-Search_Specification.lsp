;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

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
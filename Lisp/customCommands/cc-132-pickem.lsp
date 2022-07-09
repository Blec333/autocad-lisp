;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:pickem (/ pick pickSS pickL1 pickL2)
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
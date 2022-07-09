;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

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
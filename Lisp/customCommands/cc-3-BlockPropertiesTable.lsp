;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun C:BlockPropertiesTable (/ blnOut entBlock entItem entSelection lstENtity lstEntity2 objSelection )
(if (setq ssSelection (ssget ":S:E" (list (cons 0 "INSERT"))))
(progn
(setq entSelection (ssname ssSelection 0)
objSelection (vlax-ename->vla-object entSelection)
strBlockName (vla-get-name objSelection)
entBlock (tblobjname "block" strBlockName)
entItem entBlock
)
(while (and (setq entItem (entnext entItem))(not blnOut))
(setq lstEntity (entget entItem))
(if (and (assoc 102 lstEntity)
(setq dprPair (assoc 330 lstEntity))
(setq lstEntity2 (entget (cdr dprPair))) 
(= (cdr (assoc 0 lstEntity2)) "BLOCKPROPERTIESTABLE")
)
(progn
(setq blnOut T)b
(print lstEntity2)
)
)
)
)
)
(princ)
)
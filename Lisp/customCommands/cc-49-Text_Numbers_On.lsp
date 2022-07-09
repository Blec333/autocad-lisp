;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Text_Numbers_On ()
  (settext (ssget (mapfilter "#39 = 330 | #39 = 8 | #39 = 7 | #39 = 505 | #39 = 20 | #39 = 30 | #39 = 68 | #39 = 2 | #39 = 838 | #39 = 866 | #107 = E.C.")) 1 "on")
  (print "Numbers On")
  (princ)
(END_ROUTINE));end defun
;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Layout_Prep ()
  (setvar "cmdecho" 0)
  (print "Do you want your 2D drawing scaled down?")(princ)(terpri)
  (print "1: Yes - Drawing will be scaled.")(princ)(terpri)
  (print "2: No - Drawing will not be scaled.")(princ)(terpri)
  (initget 0 "Yes No")
  (setq scaleTest (getkword "\nChoose: [Yes/No] <No>?:"))
  (if (= scaleTest nil)
    (setq scaleTest "No")
  );end if
  (terpri)
  (print "Do you want explode blocks to find nested layout points?")(princ)(terpri)
  (print "1: Yes - Blocked points will be evaluated.")(princ)(terpri)
  (print "2: No - Blocked points are ignored.")(princ)(terpri)
  (initget 0 "Yes No")
  (setq nestedPointTest (getkword "\nChoose: [Yes/No] <No>?:"))
  (if (= nestedPointTest nil)
    (setq nestedPointTest "No")
  );end if
  (c:Improved_ReNumber)
  (c:Improved_Point_Export)
  (c:Create_2D)
  (startapp excel (strcat "\"" pointFileCSVLoc "\""))
(END_ROUTINE));end defun
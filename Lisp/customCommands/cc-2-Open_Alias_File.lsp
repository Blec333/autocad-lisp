;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Open_Alias_File ()
  (OUTSIDE_LOOP_VARIABLES nil)
  (startapp "notepad" aliasLink)
);end defun
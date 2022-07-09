;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:3D ()
  (setq sset (ssget '((0 . "MAPS_SOLID"))))
  (command "pselect" sset "")
  );end defun;
;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Rotate_Around_Attacher () 
  ;;;; RA = ROTATE AROUND ARROW (3D R0TATE USING ATTACHER) - WILL ROTATE AT POSITIVE USER INPUT DEGREE AROUND THE CONNECTOR AXIS OF THE SELECTED OPENING
  (command "._attacher" pause "")
  (command "._rotateatend" pause "")
  (command "._attachoff")
(princ)
(END_ROUTINE));end defun
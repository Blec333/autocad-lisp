;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Rotate_FSD_Motor () 
  ;;;; 90 = ROTATE AROUND ARROW (3D R0TATE USING ATTACHER) - WILL ROTATE AT POSITIVE 90 DEGREE INCREMENTS AROUND THE CONNECTOR AXIS OF THE SELECTED OPENING
  (command "._attacher" pause "")
  (command "._rotateatend" "90" "")
  (command "._attachoff")
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "if (wildcard(item.dim[1].name,\"Width\") = 1) and (wildcard(item.dim[2].name,\"Depth\") = 1) then" writeToVBCode)
(write-line "dim oldWidth = item.dim[1].value" writeToVBCode)
(write-line "dim oldDepth = item.dim[2].value" writeToVBCode)
(write-line "item.dim[1].value = oldDepth" writeToVBCode)
(write-line "item.dim[2].value = oldWidth" writeToVBCode)
(write-line "end if" writeToVBCode)
  (close writeToVBCode)
  (command "pselect" "p" "")
  (Executescript vbCode)
  (vl-file-delete vbCode)
(princ)
(END_ROUTINE));end defun
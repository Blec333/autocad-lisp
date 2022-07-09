;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Flip ()
  ;;;; FLIP = FLIP THE ITEM AROUND THE CHOSEN OPENING'S AXIS
  (prompt "Apply the attacher arrow to the opening axis that you want to flip around.")(princ)
  (command "._attacher" pause "")
  (command "._rotateatend" "180" "")
  (command "._attachoff")
  (prompt "Item was flipped around the center axis of the chosen opening.")(princ)
  (princ)
(END_ROUTINE));end defun
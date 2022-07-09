;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Get_Keyboard_ASCII_Character ( / code)
  (prompt "\nEnter a single character: ")
  
  (setq code (grread))

  (if (= 2 (car code))
    (progn
      (prompt (strcat "\nCharacter entered was: " (chr (cadr code))))
      (prompt (strcat "\nASCII code: " (itoa (cadr code))))
    )
    (prompt "\nInput was not from the keyboard.")
  )
 (princ)
(END_ROUTINE));end defun
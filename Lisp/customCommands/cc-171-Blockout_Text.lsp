;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Blockout_Text ()
  (command "erase" (ssget "X" '((2 . "BLOCKOUT_TEXT"))) "")
  (setq i 0
        orgDIMZIN (getvar "DIMZIN")
        sset (ssget "X" '((0 . "MAPS_SOLID")
                               (-4 . "<OR")
                                 (300 . "Supply Blockout")
                                 (300 . "Return-Transfer Blockout")
                                 (300 . "Exhaust Blockout")
                               (-4 . "OR>"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (setvar "DIMZIN" 12)
  (while(< i limit)
    (INSIDE_LOOP_VARIABLES sset i)
    (GET_RELATIVE_ELEVATIONS)
    (setq BOSize (strcat "BO Size: " (rtos dim5 2 2) "x" (rtos dim6 2 2))
          BtmElev (strcat "BTM Elev: " (rtos(ROUND(- relativeBottomElevation dim8)0.5)3 2)))
    (if(= BOSize nil)(setq BOSize ""));end if
    (if(= BtmElev nil)(setq BtmElev ""));end if
    (initcommandversion 2)
    (setvar 'attdia 0)
    (setvar 'attreq 0)
    (command "_.-insert" block_BlockoutTextLink (list
                                                  (+(if(not(= translatedc2x nil))translatedc2x translatedc1x)1)
                                                  (+(if(not(= translatedc2y nil))translatedc2y translatedc1y)4)
                                                  (ROUNDUP(if(not(= translatedc2z nil))translatedc2z translatedc1z) 12000))
                                                "" "" "")
    (setvar 'attdia 1)
    (setvar 'attreq 1)
    (CHANGE_ENTLAST_ATTRIBUTE "BO_SIZE" BOSize)
    (CHANGE_ENTLAST_ATTRIBUTE "BTM_ELEV" BtmElev)
  (setq i (1+ i))
  );end while
  (setvar "DIMZIN" orgDIMZIN)
(END_ROUTINE));end defun
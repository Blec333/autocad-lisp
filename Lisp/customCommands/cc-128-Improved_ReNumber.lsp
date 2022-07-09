;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Improved_ReNumber (/)
  ; IMPROVED RENUMBER
  (vl-load-com)
  (c:World_View)
  (setvar "cmdecho" 0)
  (setq sset (ssget "X"
             '(
              (-4 . "<AND")
                (0 . "MAPS_SOLID")
                (-4 . "<NOT")
                  (0 . "INSERT")
                (-4 . "NOT>")
              (-4 . "AND>")
              );close quote func
             );end ssget
        i 0
        c 1
        e 1
        o 1
        r 1
        s 1
        tr 1
        misc 1
        h 1
        bo 1
        ep 1
        fs 1
        tp 1
        misc3d (ssadd)
        non3d (ssget "X" '((-4 . "<NOT")(0 . "MAPS_SOLID")(-4 . "NOT>"))));end setq
  (OUTSIDE_LOOP_VARIABLES sset)
  (write-line "item.number = item.customdata[1].value" writeToVBCode)
  (close writeToVBCode)
    (while (< i limit);Start the Loop
      (INSIDE_LOOP_VARIABLES sset i)
      (if(and(wcmatch (strcase ItemService) "*COMBUSTION*")
         (not(or allSupport
                 trimblePoint
                 blockout
                 roundBlockout
                 (wcmatch(strcase ItemSourceFileName)(strcase "EQUIPMENT PAD"))
                 (wcmatch(strcase ItemSourceFileName)(strcase "FLOOR BLOCK OUT"))
                 (wcmatch(strcase ItemSourceFileName)(strcase "WALL BLOCK OUT")))))
        (setq prefix "C"
	      itm# (rtos c 2 0)
              c (1+ c))
        (if(and(wcmatch (strcase ItemService) "*EXHAUST*")
           (not(or allSupport
                   trimblePoint
                   blockout
                   roundBlockout
                   (wcmatch(strcase ItemSourceFileName)(strcase "EQUIPMENT PAD"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "FLOOR BLOCK OUT"))
                   (wcmatch(strcase ItemSourceFileName)(strcase "WALL BLOCK OUT")))))
          (setq prefix "E"
	        itm# (rtos e 2 0)
                e (1+ e))
          (if(and(wcmatch (strcase ItemService) "*OUTSIDE*")
             (not(or allSupport
                     trimblePoint
                     blockout
                     roundBlockout
                     (wcmatch(strcase ItemSourceFileName)(strcase "EQUIPMENT PAD"))
                     (wcmatch(strcase ItemSourceFileName)(strcase "FLOOR BLOCK OUT"))
                     (wcmatch(strcase ItemSourceFileName)(strcase "WALL BLOCK OUT")))))
            (setq prefix "O"
	          itm# (rtos o 2 0)
                  o (1+ o))
            (if(and(wcmatch (strcase ItemService) "*RETURN*")
               (not(or allSupport
                       trimblePoint
                       blockout
                       roundBlockout
                       (wcmatch(strcase ItemSourceFileName)(strcase "EQUIPMENT PAD"))
                       (wcmatch(strcase ItemSourceFileName)(strcase "FLOOR BLOCK OUT"))
                       (wcmatch(strcase ItemSourceFileName)(strcase "WALL BLOCK OUT")))))
              (setq prefix "R"
	            itm# (rtos r 2 0)
                    r (1+ r))
              (if(and(wcmatch (strcase ItemService) "*SUPPLY*")
                 (not(or allSupport
                         trimblePoint
                         blockout
                         roundBlockout
                         (wcmatch(strcase ItemSourceFileName)(strcase "EQUIPMENT PAD"))
                         (wcmatch(strcase ItemSourceFileName)(strcase "FLOOR BLOCK OUT"))
                         (wcmatch(strcase ItemSourceFileName)(strcase "WALL BLOCK OUT")))))
                (setq prefix "S"
	              itm# (rtos s 2 0)
                      s (1+ s))
                (if(and(wcmatch (strcase ItemService) "*TRANSFER*")
                   (not(or allSupport
                           trimblePoint
                           blockout
                           roundBlockout
                           (wcmatch(strcase ItemSourceFileName)(strcase "EQUIPMENT PAD"))
                           (wcmatch(strcase ItemSourceFileName)(strcase "FLOOR BLOCK OUT"))
                           (wcmatch(strcase ItemSourceFileName)(strcase "WALL BLOCK OUT")))))
                  (setq prefix "T"
	                itm# (rtos tr 2 0)
                        tr (1+ tr))
                    (if hangerSupport&Seismic
                      (setq prefix "H"
	                    itm# (rtos h 2 0)
                            h (1+ h))
                      (if trimblePoint
                        (setq prefix "TP"
	                      itm# (rtos tp 2 0)
                              tp (1+ tp))
                        (if floorSupport
                          (setq prefix "FS"
	                        itm# (rtos fs 2 0)
                                fs (1+ fs))
                          (if(or blockout roundBlockout (wcmatch(strcase ItemSourceFileName)(strcase "FLOOR BLOCK OUT"))(wcmatch(strcase ItemSourceFileName)(strcase "WALL BLOCK OUT")))
                            (setq prefix "BO"
	                          itm# (rtos bo 2 0)
                                  bo (1+ bo))
                            (if(wcmatch(strcase ItemSourceFileName)(strcase "EQUIPMENT PAD"))
                              (setq prefix "EP"
	                            itm# (rtos ep 2 0)
                                    ep (1+ ep))
                  (if(not(or(wcmatch (strcase ItemService) "*COMBUSTION*")
                            (wcmatch (strcase ItemService) "*EXHAUST*")
                            (wcmatch (strcase ItemService) "*OUTSIDE*")
                            (wcmatch (strcase ItemService) "*RETURN*")
                            (wcmatch (strcase ItemService) "*SUPPLY*")
                            (wcmatch (strcase ItemService) "*TRANSFER*")
                            (wcmatch (strcase ItemService) "*TRIMBLE*")))
                    (setq prefix ""
	                  itm# (rtos misc 2 0)
                          misc (1+ misc))
      ) ) ) ) ) ) ) ) ) ) ) );end ifs
      (if(= prefix nil)(setq prefix ""))
      (if(= itm# nil)(setq itm# ""))
      (vlax-put-property vla "CustomData" (strcat itemCustomData1Name " = " prefix itm# ","))
      (executescript vbCode SSentity)
    (setq i (1+ i));increment the main loop
  );endwhile
  (vl-file-delete vbCode)
(END_ROUTINE));end defun
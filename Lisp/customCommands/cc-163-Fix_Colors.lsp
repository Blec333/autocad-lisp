;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Fix_Colors ()
  (setq oldCurrentLayer (getvar "CLAYER")
        supplyLowMasterColor 127
        supplyMediumMasterColor 137
        supplyHighMasterColor 147
        supplyUndergroundMasterColor 165
        returnLowMasterColor 217
        returnMediumMasterColor 227
        returnHighMasterColor 237
        exhaustLowMasterColor 17
        exhaustMediumMasterColor 27
        exhaustHighMasterColor 37
        exhaustInslabMasterColor 17
        exhaustPVCMasterColor 197
        combustionAirMasterColor 67
        transferAirMasterColor 77
        outsideAirMasterColor 87
        canvasMasterColor "WHITE"
        accessZoneMasterColor "CYAN"
        accessDoorMasterColor "BLUE"
        blockoutMasterColor "BLUE"
        steelMasterColor 46
        seismicMasterColor 55
        defaultMissedServiceType "WHITE"
        supplyTagColor 126
        returnTagColor 224
        exhaustTagColor 24
        weldedTagColor 44
        transferTagColor 77
        outsideTagColor 86
        combustionTagColor 66
        equipmentTagColor 152
        dimensionColor 160
        textColor 150
  );end setq
  (tblnext "layer" T)
  (initcommandversion 1)
  (while(setq evalLayer (cdr(assoc 2 (tblnext "layer"))))
    (setq -1MasterColorTest (or(wcmatch evalLayer "*-OINS-*")
                               (wcmatch evalLayer "*-IINS-*")
                               (wcmatch evalLayer "*-HIDE-*")
                               (wcmatch evalLayer "*-SYMB-*")
                               (wcmatch evalLayer "*-ALIA-*")
                               (wcmatch evalLayer "*-DIMN-*")
                               (wcmatch evalLayer "*-LEVE-*")
                               (wcmatch evalLayer "*-NUMB-*")
                               (wcmatch evalLayer "*-OSET-*")
                               (wcmatch evalLayer "*-SIZE-*")
                            );or
          MissedServiceTypeTest
                            (or
                               (wcmatch evalLayer "-OINS-*")
                               (wcmatch evalLayer "-IINS-*")
                               (wcmatch evalLayer "-HIDE-*")
                               (wcmatch evalLayer "-SYMB-*")
                               (wcmatch evalLayer "-ALIA-*")
                               (wcmatch evalLayer "-DIMN-*")
                               (wcmatch evalLayer "-LEVE-*")
                               (wcmatch evalLayer "-NUMB-*")
                               (wcmatch evalLayer "-OSET-*")
                               (wcmatch evalLayer "-SIZE-*")
                               (wcmatch evalLayer "-3DOB*")
                               (wcmatch evalLayer "-2DOB*")
                            );or
    );end setq
  (if MissedServiceTypeTest
    (command "LAYER" "COLOR" defaultMissedServiceType evalLayer "")
    (if(wcmatch evalLayer "M-HVAC-CNVS*")
      (command "LAYER" "COLOR" canvasMasterColor evalLayer "")
      (if(wcmatch evalLayer "M-HVAC-ACZN*")
        (command "LAYER" "COLOR" accessZoneMasterColor evalLayer "")
        (if(wcmatch evalLayer "M-HVAC-ACDR*")
          (command "LAYER" "COLOR" accessDoorMasterColor evalLayer "")
          (if(wcmatch evalLayer "M-HVAC-BKOT*")
            (command "LAYER" "COLOR" blockoutMasterColor evalLayer "")
            (if(wcmatch evalLayer "M-HVAC-STEL*")
              (command "LAYER" "COLOR" (rtos steelMasterColor 2 0) evalLayer "")
              (if(wcmatch evalLayer "M-HVAC-ANGL*")
                (command "LAYER" "COLOR" (rtos steelMasterColor 2 0) evalLayer "")
                (if(wcmatch evalLayer "M-HVAC-SEIS*")
                  (command "LAYER" "COLOR" (rtos seismicMasterColor 2 0) evalLayer "")
                ;(if(wcmatch evalLayer "M-AMC-TEXT*")
                  ;(command "LAYER" "COLOR" (rtos textColor 2 0) evalLayer "")
                ;(if(wcmatch evalLayer "M-AMC-GTXT-USER*")
                  ;(command "LAYER" "COLOR" (rtos textColor 2 0) evalLayer "")
                ;(if(wcmatch evalLayer "M-AMC-GDIM-USER*")
                  ;(command "LAYER" "COLOR" (rtos dimensionColor 2 0) evalLayer "")
  (if(wcmatch evalLayer "M-AMC-TAGS-SPLY")
    (command "LAYER" "COLOR" (rtos supplyTagColor 2 0) evalLayer "")
    (if(wcmatch evalLayer "M-AMC-TAGS-RTRN")
      (command "LAYER" "COLOR" (rtos returnTagColor 2 0) evalLayer "")
      (if(wcmatch evalLayer "M-AMC-TAGS-EXHA")
        (command "LAYER" "COLOR" (rtos exhaustTagColor 2 0) evalLayer "")
        (if(wcmatch evalLayer "M-AMC-TAGS-EWLD")
          (command "LAYER" "COLOR" (rtos weldedTagColor 2 0) evalLayer "")
          (if(wcmatch evalLayer "M-AMC-TAGS-XFER")
            (command "LAYER" "COLOR" (rtos transferTagColor 2 0) evalLayer "")
            (if(wcmatch evalLayer "M-AMC-TAGS-OUTA")
              (command "LAYER" "COLOR" (rtos outsideTagColor 2 0) evalLayer "")
              (if(wcmatch evalLayer "M-AMC-TAGS-CBST")
                (command "LAYER" "COLOR" (rtos combustionTagColor 2 0) evalLayer "")
                (if(wcmatch evalLayer "M-AMC-TAGS-EQPM")
                  (command "LAYER" "COLOR" (rtos equipmentTagColor 2 0) evalLayer "")
    (if(wcmatch evalLayer "M-HVAC-SLHG*")
      (command "LAYER" "COLOR" (rtos(- supplyLowMasterColor 4) 2 0) evalLayer "")
      (if(wcmatch evalLayer "M-HVAC-SLDL*")
        (command "LAYER" "COLOR" (rtos(- supplyLowMasterColor 7) 2 0) evalLayer "")
        (if(or(wcmatch evalLayer "M-HVAC-SLDE*")(and(wcmatch evalLayer "M-HVAC-SL*")-1MasterColorTest))
          (command "LAYER" "COLOR" (rtos(- supplyLowMasterColor 1) 2 0) evalLayer "")
          (if(and(wcmatch evalLayer "M-HVAC-SL*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
            (command "LAYER" "COLOR" (rtos supplyLowMasterColor 2 0) evalLayer "")
            (if(wcmatch evalLayer "M-HVAC-SMHG*")
              (command "LAYER" "COLOR" (rtos(- supplyMediumMasterColor 4) 2 0) evalLayer "")
              (if(wcmatch evalLayer "M-HVAC-SMDL*")
                (command "LAYER" "COLOR" (rtos(- supplyMediumMasterColor 7) 2 0) evalLayer "")
                (if(or(wcmatch evalLayer "M-HVAC-SMDE*")(and(wcmatch evalLayer "M-HVAC-SM*")-1MasterColorTest))
                  (command "LAYER" "COLOR" (rtos(- supplyMediumMasterColor 1) 2 0) evalLayer "")
                  (if(and(wcmatch evalLayer "M-HVAC-SM*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
                    (command "LAYER" "COLOR" (rtos supplyMediumMasterColor 2 0) evalLayer "")
                    (if(wcmatch evalLayer "M-HVAC-SHHG*")
                      (command "LAYER" "COLOR" (rtos(- supplyHighMasterColor 4) 2 0) evalLayer "")
                      (if(wcmatch evalLayer "M-HVAC-SHDL*")
                        (command "LAYER" "COLOR" (rtos(- supplyHighMasterColor 7) 2 0) evalLayer "")
                        (if(or(wcmatch evalLayer "M-HVAC-SHDE*")(and(wcmatch evalLayer "M-HVAC-SH*")-1MasterColorTest))
                          (command "LAYER" "COLOR" (rtos(- supplyHighMasterColor 1) 2 0) evalLayer "")
                          (if(and(wcmatch evalLayer "M-HVAC-SH*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
                            (command "LAYER" "COLOR" (rtos supplyHighMasterColor 2 0) evalLayer "")
    (if(wcmatch evalLayer "M-HVAC-RLHG*")
      (command "LAYER" "COLOR" (rtos(- returnLowMasterColor 4) 2 0) evalLayer "")
      (if(wcmatch evalLayer "M-HVAC-RLDL*")
        (command "LAYER" "COLOR" (rtos(- returnLowMasterColor 7) 2 0) evalLayer "")
        (if(or(wcmatch evalLayer "M-HVAC-RLDE*")(and(wcmatch evalLayer "M-HVAC-RL*")-1MasterColorTest))
          (command "LAYER" "COLOR" (rtos(- returnLowMasterColor 1) 2 0) evalLayer "")
          (if(and(wcmatch evalLayer "M-HVAC-RL*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
            (command "LAYER" "COLOR" (rtos returnLowMasterColor 2 0) evalLayer "")
            (if(wcmatch evalLayer "M-HVAC-RMHG*")
              (command "LAYER" "COLOR" (rtos(- returnMediumMasterColor 4) 2 0) evalLayer "")
              (if(wcmatch evalLayer "M-HVAC-RMDL*")
                (command "LAYER" "COLOR" (rtos(- returnMediumMasterColor 7) 2 0) evalLayer "")
                (if(or(wcmatch evalLayer "M-HVAC-RMDE*")(and(wcmatch evalLayer "M-HVAC-RM*")-1MasterColorTest))
                  (command "LAYER" "COLOR" (rtos(- returnMediumMasterColor 1) 2 0) evalLayer "")
                  (if(and(wcmatch evalLayer "M-HVAC-RM*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
                    (command "LAYER" "COLOR" (rtos returnMediumMasterColor 2 0) evalLayer "")
                    (if(wcmatch evalLayer "M-HVAC-RHHG*")
                      (command "LAYER" "COLOR" (rtos(- returnHighMasterColor 4) 2 0) evalLayer "")
                      (if(wcmatch evalLayer "M-HVAC-RHDL*")
                        (command "LAYER" "COLOR" (rtos(- returnHighMasterColor 7) 2 0) evalLayer "")
                        (if(or(wcmatch evalLayer "M-HVAC-RHDE*")(and(wcmatch evalLayer "M-HVAC-RH*")-1MasterColorTest))
                          (command "LAYER" "COLOR" (rtos(- returnHighMasterColor 1) 2 0) evalLayer "")
                          (if(and(wcmatch evalLayer "M-HVAC-RH*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
                            (command "LAYER" "COLOR" (rtos returnHighMasterColor 2 0) evalLayer "")
    (if(wcmatch evalLayer "M-HVAC-ELHG*")
      (command "LAYER" "COLOR" (rtos(- exhaustLowMasterColor 4) 2 0) evalLayer "")
      (if(wcmatch evalLayer "M-HVAC-ELDL*")
        (command "LAYER" "COLOR" (rtos(- exhaustLowMasterColor 7) 2 0) evalLayer "")
        (if(or(wcmatch evalLayer "M-HVAC-ELDE*")(and(wcmatch evalLayer "M-HVAC-EL*")-1MasterColorTest))
          (command "LAYER" "COLOR" (rtos(- exhaustLowMasterColor 1) 2 0) evalLayer "")
          (if(and(wcmatch evalLayer "M-HVAC-EL*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
            (command "LAYER" "COLOR" (rtos exhaustLowMasterColor 2 0) evalLayer "")
            (if(wcmatch evalLayer "M-HVAC-EMHG*")
              (command "LAYER" "COLOR" (rtos(- exhaustMediumMasterColor 4) 2 0) evalLayer "")
              (if(wcmatch evalLayer "M-HVAC-EMDL*")
                (command "LAYER" "COLOR" (rtos(- exhaustMediumMasterColor 7) 2 0) evalLayer "")
                (if(or(wcmatch evalLayer "M-HVAC-EMDE*")(and(wcmatch evalLayer "M-HVAC-EM*")-1MasterColorTest))
                  (command "LAYER" "COLOR" (rtos(- exhaustMediumMasterColor 1) 2 0) evalLayer "")
                  (if(and(wcmatch evalLayer "M-HVAC-EM*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
                    (command "LAYER" "COLOR" (rtos exhaustMediumMasterColor 2 0) evalLayer "")
                    (if(wcmatch evalLayer "M-HVAC-EHHG*")
                      (command "LAYER" "COLOR" (rtos(- exhaustHighMasterColor 4) 2 0) evalLayer "")
                      (if(wcmatch evalLayer "M-HVAC-EHDL*")
                        (command "LAYER" "COLOR" (rtos(- exhaustHighMasterColor 7) 2 0) evalLayer "")
                        (if(or(wcmatch evalLayer "M-HVAC-EHDE*")(and(wcmatch evalLayer "M-HVAC-EH*")-1MasterColorTest))
                          (command "LAYER" "COLOR" (rtos(- exhaustHighMasterColor 1) 2 0) evalLayer "")
                          (if(and(wcmatch evalLayer "M-HVAC-EH*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
                            (command "LAYER" "COLOR" (rtos exhaustHighMasterColor 2 0) evalLayer "")
    (if(wcmatch evalLayer "M-HVAC-OAHG*")
      (command "LAYER" "COLOR" (rtos(- outsideAirMasterColor 4) 2 0) evalLayer "")
      (if(wcmatch evalLayer "M-HVAC-OADL*")
        (command "LAYER" "COLOR" (rtos(- outsideAirMasterColor 7) 2 0) evalLayer "")
        (if(or(wcmatch evalLayer "M-HVAC-OADE*")(and(wcmatch evalLayer "M-HVAC-OA*")-1MasterColorTest))
          (command "LAYER" "COLOR" (rtos(- outsideAirMasterColor 1) 2 0) evalLayer "")
          (if(and(wcmatch evalLayer "M-HVAC-OA*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
            (command "LAYER" "COLOR" (rtos outsideAirMasterColor 2 0) evalLayer "")
    (if(wcmatch evalLayer "M-HVAC-CAHG*")
      (command "LAYER" "COLOR" (rtos(- combustionAirMasterColor 4) 2 0) evalLayer "")
      (if(wcmatch evalLayer "M-HVAC-CADL*")
        (command "LAYER" "COLOR" (rtos(- combustionAirMasterColor 7) 2 0) evalLayer "")
        (if(or(wcmatch evalLayer "M-HVAC-CADE*")(and(wcmatch evalLayer "M-HVAC-CA*")-1MasterColorTest))
          (command "LAYER" "COLOR" (rtos(- combustionAirMasterColor 1) 2 0) evalLayer "")
          (if(and(wcmatch evalLayer "M-HVAC-CA*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
            (command "LAYER" "COLOR" (rtos combustionAirMasterColor 2 0) evalLayer "")
    (if(wcmatch evalLayer "M-HVAC-TAHG*")
      (command "LAYER" "COLOR" (rtos(- transferAirMasterColor 4) 2 0) evalLayer "")
      (if(wcmatch evalLayer "M-HVAC-TADL*")
        (command "LAYER" "COLOR" (rtos(- transferAirMasterColor 7) 2 0) evalLayer "")
        (if(or(wcmatch evalLayer "M-HVAC-TADE*")(and(wcmatch evalLayer "M-HVAC-TA*")-1MasterColorTest))
          (command "LAYER" "COLOR" (rtos(- transferAirMasterColor 1) 2 0) evalLayer "")
          (if(and(wcmatch evalLayer "M-HVAC-TA*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
            (command "LAYER" "COLOR" (rtos transferAirMasterColor 2 0) evalLayer "")
    (if(wcmatch evalLayer "M-HVAC-SUHG*")
      (command "LAYER" "COLOR" (rtos(- supplyUndergroundMasterColor 4) 2 0) evalLayer "")
      (if(wcmatch evalLayer "M-HVAC-SUDL*")
        (command "LAYER" "COLOR" (rtos(- supplyUndergroundMasterColor 7) 2 0) evalLayer "")
        (if(or(wcmatch evalLayer "M-HVAC-SUDE*")(and(wcmatch evalLayer "M-HVAC-SU*")-1MasterColorTest))
          (command "LAYER" "COLOR" (rtos(- supplyUndergroundMasterColor 1) 2 0) evalLayer "")
          (if(and(wcmatch evalLayer "M-HVAC-SU*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
            (command "LAYER" "COLOR" (rtos supplyUndergroundMasterColor 2 0) evalLayer "")
    (if(wcmatch evalLayer "M-HVAC-EIHG*")
      (command "LAYER" "COLOR" (rtos(- exhaustInslabMasterColor 4) 2 0) evalLayer "")
      (if(wcmatch evalLayer "M-HVAC-EIDL*")
        (command "LAYER" "COLOR" (rtos(- exhaustInslabMasterColor 7) 2 0) evalLayer "")
        (if(or(wcmatch evalLayer "M-HVAC-EIDE*")(and(wcmatch evalLayer "M-HVAC-EI*")-1MasterColorTest))
          (command "LAYER" "COLOR" (rtos(- exhaustInslabMasterColor 1) 2 0) evalLayer "")
          (if(and(wcmatch evalLayer "M-HVAC-EI*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
            (command "LAYER" "COLOR" (rtos exhaustInslabMasterColor 2 0) evalLayer "")
    (if(wcmatch evalLayer "M-HVAC-EPHG*")
      (command "LAYER" "COLOR" (rtos(- exhaustPVCMasterColor 4) 2 0) evalLayer "")
      (if(wcmatch evalLayer "M-HVAC-EPDL*")
        (command "LAYER" "COLOR" (rtos(- exhaustPVCMasterColor 7) 2 0) evalLayer "")
        (if(or(wcmatch evalLayer "M-HVAC-EPDE*")(and(wcmatch evalLayer "M-HVAC-EP*")-1MasterColorTest))
          (command "LAYER" "COLOR" (rtos(- exhaustPVCMasterColor 1) 2 0) evalLayer "")
          (if(and(wcmatch evalLayer "M-HVAC-EP*")(or(wcmatch evalLayer "*3DOB*")(wcmatch evalLayer "*2DOB*")))
            (command "LAYER" "COLOR" (rtos exhaustPVCMasterColor 2 0) evalLayer "")
    ))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));end ifs
  );end while
  (setvar "CLAYER" oldCurrentLayer)
  (setq evalLayer nil)
  (setq sset (ssget "_X" '((0 . "MAPS_SOLID"))));end setq
  (if(not(= sset nil))
    (progn
      (OUTSIDE_LOOP_VARIABLES nil)
      (write-line "requires task.selection" writeToVBCode)
      (write-line "dim i = 1" writeToVBCode)
      (write-line "dim qt = ASCII(34)" writeToVBCode)
      (write-line "while i <= task.selection.count" writeToVBCode)
      (write-line "dim item = task.selection[i]" writeToVBCode)
      (write-line "item.update()" writeToVBCode)
      (write-line "i = i + 1" writeToVBCode)
      (write-line "end while" writeToVBCode)
      (close writeToVBCode)
      (Executescript vbCode sset)
      (vl-file-delete vbCode)
    );progn
  );end if
  (princ)
  (END_ROUTINE)
);end defun
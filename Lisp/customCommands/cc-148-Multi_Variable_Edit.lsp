;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Multi_Variable_Edit ()
  (OUTSIDE_LOOP_VARIABLES nil)
  (print "Please select your desired items:")(princ)(terpri)
  (setq i 0
        index nil
        operator nil
        parameterChoice nil
        valueChoice nil
        parameter nil
        dimIndexPara nil
        optionIndexPara nil
        valueChoice nil
        operator nil
        twoVariables nil
        stringValue1 nil
        stringValue2 nil
        dimIndexValue1 nil
        indexValue1 nil
        valueParameter1 nil
        value1Type nil
        optionIndexValue1 nil
        providedNumber1 nil
        stringValue2 nil
        dimIndexValue2 nil
        indexValue2 nil
        valueParameter2 nil
        value2Type nil
        optionIndexValue2 nil
        providedNumber2 nil
        dimIndexValue nil
        indexValue nil
        valueParameter nil
        valueType nil
        providedNumber nil
        dimIndexList nil
        optionIndexList nil
        dimCompare nil
        optionCompare nil
        dimElement nil
        dimComparison nil
        optionElement nil
        optionComparison nil
        adjustedValue nil
        validityCheck nil
        variableValue nil
        variableValue1 nil
        variableValue2 nil
        decisionLine nil
        sset (ssget '((0 . "MAPS_SOLID"))))
  (print "Always include D for Dimension or O for option (absence assumes Dimension is desired).")(princ)(terpri)
  (print "Index locations can be used; IE: D3 or O12.")(princ)(terpri)
  (print "Use quotation marks around dimension/option names; IE: D\"This is my dimension's name\" or O\"This is my option's name\".")(princ)(terpri)
  (setq parameterChoice (getstring "\nEnter parameter \"name\" or index# to be adjusted: [D*/O*]" T))
  (print "Direct values or equations can be applied; Special variables available: Calc,Dependent,Auto,Self,+,-,*,/")(princ)(terpri)
  (print "Examples of direct values: 123,D6,D1,O11,O3,Calc,Dependent,Auto")(princ)(terpri)
  (print "Examples of equations: 3+33,D6*D1,D3/O14,D3+D4,D4-D3,Self+Self,Self+33,Self+D4")(princ)(terpri)
  (setq valueChoice (getstring "\nEnter desired value or equation:" T))
    (if(or(wcmatch parameterChoice "D*")(wcmatch parameterChoice "d*"))
      (progn
        (if(wcmatch parameterChoice "D*")(STRING_SPLIT "D" parameterChoice)(STRING_SPLIT "d" parameterChoice))
        (setq parameter "dim"
              dimIndexPara nth0
              index nth0)
      );end progn
      (if(or(wcmatch parameterChoice "O*")(wcmatch parameterChoice "o*"))
        (progn
          (if(wcmatch parameterChoice "O*")(STRING_SPLIT "O" parameterChoice)(STRING_SPLIT "o" parameterChoice))
          (setq parameter "option"
                optionIndexPara nth0
                index nth0)
        );end progn
        (setq parameter "dim"
              index parameterChoice)
    ) );end ifs
    (if(wcmatch valueChoice "*[+]*")
      (setq operator "+"
            twoVariables T)
      (if(wcmatch valueChoice "*[-]*")
        (setq operator "-"
              twoVariables T)
        (if(wcmatch valueChoice "*[*]*")
          (setq operator "*"
                twoVariables T)
          (if(wcmatch valueChoice "*[/]*")
            (setq operator "/"
                  twoVariables T)
            (setq twoVariables nil)
    ) ) ) );end ifs
    (if twoVariables
      (progn
        (STRING_SPLIT operator valueChoice)
        (setq stringValue1 nth0
              stringValue2 nth1)
        (if(or(wcmatch stringValue1 "D*")(wcmatch stringValue1 "d*"))
          (progn(if(wcmatch stringValue1 "D*")(STRING_SPLIT "D" stringValue1)(STRING_SPLIT "d" stringValue1))
          (setq dimIndexValue1 nth0
                indexValue1 nth0
                valueParameter1 "dim"
                value1Type "Dimension"))
          (if(or(wcmatch stringValue1 "O*")(wcmatch stringValue1 "o*"))
            (progn(if(wcmatch stringValue1 "O*")(STRING_SPLIT "O" stringValue1)(STRING_SPLIT "o" stringValue1))
            (setq optionIndexValue1 nth0
                  indexValue1 nth0
                  valueParameter1 "option"
                  value1Type "Option"))
            (if(not(wcmatch stringValue1 "*@*"))
              (setq providedNumber1 stringValue1
                    value1Type "NumberValue")
              (if(or(wcmatch stringValue1 "*D*[\"]*")(wcmatch stringValue1 "*d*[\"]*"))
                (progn(STRING_SPLIT "\"" stringValue1)
                (setq indexValue1 nth1
                      valueParameter1 "dim"
                      valueType "DimensionName"))
                (if(or(wcmatch stringValue1 "*O*[\"]*")(wcmatch stringValue1 "*o*[\"]*"))
                  (progn(STRING_SPLIT "\"" stringValue1)
                  (setq indexValue1 nth1
                        valueParameter1 "option"
                        valueType "DimensionName"))
                  (if(wcmatch stringValue1 "*[\"]*")
                    (progn(STRING_SPLIT "\"" stringValue1)
                    (setq indexValue1 nth0
                          valueParameter1 "dim"
                          valueType "DimensionName"))
                    (if(or(wcmatch stringValue1 "*self*")(wcmatch stringValue1 "*Self*")(wcmatch stringValue1 "*SELF*"))
                      (setq indexValue1 index
                            valueParameter1 parameter
                            valueType "Self")
        ) ) ) ) ) ) );end ifs
        (if(or(wcmatch stringValue2 "D*")(wcmatch stringValue2 "d*"))
          (progn(if(wcmatch stringValue2 "D*")(STRING_SPLIT "D" stringValue2)(STRING_SPLIT "d" stringValue2))
          (setq dimIndexValue2 nth0
                indexValue2 nth0
                valueParameter2 "dim"
                value2Type "Dimension"))
          (if(or(wcmatch stringValue2 "O*")(wcmatch stringValue2 "o*"))
            (progn(if(wcmatch stringValue2 "O*")(STRING_SPLIT "O" stringValue2)(STRING_SPLIT "o" stringValue2))
            (setq optionIndexValue2 nth0
                  indexValue2 nth0
                  valueParameter2 "option"
                  value2Type "Option"))
            (if(not(wcmatch stringValue2 "*@*"))
              (setq providedNumber2 stringValue2
                    value2Type "NumberValue")
              (if(or(wcmatch stringValue2 "*D*[\"]*")(wcmatch stringValue2 "*d*[\"]*"))
                (progn(STRING_SPLIT "\"" stringValue2)
                (setq indexValue2 nth1
                      valueParameter2 "dim"
                      valueType "DimensionName"))
                (if(or(wcmatch stringValue2 "*O*[\"]*")(wcmatch stringValue2 "*o*[\"]*"))
                  (progn(STRING_SPLIT "\"" stringValue2)
                  (setq indexValue2 nth1
                        valueParameter2 "option"
                        valueType "DimensionName"))
                  (if(wcmatch stringValue2 "*[\"]*")
                    (progn(STRING_SPLIT "\"" stringValue2)
                    (setq indexValue2 nth0
                          valueParameter2 "dim"
                          valueType "DimensionName"))
                    (if(or(wcmatch stringValue2 "*self*")(wcmatch stringValue2 "*Self*")(wcmatch stringValue2 "*SELF*"))
                      (setq indexValue2 index
                            valueParameter2 parameter
                            valueType "Self")
        ) ) ) ) ) ) );end ifs
      );end progn
      (progn;or else condition for single value
        (if(or(wcmatch valueChoice "D*")(wcmatch valueChoice "d*"))
          (progn(if(wcmatch valueChoice "D*")(STRING_SPLIT "D" valueChoice)(STRING_SPLIT "d" valueChoice))
          (setq dimIndexValue nth0
                indexValue nth0
                valueParameter "dim"
                valueType "Dimension"))
          (if(or(wcmatch valueChoice "O*")(wcmatch valueChoice "o*"))
            (progn(if(wcmatch valueChoice "O*")(STRING_SPLIT "O" valueChoice)(STRING_SPLIT "o" valueChoice))
            (setq optionIndexValue nth0
                  indexValue nth0
                  valueParameter "option"
                  valueType "Option"))
            (if(or(wcmatch valueChoice "*calc*")(wcmatch valueChoice "*Calc*")(wcmatch valueChoice "*CALC*"))
              (setq providedNumber "1100001"
                    valueType "Calc")
              (if(or(wcmatch valueChoice "*dependent*")(wcmatch valueChoice "*Dependent*")(wcmatch valueChoice "*DEPENDENT*"))
                (setq providedNumber "1100000"
                      valueType "Dependent")
                (if(or(wcmatch valueChoice "*auto*")(wcmatch valueChoice "*Auto*")(wcmatch valueChoice "*AUTO*"))
                  (setq providedNumber "1000000"
                        valueType "Auto")
                  (if(not(wcmatch valueChoice "*@*"))
                    (setq providedNumber valueChoice
                          valueType "NumberValue")
                    (if(or(wcmatch valueChoice "*D*[\"]*")(wcmatch valueChoice "*d*[\"]*"))
                      (progn(STRING_SPLIT "\"" valueChoice)
                      (setq indexValue nth1
                            valueParameter "dim"
                            valueType "DimensionName"))
                      (if(or(wcmatch valueChoice "*O*[\"]*")(wcmatch valueChoice "*o*[\"]*"))
                        (progn(STRING_SPLIT "\"" valueChoice)
                        (setq indexValue nth1
                              valueParameter "option"
                              valueType "DimensionName"))
                        (if(wcmatch valueChoice "*[\"]*")
                          (progn(STRING_SPLIT "\"" valueChoice)
                          (setq indexValue nth0
                                valueParameter "dim"
                                valueType "DimensionName"))
                          (if(or(wcmatch valueChoice "*self*")(wcmatch valueChoice "*Self*")(wcmatch valueChoice "*SELF*"))
                            (setq indexValue index
                                  valueParameter parameter
                                  valueType "Self")
       ) ) ) ) ) ) ) ) ) );end ifs
      );end progn
    );end if
    (if(and(not(= valueType "DimensionName"))(not(= value1Type "DimensionName"))(not(= value2Type "DimensionName")))
      (progn
        (setq dimIndexList (list dimIndexPara dimIndexValue dimIndexValue1 dimIndexValue2)
              optionIndexList (list optionIndexPara optionIndexValue optionIndexValue1 optionIndexValue2)
              dimCompare 1
              optionCompare 1)
        (foreach elm dimIndexlist
          (if(and(not(=(type elm) 'INT))(not(= elm ""))(not(= elm nil)))(setq dimElement (atoi elm)))
          (if(and(not(=(type dimComparison) 'INT))(not(= dimComparison ""))(not(= dimComparison nil)))(setq dimComparison (atoi dimComparison)))
          (if(> dimElement dimComparison)(setq dimCompare dimElement))
        );end foreach
        (foreach elm optionIndexList
          (if(and(not(=(type elm) 'INT))(not(= elm ""))(not(= elm nil)))(setq optionElement (atoi elm)))
          (if(and(not(=(type optionComparison) 'INT))(not(= optionComparison ""))(not(= optionComparison nil)))(setq optionComparison (atoi optionComparison)))
          (if(> optionElement optionComparison)(setq optionCompare optionElement))
        );end foreach
      );progn
    );end if
    (setq adjustedValue (strcat "item." parameter "[" index "].value")
          validityCheck (strcat "if " (rtos dimCompare 2 0) " <= item.dims and " (rtos optionCompare 2 0) " <= item.options then"))
    (if(and(not twoVariables)(not(= valueType "Calc"))(not(= valueType "Dependent"))(not(= valueType "Auto"))(not(= valueType "NumberValue")))
      (setq variableValue (strcat "item." valueParameter "[" indexValue "].numvalue")))
    (if(and twoVariables (not(= valueType "Calc"))(not(= valueType "Dependent"))(not(= valueType "Auto"))(not(= valueType "NumberValue")))
      (setq variableValue1 (strcat "item." valueParameter1 "[" indexValue1 "].numvalue")
            variableValue2 (strcat "item." valueParameter2 "[" indexValue2 "].numvalue")))
    (if(and(< dimCompare dimensionListCount) twoVariables (not(= value1Type "Calc"))(not(= value1Type "Dependent"))(not(= value1Type "Auto"))(not(= value1Type "NumberValue"))(not(= value2Type "Calc"))(not(= value2Type "Dependent"))(not(= value2Type "Auto"))(not(= value2Type "NumberValue")))
        (setq decisionLine (strcat adjustedValue " = " variableValue1 " " operator " "  variableValue2))
      (if(and(< dimCompare dimensionListCount)(not twoVariables)(not(= valueType "Calc"))(not(= valueType "Dependent"))(not(= valueType "Auto"))(not(= valueType "NumberValue")))
          (setq decisionLine (strcat adjustedValue " = " variableValue))
        (if(and(< dimCompare dimensionListCount) twoVariables (= value1Type "NumberValue")(= value2Type "NumberValue"))
            (setq decisionLine (strcat adjustedValue " = " providedNumber1 " " operator " " providedNumber2))
          (if(and(< dimCompare dimensionListCount)(not twoVariables)(or(= valueType "Calc")(= valueType "Dependent")(= valueType "Auto")(= valueType "NumberValue")))
              (setq decisionLine (strcat adjustedValue " = " providedNumber))
            (if(and(< dimCompare dimensionListCount) twoVariables (not(= value1Type "Calc"))(not(= value1Type "Dependent"))(not(= value1Type "Auto"))(not(= value1Type "NumberValue"))(= value2Type "NumberValue"))
                (setq decisionLine (strcat adjustedValue " = " variableValue1 " " operator " " providedNumber2))
              (if(and(< dimCompare dimensionListCount) twoVariables (= value1Type "NumberValue")(not(= value2Type "Calc"))(not(= value2Type "Dependent"))(not(= value2Type "Auto"))(not(= value2Type "NumberValue")))
                  (setq decisionLine (strcat adjustedValue " = " providedNumber1 " " operator " " variableValue2))
    ) ) ) ) ) );end ifs
  (write-line "requires task.selection" writeToVBCode)
  (write-line "dim i = 1" writeToVBCode)
  (write-line "while i <= task.selection.count" writeToVBCode)
  (write-line "dim item = task.selection[i]" writeToVBCode)
  (write-line validityCheck writeToVBCode)
  (write-line decisionLine writeToVBCode)
  (write-line "item.update()" writeToVBCode)
  (write-line "end if" writeToVBCode)
  (write-line "i = i + 1" writeToVBCode)
  (write-line "end while" writeToVBCode)
  (close writeToVBCode)
  (Executescript vbCode sset)
  (vl-file-delete vbCode)
  (setq index nil
        operator nil
        parameterChoice nil
        valueChoice nil
        parameter nil
        dimIndexPara nil
        optionIndexPara nil
        valueChoice nil
        operator nil
        twoVariables nil
        stringValue1 nil
        stringValue2 nil
        dimIndexValue1 nil
        indexValue1 nil
        valueParameter1 nil
        value1Type nil
        optionIndexValue1 nil
        providedNumber1 nil
        stringValue2 nil
        dimIndexValue2 nil
        indexValue2 nil
        valueParameter2 nil
        value2Type nil
        optionIndexValue2 nil
        providedNumber2 nil
        dimIndexValue nil
        indexValue nil
        valueParameter nil
        valueType nil
        providedNumber nil
        dimIndexList nil
        optionIndexList nil
        dimCompare nil
        optionCompare nil
        dimElement nil
        dimComparison nil
        optionElement nil
        optionComparison nil
        adjustedValue nil
        validityCheck nil
        variableValue nil
        variableValue1 nil
        variableValue2 nil
        decisionLine nil)
  (princ)
  (END_ROUTINE)
);end defun
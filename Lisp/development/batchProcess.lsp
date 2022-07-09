

(defun c:DWG_Batch_Process ()
  (vl-load-com)
  (vl-doc-set 'acadObj (vlax-get-acad-object))
  (vl-doc-set 'acadDocs (vla-get-documents(vlax-get-acad-object)))
  (vl-doc-set 'activeDoc (vla-get-ActiveDocument acadObj))
  (vl-doc-set 'searchFolder (ACET-UI-PICKDIR "Select dwg location to update" "f:"))
  (vl-doc-set 'dwgs (RETRIEVE_FILEPATHS "*.dwg" searchFolder))
  (vl-doc-set 'startDWG (vla-item(vla-get-documents(vlax-get-acad-object))0))
  (vl-doc-set 'startDWGName (vla-get-name(vla-item(vla-get-documents(vlax-get-acad-object))0)))
  ;(vl-doc-set 'dwg (nth 0 dwgs))
  (vl-propagate 'acadObj)
  (vl-propagate 'acadDocs)
  (vl-propagate 'activeDoc)
  (vl-propagate 'searchFolder)
  (vl-propagate 'dwgs)
  (vl-propagate 'startDWG)
  (vl-load-all LocationLCC)
  (OUTSIDE_LOOP_VARIABLES nil)
  (vl-propagate 'scriptProcess)
  (setq writeToScript (open scriptProcess "w"));end setq
  (write-line "(END_ROUTINE)" writeToScript)
  (close writeToScript)
  (foreach dwg dwgs
    (vl-doc-set 'currentdwg dwg)
    (vl-propagate 'currentdwg)
    (if(FILE_OPEN? dwg)
      (princ (strcat dwg " - was skipped because it was open."))
      (progn
        (vla-activate (vla-open acadDocs dwg :vlax-false))
        (setq evalDWG (vla-item acadDocs (strcat(vl-filename-base currentdwg)(vl-filename-extension currentdwg))))
        (command "._script" scriptProcess)
        (vla-activate startDWG)
        (vla-close evalDWG :vlax-true)
      );progn
    );end if
  );foreach
(END_ROUTINE));end defun
;**************************************************************************************************************************************************

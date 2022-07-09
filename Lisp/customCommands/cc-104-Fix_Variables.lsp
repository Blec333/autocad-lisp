;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Fix_Variables () 
  (setvar 'filetabpreview 0)
  (setvar 'filetabthumbhover 0)
  (setvar 'msltscale 0)
  (setvar 'psltscale 0)
  (setvar 'celtscale 1)
  (setvar 'ltscale 48)
  (setvar 'cmdecho 1)
  (setvar 'lwdisplay 0)
  (setvar 'selectionannodisplay 0)
  (setvar 'annoallvisible 1)
  (setvar 'annoautoscale 1)
  (if(and(not(=(getvar 'dimscale)0))(not(=(getvar 'dimscale)48)))(setvar 'dimscale 48))
  (setvar 'layernotify 0)
  (setvar 'layerevalctl 0)
  (setvar 'filedia 1)
  (setvar 'proxygraphics 1)
  (setvar 'proxynotice 0)
  (setvar 'proxyshow 1)
  (setvar 'visretain 1)
  (setvar 'cecolor "bylayer")
  (princ)
(END_ROUTINE));end defun
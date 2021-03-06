@@ECHO OFF
CLS

IF EXIST *.tex (           rem Check if there are any in the current folder :)
	latexmk -pdfxe -c
	latexmk -c
)

FOR /D /R %%G IN ("*") DO (  rem Iterate through all subfolders
  IF EXIST %%G CD %%G
  IF EXIST *.tex (
	latexmk -pdfxe
	latexmk -c
  )
)

EXIT
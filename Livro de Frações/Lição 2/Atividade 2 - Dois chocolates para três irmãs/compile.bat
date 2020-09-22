@@ECHO OFF
CLS


FOR /D /R %%G IN ("*") DO (  rem Iterate through all subfolders
latexmk -pdfxe
  )
)

PAUSE
EXIT
EXIT
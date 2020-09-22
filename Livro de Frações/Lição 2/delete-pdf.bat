@@ECHO OFF
CLS


IF EXIST *.pdf (           rem Check if there are any in the current folder :)
  DEL *.pdf
)
FOR /D /R %%G IN ("*") DO (  rem Iterate through all subfolders
  IF EXIST %%G CD %%G
  IF EXIST *.pdf (
    DEL *.pdf
    SET found=1
  )
)

EXIT
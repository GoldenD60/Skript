@echo off
cls
:load
echo Drag And Drop To Load .sk File
Set /P _inputname=load(skriptfile) ^> 
cls
if exist "%_inputname%" (
  cls
  for /f "delims=" %%a in (%_inputname%) do ( 
    echo %%a
  )
  goto :load
) else (
  cls
  echo Error: File Doesn't Exist
  goto :load
)
echo Reading ^[^] ^|
ping localhost -n 2 >nul
cls
echo Reading ^[^] ^\
ping localhost -n 2 >nul
cls
echo Reading ^[=^] ^-
ping localhost -n 2 >nul
cls
echo Reading ^[=^] ^/
ping localhost -n 2 >nul
cls
echo Reading ^[=^] ^|
ping localhost -n 2 >nul
cls
echo Reading ^[==^] ^\
ping localhost -n 2 >nul
cls
echo Reading ^[==^] ^-
ping localhost -n 2 >nul
cls
echo Reading ^[==^] ^/
ping localhost -n 2 >nul
cls
echo Reading ^[===^] ^\
ping localhost -n 2 >nul
cls
echo Reading ^[===^] ^\
ping localhost -n 2 >nul
cls
echo Reading ^[===^] ^\
ping localhost -n 2 >nul
cls
echo Reading ^[====^] ^-
ping localhost -n 2 >nul
cls
echo Reading ^[====^] ^|
ping localhost -n 2 >nul
cls
echo Reading ^[======^] ^|
ping localhost -n 2 >nul
cls
echo Reading ^[==========^] ^\
ping localhost -n 2 >nul
cls
echo Reading ^[===============^] ^-
ping localhost -n 2 >nul
cls
echo Reading ^[================^] ^/ Done!
ping localhost -n 2 >nul
cls
:end
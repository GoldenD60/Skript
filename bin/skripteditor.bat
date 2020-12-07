@echo off
cls
:load
echo Drag And Drop To Load .sk File
Set /P _inputname=load(skriptfile) ^> 
cls
if exist "%_inputname%" (
	echo Please Write The Code Here, thx :^)
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
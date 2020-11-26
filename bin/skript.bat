echo off
:start
set /P _inputname= Do you want to open the console or the skript editor? 
if "%_inputname%"=="console" goto :console
if "%_inputname%"=="editor" goto :editor
cls
goto :start
:console
echo Skript 1.0.1
echo Type "help" for more information.
goto :line
:line
set /P _inputname=^> 
if "%_inputname%"=="print" goto :print
if "%_inputname%"=="exit" goto :exit
if "%_inputname%"=="input" goto :input
if "%_inputname%"=="sin" goto :sin
if "%_inputname%"=="sout" goto :print
if "%_inputname%"=="asciidisplay" goto :asciidisplay
if "%_inputname%"=="loop" goto :loop
if "%_inputname%"=="mathf" goto :mathf
if "%_inputname%"=="help" goto :help
if "%_inputname%"=="documentation" goto :onlhelp
if "%_inputname%"=="onlinehelp" goto :onlhelp
if "%_inputname%"=="window" goto :empwin
if "%_inputname%"=="playsound" goto :playsound
echo That command doesn't exist
goto :line
:print
set /P _inputname=print ^> 
echo %_inputname%
goto :line
:end
:sout
set /P _inputname=sout ^> 
echo %_inputname%
goto :line
:end
:input
set /P _inputname=input ^> 
set /P _inputname=%_inputname%
goto :line
:end
:sin
set /P _inputname=sin ^> 
set /P _inputname=%_inputname%
goto :line
:end
:asciidisplay
set /P _inputname=asciidisplay [Triangle/Square]^> 
if "%_inputname%"=="triangle" goto :dtriangle
if "%_inputname%"=="square" goto :dsquare
goto :line
:end
:dtriangle
echo     ^/^\
echo    ^/##^\
echo   ^/####^\
echo  ^/######^\
echo ^/________^\
goto :line
:end
:dsquare
echo ___________
echo ^|         ^|
echo ^|         ^|
echo ^|         ^|
echo ^|_________^|
goto :line
:end
:loop
set /P _inputname=loop(int) ^> 
Set "loopt=%_inputname%"
goto :loops
:end
:loops
set /P _inputname=loop(string) ^> 
Set "loops=%_inputname%"
goto :loopf
:end
:loopf
Set "start=1"
Set "step=1"

For /L %%A In (%start%,%step%,%loopt%) Do (
    Echo %loops%
)
goto :line
:end
:mathf
Set /P _inputname=mathf(operator) ^> 
Set "op=%_inputname%"
Set /P _inputname=mathf(int[1]) ^> 
Set "int1=%_inputname%"
Set /P _inputname=mathf(int[2]) ^> 
Set "int2=%_inputname%"
Set /A result=%int1%%op%%int2%
echo %result%
goto :line
:end
:help
echo print/sout: Prints message
echo exit: Exit skript to command prompt
echo input/sin: Gets input from user
echo asciidisplay: Displays a shape on the screen
echo loop: Loops code certain number of times
echo mathf: Used for math in 32-bit integer limit. Except from sqrt and exp.
echo help: Displays this.
echo documentation/onlinehelp: Shows online help.
goto :line
:end
:onlhelp
start "" https://github.com/GoldenD60/Skript/wiki
goto :line
:end
:editor
echo Editor in development, going to console
ping localhost -n 1 >nul
cls
echo Editor in development, going to console.
ping localhost -n 1 >nul
cls
echo Editor in development, going to console..
ping localhost -n 1 >nul
cls
echo Editor in development, going to console...
ping localhost -n 1 >nul
cls
goto :line
:empwin
cd __wins__
py empwin.py
cd ..
goto :line
:end
:playsound
Set /P _inputname=playsound(soundFile [.aac, .ac3, .aif, .aifc, .aiff, .amr, .au, .caf, .flac, .m4a, .m4b, .mp3, .oga, .sfark, .voc, .wav, .weba, .wma]) ^> 
start %_inputname%
start 
goto :line
:end
:exit
echo on
:end
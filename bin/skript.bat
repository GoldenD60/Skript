echo off
:start
set /P _inputname= Do you want to open the console or the skript editor? 
if "%_inputname%"=="console" goto :console
if "%_inputname%"=="editor" goto :editor
cls
goto :start
:console
echo Skript 1.0.4
echo Type "help" for more information.
goto :line
:line
set /P _inputname=^> 
if "%_inputname%"=="say" goto :print
if "%_inputname%"=="exit" goto :exit
if "%_inputname%"=="get input from user" goto :input
if "%_inputname%"=="display in ASCII text" goto :asciidisplay
if "%_inputname%"=="calculate" goto :mathf
if "%_inputname%"=="help" goto :help
if "%_inputname%"=="documentation" goto :onlhelp
if "%_inputname%"=="online help" goto :onlhelp
if "%_inputname%"=="open an empty window" goto :empwin
if "%_inputname%"=="play a sound" goto :playsound
if "%_inputname%"=="open a window with controls" goto :winwcontrol
echo That command doesn't exist
goto :line
:print
set /P _inputname=print ^> 
set "pr=%_inputname%"
echo %_inputname%
goto :line
:end
:sout
set /P _inputname=sout ^> 
set "pr=%_inputname%"
echo %_inputname%
goto :line
:end
:input
set /P _inputname=input ^> 
set "in=%_inputname%"
set /P _inputname=%_inputname%
goto :line
:end
:sin
set /P _inputname=sin ^> 
set "in=%_inputname%"
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
set "asciid=%_inputname%"
echo     ^/^\
echo    ^/##^\
echo   ^/####^\
echo  ^/######^\
echo ^/________^\
goto :line
:end
:dsquare
set "asciid=%_inputname%"
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
echo playsound: Plays a sound.
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
py empwinun.py
cd ..
goto :line
:end
:playsound
Set /P _inputname=playsound(soundFile [.aac, .ac3, .aif, .aifc, .aiff, .amr, .au, .caf, .flac, .m4a, .m4b, .mp3, .oga, .sfark, .voc, .wav, .weba, .wma]) ^> 
start %_inputname%
start 
goto :line
:end
:winwcontrol
Set /P _inputname= winwcontrol(int) ^> 
set "winwt=%_inputname%"
Set /P _inputname= winwcontrol(control) ^> 
if "%_inputname%"=="button" goto :button
if "%_inputname%"=="label" goto :label
if "%_inputname%"=="check box" goto :checkbutton
if "%_inputname%"=="entry" goto :entry
if "%_inputname%"=="list box" goto :listbox
if "%_inputname%"=="message" goto :messagec
if "%_inputname%"=="radio button" goto :radiobutton
goto :line
:end
:button
set "control=button"
cd __wins__
Set /P _inputname=winwcontrol(color[background]) ^> 
Set "backcb=%_inputname%"
Set /P _inputname=winwcontrol(color[text]) ^> 
Set "textcb=%_inputname%"
Set /P _inputname=winwcontrol(text) ^> 
Set "textb=%_inputname%"
ping localhost -n 5 >nul
copy empwin.py empwincopy.py
cd ..
cscript replace.vbs "%CD%\__wins__\empwincopy.py" "# Control Button" "button1 = tk.Button (root,text='%textb%',command=run_command,bg='%backcb%',fg='%textcb%')" 
cscript replace.vbs "%CD%\__wins__\empwincopy.py" "# Window" "canvas1.create_window(170, 130, window=button1)"
cscript replace.vbs "%CD%\__wins__\empwincopy.py" "# Pack" "button1.pack()"
cd __wins__
echo Saved Window At %CD%\empwincopy.py
py empwincopy.py
cd ..
goto :line
:end
:label
set "control=label"
cd __wins__
Set /P _inputname=winwcontrol(text) ^> 
Set "textl=%_inputname%"
Set /P _inputname=winwcontrol(font) ^> 
Set "fontl=%_inputname%"
Set /P _inputname=winwcontrol(size[int]) ^> 
Set "sizel=%_inputname%"
ping localhost -n 5 >nul
copy empwin.py empwincopy.py
cd ..
cscript replace.vbs "%CD%\__wins__\empwincopy.py" "# Control Label" "label1 = tk.Label(root, text='%textl%')"
cscript replace.vbs "%CD%\__wins__\empwincopy.py" "# Control Font" "label1.config(font=('%fontl%', %sizel%))"
cscript replace.vbs "%CD%\__wins__\empwincopy.py" "# Window" "canvas1.create_window(170, 130, window=label1)"
cscript replace.vbs "%CD%\__wins__\empwincopy.py" "# Pack" "label1.pack()"
cd __wins__
echo Saved Window At %CD%\empwincopy.py
py empwincopy.py
cd ..
goto :line
:end
:checkbutton
set "control=label"
cd __wins__
Set /P _inputname=winwcontrol(text) ^> 
Set "textcbb=%_inputname%"
Set /P _inputname=winwcontrol(size[int]) ^> 
Set "sizecbb=%_inputname%"
Set /A propsizecbb=%sizecbb%/2
ping localhost -n 5 >nul
copy empwin.py empwincopy.py
cd ..
cscript replace.vbs "%CD%\__wins__\empwincopy.py" "# Control Check Button" "checkbutton1 = tk.Checkbutton(root, text = '%textcbb%', variable = checkvar1, onvalue = 1, offvalue = 0, height=%propsizecbb%, width = %propsizecbb%)"
cscript replace.vbs "%CD%\__wins__\empwincopy.py" "# Control Check Box Var" "checkvar1 = tk.IntVar()"
cscript replace.vbs "%CD%\__wins__\empwincopy.py" "# Window" "canvas1.create_window(170, 130, window=checkbutton1)"
cscript replace.vbs "%CD%\__wins__\empwincopy.py" "# Pack" "checkbutton1.pack()"
cd __wins__
echo Saved Window At %CD%\empwincopy.py
py empwincopy.py
cd ..
goto :line
:end
:entry
set "control=entry"
cd __wins__
copy empwin.py empwincopy.py
cd ..
cscript replace.vbs "%CD%\__wins__\empwincopy.py" "# Control Entry" "entry1 = tk.Entry(root)"
cscript replace.vbs "%CD%\__wins__\empwincopy.py" "# Window" "canvas1.create_window(170, 130, window=entry1)"
cscript replace.vbs "%CD%\__wins__\empwincopy.py" "# Pack" "entry1.pack()"
cd __wins__
echo Saved Window At %CD%\empwincopy.py
py empwincopy.py
cd ..
goto :line
:end
:exit
echo on
:end
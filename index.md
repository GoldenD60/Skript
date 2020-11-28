## Welcome to the Skript Documentation

### Context

1. [Installation](https://goldend60.github.io/Skript#installation)
2. [Installation for Python](https://goldend60.github.io/Skript#python)
3. [Installation for VBScript](https://goldend60.github.io/Skript#vbscript)
4. [Getting Started](https://https://goldend60.github.io/Skript#getting-started)
5. [How To Run](https://https://goldend60.github.io/Skript#how-to-run)
6. [Text-Based Commands](https://goldend60.github.io/Skript#text-based-commands)
7. [Saying "Hello World"](https://goldend60.github.io/Skript#saying-hello-world)
8. [Getting User Input](https://goldend60.github.io/Skript#getting-user-input)
9. [Displaying a shape in ASCII text](https://goldend60.github.io/Skript#displaying-a-shape-in-ascii-text)
10. [Creating An Empty Window](https://goldend60.github.io/Skript#creating-an-empty-window)
11. [Creating A Window With Controls](https://goldend60.github.io/Skript#creating-a-window-with-controls)
11. [Integer-Based Commands](https://goldend60.github.io/Skript#integer-based-commands)
12. [Calculating '2 + 2'](https://goldend60.github.io/Skript#calculating-22)


### Installation

Skript is a lightweight easy-to-use coding language for games.
To install, Check if you have these programs installed:

Python and VBScript

You will need Windows 7 and above or Linux or Mac OS X.

### Python

[Windows](https://www.python.org/ftp/python/3.9.0/python-3.9.0-amd64.exe)

[Linux/Unix](https://www.python.org/ftp/python/3.9.0/Python-3.9.0.tgz)

[Max OS X](https://www.python.org/ftp/python/3.9.0/python-3.9.0-macosx10.9.pkg)

[Other](https://www.python.org/download/other)

### VBScript

[Windows XP](https://www.microsoft.com/en-gb/download/confirmation.aspx?id=8247)

[Mac](http://www.barebones.com/products/textwrangler/)

Linux: Run this in the terminal: ```sudo apt-get install wine```

For more details visit the [python website](https://python.org).

## Getting Started

### How to run

To run it, follow these steps:

1. Open the Command Prompt/Terminal
2. Type cd/ls then a space after
3. In File Explorer/Finder, find where you stored the repository.
4. Go into the folder called 'bin'
5. Drag skript.bat into the Command Prompt/Terminal
6. Hit enter in the Command Prompt/Terminal

## Text-Based Commands

### Saying "Hello World"

Let's do something basic, also you might be confused because the Command Prompt/Terminal says ```Do you want to open the console or the skript editor?``` just ignore this message for now. Let's talk about how it's done. Skript is just like you are typing in English sentences if you want it to say something you put _say_ but, Skript need some 'Arguments' or some people call them 'Parameters' but Arguments and Parameters are the exact same thing. Basically, it needs some information to run the command. So if we go back to the Command Prompt/Terminal and it wants to know if you want to open the console or the skript editor. Because you are just starting out with no experience, just type ```console```
and you need to spell it **exactly**. Once you have typed in that, it's going to load the console up. You should have something like this:
```commandprompt
Do you want to open the console or the skript editor? console
Skript 1.0.4
Type "help" for more information.
>
```

Obviously, I probably don't have the same Skript version as you, but it doesn't really matter too much. You can type in ```say``` and it should say back ```print >``` Now, this is where the Arguments comes in. Type in 'Hello World!' your Command Prompt/Terminal should look like this:

```commandprompt
> say
print > Hello World!
Hello World!
> 
```

<details>
  <summary>How does the code work?</summary>
    
  ```batch
  
  if "%_inputname%"=="say" goto :print
  
  :print
  
  set /P _inputname=print ^> 
  
  set "pr=%_inputname%"
  
  echo %_inputname%
  
  goto :line
  
  :end
  ```
  
</details>

### Getting User Input

Now the rest of the coding is simple. To get input from the user just type quite simply 'get input from user', it should look something like this:
```commandprompt
Skript 1.0.4
Type "help" for more information.
> get input from user
```

<details>
  <summary>How does the code work?</summary>
    
  ```batch
  
  if "%_inputname%"=="get input from user" goto :input
  
  :input
  
  set /P _inputname=input ^> 

  set "in=%_inputname%"

  set /P _inputname=%_inputname%

  goto :line

  :end
  ```
  
</details>

### Displaying a shape in ASCII text

Let's create a shape in ASCII text, firstly type ```display in ASCII text``` then you can display either a triangle or square. I'm going to type ```square```, On my screen, it looks something like this:

```commandprompt
Skript 1.0.4
Type "help" for more information.
> display in ASCII text
asciidisplay [Triangle/Square]> square
___________
|         |
|         |
|         |
|_________|
>
```

When you type in triangle, it looks something like this:

```commandprompt
Skript 1.0.4
Type "help" for more information.
> display in ASCII text
asciidisplay [Triangle/Square]> triangle
    /\
   /##\
  /####\
 /######\
/________\
>
```

<details>
  <summary>How does the code work?</summary>
    
  ```batch
  if "%_inputname%"=="display in ASCII text" goto :asciidisplay
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
  ```
  
</details>

### Creating An Empty Window

Time to get advanced, let's try and create a resizable empty window. Type in `Open an empty window`, and it's that simple! If you have python installed, it should show an empty window.

![image](https://user-images.githubusercontent.com/65703529/100498981-eb0ab880-315d-11eb-9a3c-2e82d2925585.png)

<details>
  <summary>How does the code work?</summary>
    
  ```batch
  if "%_inputname%"=="open an empty window" goto :empwin
  :empwin
  cd __wins__
  py empwinun.py
  cd ..
  goto :line
  :end
  ```
  
</details>

## Creating A Window With Controls

<details>
  <summary>How does the code work?</summary>
    
  ```batch
if "%_inputname%"=="open a window with controls" goto :winwcontrol
:winwcontrol
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
  ```
  
</details>

### Labels

Time to get even more advanced, we are going to add controls to our window! Type in `open a window with controls` now, it wants an argument. The argument wants an integer, beacuse it wants to know how many controls you want. Let's put `1` then it wants to take in a control, let's put `label` beacuse we just want to display some text. Then it's going to ask what we want this **label** to say. I'm going to put `I like peanut butter sandwiches!`, now it wants a font. I have windows so I am going to put `Comic Sans MS` on mac it's called `Chalkboard` and on linux you won't have the **Comic Sans MS** font. So just put `Arial`. Now it wants to take in the font size, let's put `15`. It's going to show a new python window like this:

![image](https://user-images.githubusercontent.com/65703529/100499191-6de04300-315f-11eb-81af-b8156a62af09.png)

### Buttons

Now this is where configuration comes in, we are going to make buttons that do stuff! Type in `open a window with controls` now, it wants an argument. The argument wants an integer, beacuse it wants to know how many controls you want. Let's put `1` then it wants to take in a control, let's put `button` beacuse we want it so that we can click on it. Then it's going to ask what we want this **button's** background color. I'm going to put `pink`, now it wants a the **button's** text color. I'm going to put `green`, Now it wants what the **button** is going to say let's put `Click Me!`. It's going to show a new python window like this:

![clickbutton](https://user-images.githubusercontent.com/65703529/100499578-a59cba00-3162-11eb-98ed-301be767661b.gif)

Now, let's make this button do something. Go to where the repository is stored, go into `bin`, then into `__wins__` now open the file called `empwin.py` into some kind of text editor. You can use Atom, Notepad++. But I'm just going to be using the Python IDLE. Inside the file, you should see this:
```python
import tkinter as tk

root= tk.Tk() 
   
canvas1 = tk.Canvas(root, width = 350, height = 250) 
canvas1.pack()

def run_command():
    # Code
    return

# Control Button
# Control Label
# Control Font
# Control Check Box Var
# Control Check Button
# Control Entry
# Extra
# Pack
# Window

root.mainloop()

```

Where it says `# Code` is where we are going to put our code for when we press the button remove `# Code` and replace it with `print('They pressed the button!')` If you don't know python, in the Command Prompt/Terminal it's going to say `They pressed the button!` Let's go ahead and open the window again. Let's type `open a window with controls` then `1`, then `button`, then `pink`, then `green`, and finally `Click Me!`. Now, let's press the button and see what happens:

![image](https://user-images.githubusercontent.com/65703529/100506478-0200d900-3165-11eb-8ee8-cd19f45cf7dd.png)

We can see that when we press the button, it says `They pressed the button!` in the Command Prompt/Terminal! Now that it works, let's make it show a label that says `I like peanut butter sandwiches!` just like from before. So in `empwin.py` delete all the code and replace it with this code below:

```python
import tkinter as tk

root= tk.Tk() 
   
canvas1 = tk.Canvas(root, width = 350, height = 250) 
canvas1.pack()

def run_command():
    label1 = tk.Label(root, text='I like peanut butter sandwiches!')
    label1.config(font=('Arial', 15))
    label1.pack()
    canvas1.create_window(170, 130, window=label1)
    return

# Control Button
# Control Label
# Control Font
# Control Check Box Var
# Control Check Button
# Control Entry
# Extra
# Pack
# Window

root.mainloop()
```

Let's go ahead and open the window again. Let's type `open a window with controls` then `1`, then `button`, then `pink`, then `green`, and finally `Click Me!`. We can see that it's going to show us this:

![image](https://user-images.githubusercontent.com/65703529/100513740-66249c80-3167-11eb-80d1-fd30494c4b44.png)

It's extremely tempting to press it, so let's click on it and see what happens:

![image](https://user-images.githubusercontent.com/65703529/100513759-88b6b580-3167-11eb-801b-2590bea9e51f.png)

It works! It says `I like peanut butter sandwiches!`

## Integer-Based Commands

### Calculating '2+2'

I need some math for my maths homework! The good thing is I have got skript, Let's do some calculating. To start doing some math, type `calculate` now this command is unique to every other command. Because it needs more than 1 argument, so type the operation, in this case, '+', then the first number of the calculation. What I mean by this is let's say we have `a+b`, the first number of the calculation is `a`. Let's do the calculation 2 + 2, Make sure that when you do your calculation. Just make sure your numbers are under 2 billion or 2,147,483,647 or else it will show you an error. So let's type in the first number of the calculation '2', then. Now the last number of the calculation, 2, your screen should look like this:

```commandprompt
Skript 1.0.4
Type "help" for more information.
> calculate
mathf(operator) > +
mathf(int[1]) > 2
mathf(int[2]) > 2
4
>
```

<details>
  <summary>How does the code work?</summary>
    
  ```batch
if "%_inputname%"=="calculate" goto :mathf
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
  ```
  
</details>

## Executable Commands

### Exiting Skript

By typing 'Exit' we can exit skript. Finally! I am done with this documentation, please can I get a cup of coffee after all this work? * sips coffee * what a great way to end this 445-lines of documentation, at last!

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
10. [Integer-Based Commands](https://goldend60.github.io/Skript#integer-based-commands)
11. [Calculating '2 + 2'](https://goldend60.github.io/Skript#calculating-22)


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
### Getting User Input

Now the rest of the coding is simple. To get input from the user just type quite simply 'get input from user', it should look something like this:
```commandprompt
Skript 1.0.4
Type "help" for more information.
> get input from user
```

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

### Creating An Empty Window

Time to get advanced, let's try and create a resizable empty window. Type in `Open an empty window`, and it's that simple! If you have python installed, it should show an empty window.

![image](https://user-images.githubusercontent.com/65703529/100498981-eb0ab880-315d-11eb-9a3c-2e82d2925585.png)

### Creating A Window With Controls

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

## Executable Commands

### Exiting Skript

By typing 'Exit' we can exit skript. Finally! I am done with this documentation, please can I get a cup of coffee after all this work? * sips coffee * what a great way to end this 143-lines of documentation, at last!

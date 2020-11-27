import tkinter as tk

root= tk.Tk() 
   
canvas1 = tk.Canvas(root, width = 350, height = 250) 
canvas1.pack()

def run_command():
    # Code
    return

button1 = tk.Button (root,text='hi',command=run_command,bg='green',fg='green')
# Control Label
# Control Check Button
# Control Entry
# Control Listbox
# Control Message
# Control Radio Button
canvas1.create_window(170, 130, window=button1)

root.mainloop()

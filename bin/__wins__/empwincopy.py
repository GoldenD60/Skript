import tkinter as tk

root= tk.Tk() 
   
canvas1 = tk.Canvas(root, width = 350, height = 250) 
canvas1.pack()

def run_command():
    # Code
    return

# Control Button
label1 = tk.Label(root, text='Hello this is some very long text, anyways I like peanut butter sandwiches :)')
label1.config(font=('Comic Sans MS', 25))
# Control Check Button
# Control Entry
# Control Listbox
# Control Message
# Control Radio Button
canvas1.create_window(170, 130, window=label1)

root.mainloop()

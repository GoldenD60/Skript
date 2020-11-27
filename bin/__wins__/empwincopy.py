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
message1 = tk.Message(root, textvariable='hi')
# Control Radio Button
# Extra
message1.pack()
canvas1.create_window(170, 130, window=message1)

root.mainloop()

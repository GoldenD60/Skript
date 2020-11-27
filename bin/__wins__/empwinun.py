import tkinter as tk

root= tk.Tk() 
   
canvas1 = tk.Canvas(root, width = 350, height = 250) 
canvas1.pack()

canvas1.create_window(170, 130)

root.mainloop()

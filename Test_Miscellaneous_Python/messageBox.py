import tkinter as tk
from tkinter import messagebox

# import tkinter.simpledialog as simpledialog

root = tk.Tk()
root.withdraw()  # 小さなウィンドウを表示させない

# showinfo
res = messagebox.showinfo("title", "message")
print("showinfo", res)

import os
import tkinter as tk
from tkinter import messagebox

# root = tk.Tk()
# root.withdraw()  # 小さなウィンドウを表示させない
#
# # showinfo
# res = messagebox.showinfo("title", "message")
# print("showinfo", res)

if __name__ == '__main__':
    root = tk.Tk()
    root.withdraw()  # 小さなウィンドウを表示させない

    # showinfo
    res = messagebox.showinfo("title", os.path.abspath(__file__))
    print("showinfo", res)

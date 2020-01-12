import tkinter.simpledialog as sim
import glob
import os
import tkinter as tk
import tkinter.simpledialog as sim
from tkinter import messagebox
import send2trash


def Main():
    root = tk.Tk()
    root.withdraw()
    tmpPath = sim.askstring("oldフォルダ探索フォルダ指定", "oldフォルダを探索するフォルダパスを指定してください", initialvalue="")


if __name__ == '__main__':
    Main()

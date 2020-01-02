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
    ThrowAwayOld(tmpPath)


def ThrowAwayOld(baseFolderPath):
    """oldなフォルダを再帰的に探索しその中身ごとゴミ箱に送る"""
    if not os.path.isdir(baseFolderPath):
        messagebox.showerror("エラー", "存在しないフォルダパスです。")
        exit(1)

    rmNum = 0
    for f in glob.glob(baseFolderPath + '\\**', recursive=True):
        if os.path.isdir(f) and os.path.basename(f).lower() in ('old', '古い', '旧'):
            send2trash.send2trash(os.path.abspath(f))
            rmNum += 1

    messagebox.showinfo("正常終了", "処理が完了しました。\n" + str(rmNum) + "個の古いフォルダをゴミ箱に送りました。")


if __name__ == '__main__':
    Main()

#!/usr/bin/env python3
import tkinter as tk
import tkinter.simpledialog as sim


def fooB():
    print("Content-type: text/html\n")
    print("<html><body>")
    root = tk.Tk()
    root.withdraw()
    tmp = sim.askstring("Input Box", "INPUTBOX", initialvalue="")
    print('入力データを出力：', tmp)

    print("</body></html>")


def fooA():
    root = tk.Tk()
    root.geometry('240x850+500+600')
    # root.withdraw()
    test = sim.askstring("testing", "Enter your search string text")
    root.mainloop()
    print
    test


if __name__ == '__main__':
    fooA()

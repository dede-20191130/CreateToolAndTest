import time
import tkinter as tk
from tkinter import messagebox

if __name__ == '__main__':
    # 時刻によりランダムな変数取得
    temp = int((time.time_ns() % 100000000) / 100)
    # ６で割った余りを取得
    tempRmd = temp % 6
    if tempRmd == 0:
        tempRmd = 6
    # サイコロを振った結果としてメッセージで表示
    root = tk.Tk()
    root.withdraw()  # 小さなウィンドウを表示させない
    messagebox.showinfo("サイコロ", "出目は" + str(tempRmd) + "です")

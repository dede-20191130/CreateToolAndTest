import time
import tkinter as tk
from tkinter import messagebox


def diceResult():
    # 時刻によりランダムな変数取得
    temp = int((time.time_ns() % 100000000) / 100)
    # ６で割った余りを取得
    myTempRmd = temp % 6
    if myTempRmd == 0:
        myTempRmd = 6

    return myTempRmd


if __name__ == '__main__':
    # サイコロ結果を取得
    result = diceResult()
    # サイコロを振った結果としてメッセージで表示
    root = tk.Tk()
    root.withdraw()  # 小さなウィンドウを表示させない
    messagebox.showinfo("サイコロ", "出目は" + str(result) + "です")

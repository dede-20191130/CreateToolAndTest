import datetime
import glob
import os
import win32com.client
import tkinter as tk
import tkinter.ttk as ttk
from tkinter import messagebox


def automationAMF(path):
    # フレームを閉じる
    root.quit()

    # アプリケーション起動
    xlapp = win32com.client.Dispatch("Excel.Application")

    # ブックを開く
    workbook = xlapp.Workbooks.Open(path, UpdateLinks=0, ReadOnly=False)
    # シートを指定
    ws = None
    for i in range(1, workbook.Worksheets.Count):
        if workbook.Worksheets(i).Name.isnumeric():
            if len(workbook.Worksheets(i).Name) == 6:
                ws = workbook.Worksheets(i)
                break

    # 編集
    # (1)
    myDate = datetime.date.today()
    if myDate.day < 16:
        myDate -= datetime.timedelta(days=15)
    ws.Name = myDate.strftime('%Y%m')
    ws.Cells(3, 1).Value = myDate.strftime('%Y')
    ws.Cells(3, 6).Value = myDate.strftime('%m')
    # (2)
    ws.Range(ws.Cells(26, 5), ws.Cells(56, 8)).Value = ""
    # (3)
    entryTime = ws.Cells(3, 10).Value
    leavingTime = ws.Cells(3, 13).Value

    for cnt in range(26, 56):
        if ws.Cells(cnt, 3).Value not in ('土', '日', '祝'):
            ws.Cells(cnt, 5).Value = '出勤'
            ws.Cells(cnt, 7).Value = entryTime
            ws.Cells(cnt, 8).Value = leavingTime

    # 終了する
    xlapp.DisplayAlerts = False
    workbook.Save()
    workbook.close
    xlapp.DisplayAlerts = True

    root.withdraw()
    messagebox.showinfo("", "正常終了")


if __name__ == '__main__':
    # ルートフレームの作成
    root = tk.Tk()
    # rootウィンドウの大きさを320x240に
    root.geometry("640x100")

    # コンボボックスの作成(rootに配置,リストの値を編集不可(readonly)に設定)
    combo = ttk.Combobox(root, width=100, state='readonly')

    # リストの値を設定
    # 書類ファイル格納フォルダの中のすべてのファイルの名前を格納
    myPath = r'C:\Users\UserName\Test'
    myList = []
    if os.path.isdir(myPath):
        for file in glob.glob(myPath + '\\*'):
            if os.path.isfile(file):
                myList.append(os.path.abspath(file))
    combo["values"] = myList
    # デフォルトの値を(index=0)に設定
    combo.current(0)
    # コンボボックスの配置
    combo.pack(padx=5, pady=5, fill=tk.X)

    # ボタンの作成
    button = tk.Button(text="処理開始", command=lambda: automationAMF(combo.get()))
    # ボタンの配置
    button.pack(padx=5, pady=5, )

    root.mainloop()

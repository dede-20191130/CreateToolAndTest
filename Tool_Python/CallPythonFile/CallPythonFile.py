import glob
import os
import subprocess
import tkinter as tk
import tkinter.ttk as ttk


def main():
    # ルートフレームの作成
    root = tk.Tk()
    root.title(u"Pythonプログラム実行アシスト")
    # rootウィンドウの大きさ設定
    root.geometry("1200x500")

    # 選択可能なpythonファイルを辞書の値として設定
    # 指定フォルダ直下のすべてのpythonファイル（再帰的に検索）
    myPath = r'C:\Users\UserName\Test\ToolBox'
    myDic = {}
    if os.path.isdir(myPath):
        for file in glob.glob(myPath + '\\**', recursive=True):
            nameRoot, ext = os.path.splitext(os.path.basename(file))
            if os.path.isfile(file) and ext in ('.py', '.pyw') and nameRoot != '__init__':
                myDic[os.path.abspath(file)] = os.path.basename(file)

    # Frame設定
    frame1 = ttk.Frame(root, width=1200, height=300, padding=10)
    frame1.grid()
    frame1.columnconfigure(0, weight=1)
    frame1.grid_propagate(False)

    # //////ツリービューの設定
    tree = ttk.Treeview(frame1, height=8, selectmode="browse")

    # 列インデックスの作成
    tree["columns"] = (1, 2)

    # 表スタイルの設定
    tree["show"] = "headings"

    # 各列の設定
    tree.column(1, width=250)
    tree.column(2, width=1000)

    # 各列のヘッダー設定
    tree.heading(1, text="ファイル名")
    tree.heading(2, text="パス")

    # レコードの作成
    for k, v in sorted(myDic.items(), key=lambda x: x[1]):
        tree.insert("", "end", values=(str(v), str(k)))

    # ツリービューの配置
    tree.grid(row=0, column=0, columnspan=2, padx=5, pady=5, sticky=tk.N + tk.S + tk.E + tk.W)
    # //////////////////////

    # スクロールバーの設定
    hscrollbar = ttk.Scrollbar(frame1, orient=tk.HORIZONTAL, command=tree.xview)
    vscrollbar = ttk.Scrollbar(frame1, orient=tk.VERTICAL, command=tree.yview)
    tree.configure(xscrollcommand=hscrollbar.set)
    tree.configure(yscrollcommand=vscrollbar.set)
    vscrollbar.grid(row=0, column=1, columnspan=1, padx=5, pady=5, sticky=tk.NS)
    hscrollbar.grid(row=1, column=0, columnspan=1, padx=5, pady=5, sticky=tk.EW)

    # ボタンの作成
    button = tk.Button(text="実行", command=lambda: RunPythonFile(root, tree))
    # ボタンの配置
    button.grid(padx=5, pady=5, )

    root.mainloop()


def RunPythonFile(root, tree):
    # 表から選んだファイルパスを取得
    selectedItems = tree.selection()
    filePath = tree.item(selectedItems[0])['values'][1]

    # フレーム閉じる
    root.destroy()

    # pyファイル呼び出し実行
    subprocess.check_call(['python', filePath])


if __name__ == '__main__':
    main()

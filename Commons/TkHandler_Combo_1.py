import tkinter as tk
import tkinter.ttk as ttk


class TkHandler_Combo_1:
    """GUIの共通部品。コンボボックスを作成"""

    def __init__(self, rootTitle='タイトル', rootGeometry='640x480'):
        # ルートフレームの作成
        self.root = tk.Tk()
        self.root.title(rootTitle)
        # rootウィンドウの大きさを引数の値に
        self.root.geometry(rootGeometry)
        # クローズイベント設定
        self.root.protocol("WM_DELETE_WINDOW", self.on_closing)
        self.frame = None
        self.label = None
        self.combo = None
        self.button = None
        self.isDestroyed = False

    def createFrame(self):
        # フレームの作成
        self.frame = ttk.Frame(self.root, width=self.root.winfo_width() - 20, height=self.root.winfo_height() - 20,
                               padding=10)
        self.frame.pack()

    def createLabel(self, myText="選択してください"):
        # ラベルの作成
        self.label = ttk.Label(self.frame, text=myText, padding=(5, 5))
        self.label.pack()

    def createCombo(self, myWidth=None, myState='readonly', myValue=None, ):
        # widthの設定
        myWidth = myWidth or self.frame.winfo_width() - 20
        # コンボボックスの作成
        self.combo = ttk.Combobox(self.frame, width=myWidth, state=myState)
        self.combo["values"] = myValue
        # デフォルトの値を(index=0)に設定
        self.combo.current(0)
        # コンボボックスの配置
        self.combo.pack(padx=5, pady=5, fill=tk.X)

    def createButton(self, myText="実行", myFunc=None):
        """引数に関数をとる"""

        # # 関数の設定
        # myFunc = myFunc or self.dummy()

        # ボタンの作成
        if myFunc:
            self.button = tk.Button(text=myText, command=lambda: myFunc(self.combo.get()))
        else:
            self.button = tk.Button(text=myText, command=lambda: self.dummy())

        # ボタンの配置
        self.button.pack(padx=5, pady=5, )

    def dummy(self, arg=''):
        pass

    def mainLoop(self):
        self.root.mainloop()

    def on_closing(self):
        self.root.destroy()
        self.isDestroyed = True

    def __del__(self):
        if not self.isDestroyed:
            self.root.destroy()

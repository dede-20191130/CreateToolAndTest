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
        self.frame = None
        self.label = None
        self.combo = None
        self.button = None

    def createFrame(self):
        # フレームの作成
        self.frame = ttk.Frame(self.root, width=self.root.winfo_width() - 20, height=self.root.winfo_height() - 20,
                               padding=10)
        self.frame.pack()

    def createLabel(self):
        # ラベルの作成
        self.label = ttk.Label(self.frame, text='処理をするWebサイトを指定してください。', padding=(5, 5))
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

    def createButton(self, myText="実行", myFunc=pass):

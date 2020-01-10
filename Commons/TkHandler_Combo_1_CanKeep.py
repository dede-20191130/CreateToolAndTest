import tkinter as tk

# Common parts in my GitHub
# https://github.com/dede-20191130/CreateToolAndTest
from Commons.TkHandler_Combo_1 import TkHandler_Combo_1


class TkHandler_Combo_1_CanKeep(TkHandler_Combo_1):
    """
    処理ボタン押下後もツールを終了しないためのチェックボックスを実装
    """

    def __init__(self, rootTitle='タイトル', rootGeometry='640x480'):
        super(TkHandler_Combo_1_CanKeep, self).__init__(rootTitle, rootGeometry)
        self.keeping_check = None
        self.bl = None

    def create_keep_check(self, text='check box', is_initial=True):
        self.bl = tk.BooleanVar(value=is_initial)
        self.keeping_check = tk.Checkbutton(self.frame, text=text, variable=self.bl)
        self.keeping_check.pack()

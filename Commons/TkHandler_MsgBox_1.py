import tkinter as tk
from tkinter import messagebox


class TkHandler_MsgBox_1:
    """
    メッセージボックスのハンドリングクラス_1
    """

    def __init__(self):
        self.root = tk.Tk()
        self.root.attributes("-topmost", True)
        self.root.withdraw()

    def __del__(self):
        self.root.destroy()

    def __enter__(self):
        return self

    def __exit__(self, exc_type, exc_val, exc_tb):
        pass

    def normalMsgBox(self, title='メッセージ', content='ここにメッセージが表示されます。'):
        messagebox.showinfo(title, content)

    def errorMsgBox(self, title='エラー', content='エラーが発生しました。'):
        messagebox.showerror(title, content)

    @staticmethod
    def showStandardMessage(title, content, isError=False, errorTitle=None, errorContent=None):
        """
        標準的な用法でメッセージを表示する場合に用いる。
        Tkオブジェクトは再利用しない想定ですぐ解放する。

        :arg
            (error)title:(エラー)タイトル
            (error)content:(エラー)メッセージ内容
            isError:エラーが発生した場合はエラーメッセージを表示する。

        """
        with TkHandler_MsgBox_1() as objMsg:
            myTitle = title if not isError else errorTitle
            myContent = content if not isError else errorContent
            calledFunc = objMsg.normalMsgBox if not isError else objMsg.errorMsgBox

            calledFunc(title=myTitle, content=myContent)

    # @staticmethod
    # def showStandardMessage_AutoClose(title, content, isError=False, errorTitle=None, errorContent=None,
    #                                   close_time=2000):
    #     """
    #     標準的な用法でメッセージを表示する場合に用いる。
    #     Tkオブジェクトは再利用しない想定ですぐ解放する。
    #     自動でメッセージを閉じる
    #
    #     :arg
    #         (error)title:(エラー)タイトル
    #         (error)content:(エラー)メッセージ内容
    #         isError:エラーが発生した場合はエラーメッセージを表示する。
    #         close_time:メッセージを閉じるまでの時間
    #
    #     """
    #     with TkHandler_MsgBox_1() as objMsg:
    #         myTitle = title if not isError else errorTitle
    #         myContent = content if not isError else errorContent
    #         calledFunc = objMsg.normalMsgBox if not isError else objMsg.errorMsgBox
    #
    #         objMsg.root.after(close_time, lambda: calledFunc(title=myTitle, content=myContent))

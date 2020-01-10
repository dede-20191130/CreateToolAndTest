import glob
import os
import sys

# モジュール検索パスを再設定
# ダブルクリックによる起動にも対応できるようにする
sys.path.append(os.getenv("HOMEDRIVE") + os.getenv("HOMEPATH") + r"\PycharmProjects\CreateToolAndTest")
import shutil
import send2trash
# Common parts in dede-20191130's GitHub
# https://github.com/dede-20191130/CreateToolAndTest
from Commons.TkHandler_MsgBox_1 import TkHandler_MsgBox_1


def Main():
    isSuccess = True

    try:
        mySrcPath = r'C:/Users/UserName/MyFolder/Foo.'
        myDestpathList = [r'C:/Users/UserName/MyFolder/Bar.', r'C:/Users/UserName/MyFolder/Dede.']
        movedFileList = []

        # 指定フォルダ直下のすべての画像ファイルを取得
        if os.path.isdir(mySrcPath):
            for file in glob.glob(mySrcPath + '\\*', recursive=False):
                if os.path.isfile(file):
                    movedFileList.append(file)
        else:
            print('No Directory')
            exit(0)

        # 指定出力先フォルダにコピー
        for dst in myDestpathList:
            [shutil.copy(os.path.abspath(file2), dst) for file2 in movedFileList]
    except:
        isSuccess = False

    finally:
        if isSuccess:
            TkHandler_MsgBox_1.showStandardMessage('処理完了', 'ファイル移動が完了しました。')
            for file in glob.glob(mySrcPath + '\\*', recursive=False):
                send2trash.send2trash(os.path.abspath(file))


if __name__ == '__main__':
    Main()

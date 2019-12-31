import datetime
import sys

# モジュール検索パスを再設定
# ダブルクリックによる起動にも対応できるようにする
sys.path.append(r"C:\Users\UserName\PycharmProjects\CreateToolAndTest")
import os
import tkinter
from tkinter import messagebox
from PrivateTool.OutlookMailCreater.JsonHandler import JsonHandler
from PrivateTool.OutlookMailCreater.OutlookHandler import OutlookHandler
import traceback

if __name__ == '__main__':

    try:

        # messageウィンドウの準備
        root = tkinter.Tk()
        root.withdraw()
        root.attributes("-topmost", True)

        # outlook起動
        outlookHandler = OutlookHandler()
        outlookHandler.create()

        # jsonファイル操作オブジェクト
        jsonHandler = JsonHandler(os.path.join(os.path.dirname(os.path.abspath(__file__)), 'mailSetting.json'))

        # jsonから値を取得しリストに格納
        settingList = [jsonHandler.getParam_OneNest('mailFormat'), ]
        settingList.append(jsonHandler.getParam_OneNest('senderAddress'))
        tempSet = jsonHandler.getParam_OneNest('receiverAddressSet')
        settingList.append('; '.join(tempSet))
        tempSet = jsonHandler.getParam_OneNest('CC_AddressSet')
        settingList.append('; '.join(tempSet))
        tempSet = jsonHandler.getParam_OneNest('BCC_AddressSet')
        settingList.append('; '.join(tempSet))
        settingList.append(jsonHandler.getParam_OneNest('title'))
        settingList.append(jsonHandler.getParam_OneNest('attachedFileFolderPath'))
        settingList.append(jsonHandler.getParam_OneNest('body'))

        # ◆◆◆リストデータになにか処理を加える場合はここに記述◆◆◆
        # myDate = datetime.date.today()
        # if myDate.day < 16:
        #     myDate -= datetime.timedelta(days=15)
        # settingList[5] = settingList[5].replace('$date', myDate.strftime('%Y%m'))
        # ◆◆◆◆◆◆

        # outlookの新規メールアイテム作成
        outlookHandler.setting(*settingList)

        # メールアイテムの表示
        outlookHandler.display()
        outlookHandler.release()

        # アナウンス
        messagebox.showinfo("", "正常終了")

    except:
        print("Error", messagebox.showinfo("Error", "エラー発生"))
        traceback.print_exc()
    finally:
        pass

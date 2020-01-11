import os
import subprocess
import sys

# モジュール検索パスを再設定
# ダブルクリックによる起動にも対応できるようにする
sys.path.append(os.getenv("HOMEDRIVE") + os.getenv("HOMEPATH") + r"\PycharmProjects\CreateToolAndTest")
# Common parts in my GitHub
# https://github.com/dede-20191130/CreateToolAndTest
from Commons.JsonHandler import JsonHandler
from Commons.TkHandler_Combo_1_CanKeep import TkHandler_Combo_1_CanKeep
import webbrowser
from time import sleep

# global
jsonHandler = None
siteList = None
tkHandler = None
siteName = None


def Main():
    global jsonHandler
    global siteList
    global tkHandler
    global siteName
    # 項目取得
    jsonHandler = JsonHandler(
        r'C:/Users/UserName/MyFolder/Foo.json')
    siteList = jsonHandler.getAll_OneNest()
    # フォーム表示
    tkHandler = TkHandler_Combo_1_CanKeep('クイックブラウジング', '640x200')
    tkHandler.createFrame()
    tkHandler.createLabel('一括表示をするWebサイトを選択してください。')
    tkHandler.createCombo(myValue=siteList)
    tkHandler.create_keep_check('実行後終了しない場合はチェックしてください。')
    tkHandler.createButton(myFunc=get_name_and_open)
    tkHandler.mainLoop()


def get_name_and_open(argName=''):
    global tkHandler
    global siteName
    if not tkHandler.bl.get():
        tkHandler.onClosing()
    siteName = argName
    open_in_order()


def open_in_order():
    global jsonHandler
    global siteName
    # サイトが設定されていなければ正常終了
    # webページが登録されていなければ正常終了
    if siteName == None or not jsonHandler.getParam_TwoNest(siteName, 'OnlyOpenPage'):
        exit(0)

    # webサイトを順番に開く
    subprocess.Popen("start chrome /new-tab www.google.com --new-window", shell=True)
    sleep(1)
    browser = webbrowser.get(r'"' + os.getenv(r'ProgramFiles(x86)') + \
                             r'\Google\Chrome\Application\chrome.exe" %s')
    for url in jsonHandler.getParam_TwoNest(siteName, 'PageSet'):
        browser.open(url)


if __name__ == '__main__':
    Main()

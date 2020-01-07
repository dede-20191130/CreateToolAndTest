import os
import subprocess
import sys

# モジュール検索パスを再設定
# ダブルクリックによる起動にも対応できるようにする
sys.path.append(os.getenv("HOMEDRIVE") + os.getenv("HOMEPATH") + r"\PycharmProjects\CreateToolAndTest")
from Commons.JsonHandler import JsonHandler
from Commons.TkHandler_Combo_1 import TkHandler_Combo_1
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
        r'C:\Users\dede2\PycharmProjects\CreateToolAndTest\Tool_Python/QuickBrowsing/webSiteDetails.json')
    siteList = jsonHandler.getAll_OneNest()
    # フォーム表示
    tkHandler = TkHandler_Combo_1('クイックブラウジング', '640x200')
    tkHandler.createFrame()
    tkHandler.createLabel('処理をするWebサイトを選択してください。')
    tkHandler.createCombo(myValue=siteList)
    tkHandler.createButton(myFunc=getSiteName)
    tkHandler.mainLoop()

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
        browser.open_new(url)


def getSiteName(argName=''):
    global tkHandler
    global siteName
    tkHandler.onClosing()
    siteName = argName


if __name__ == '__main__':
    Main()

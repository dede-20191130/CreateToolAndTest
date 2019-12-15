from pathlib import Path

import pywintypes
import win32com.client


def excelVBARun():
    xlapp = win32com.client.Dispatch("Excel.Application")

    # 開く
    abspath = str(Path(r"C:\Users\dede2\OneDrive\デスクトップ\開発\Excelツール\個人的なテスト.xlsm").resolve())
    workbook = xlapp.Workbooks.Open(abspath, UpdateLinks=0, ReadOnly=True)

    # シート一覧
    print(workbook.Worksheets.Count)
    for i in range(0, workbook.Worksheets.Count):
        print(workbook.Worksheets[i].name)

    print('------------------------------------')

    # Moduleネームを取得
    for mod1 in workbook.VBProject.VBComponents:
        print(mod1.Name)

    print('------------------------------------')

    # マクロ実行_戻り値テスト
    res = xlapp.Application.Run("M_Others.pythonReturnValue", 7)
    print(res, )

    # マクロ実行_参照渡しテスト
    # # num2 = None
    # num2 = 1
    # # str2 = None
    # str2 = 'None'
    # res = xlapp.Application.Run("pythonReturnValue_2", num2, str2)
    # print(str(num2) + ':' + str2)
    num2 = 1
    str2 = 'ABC'
    res = xlapp.Application.Run("pythonReturnValue_3", num2, str2)
    print(res)
    print(res[0])
    print(res[1])

    # # 終了する
    # xlapp.Quit()


if __name__ == '__main__':
    excelVBARun()

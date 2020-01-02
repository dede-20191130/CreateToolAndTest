from pathlib import Path
import win32com.client


def SpeedTestAboutPic_VBA():
    # 操作対象ブックの絶対パスおよびファイル名取得
    abspath = str(Path(r"C:\Users\dede2\OneDrive\デスクトップ\開発\Excelツール\個人的なテスト.xlsm").resolve())
    bookName = Path(abspath).name

    # アプリケーション起動
    xlapp = win32com.client.Dispatch("Excel.Application")

    # ブックがすでに開かれているかどうかの判別真偽値取得
    isAlreadyOpen = False
    for i in range(0, xlapp.Workbooks.Count):
        if xlapp.Workbooks[i].name == bookName:
            isAlreadyOpen = True
            break

    # ブックを開くあるいはブックオブジェクトを取得
    if not isAlreadyOpen:
        workbook = xlapp.Workbooks.Open(abspath, UpdateLinks=0, ReadOnly=False)
    else:
        workbook = xlapp.Workbooks(bookName)

    # マクロ実行予定
    # for i in range(0, workbook.Worksheets.Count):
    #     print(workbook.Worksheets[i].name)

    # ブックを閉じる
    if not isAlreadyOpen:
        xlapp.DisplayAlerts = False
        workbook.close
        xlapp.DisplayAlerts = True


if __name__ == '__main__':
    SpeedTestAboutPic_VBA()

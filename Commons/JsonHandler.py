import json


class JsonHandler:
    def __init__(self, jsonPath):
        # jsonファイル読み込み
        self.file = open(jsonPath, 'r', encoding="utf-8_sig")
        self.jsonData = json.load(self.file)

    # 一次ネストのjsonデータ取得
    def getParam_OneNest(self, args):
        return self.jsonData[args]

    # 一次ネストのjsonデータ一覧取得
    def getAll_OneNest(self):
        list = []
        for d in self.jsonData.keys():
            list.append(d)
        return list

    # 二次ネストのjsonデータ取得
    def getParam_TwoNest(self, args1, args2):
        return self.jsonData[args1][args2]

    def __del__(self):
        # ファイル閉じる
        self.file.close()

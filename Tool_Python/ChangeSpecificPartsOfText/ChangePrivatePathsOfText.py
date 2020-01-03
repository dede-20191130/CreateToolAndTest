import os
import pathlib
import re
import chardet


def Main():
    with pathlib.Path(os.getenv("HOMEDRIVE") + os.getenv(
            "HOMEPATH") + r'\PycharmProjects\CreateToolAndTest\PrivateTool\ChangedString.txt') as pp:

        # 文字コードを検出
        with open(pp.absolute(), "rb") as f:
            temp = chardet.detect(f.read())['encoding']

        # 文字をインプット
        allText = pp.read_text(encoding=temp)
        # print(allText)

        # 正規表現による置換
        allText = re.sub(r'"[a-zA-Z]:[\\/].*[\."]', r'"C:/Users/UserName/MyFolder/Foo."', allText)
        allText = re.sub(r"'[a-zA-Z]:[\\/].*[\.']", r"'C:/Users/UserName/MyFolder/Foo.'", allText)

        # 置換後をアウトプット
        pp.write_text(allText, encoding=temp)


if __name__ == '__main__':
    Main()

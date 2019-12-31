from PrivateTool.OutlookMailCreater.OutlookHandler import *

def returnTest():
    return "100" + "円"


def test():
    print("aaa")
    print('Module Name: {}'.format(__name__))
    a = returnTest()
    print(returnTest())


if __name__ == '__main__':
    test()

print('AAA')

import functools


def add(a, b):
    return a + b


# 第一引数を凍結する関数
def add_pertial(ta):
    return functools.partial(add, b=ta)


def test3(*funcs):
    ret = 0
    for func in funcs:
        ret = func(ret)

    return ret


print(test3(add_pertial(1), add_pertial(2), add_pertial(3)))

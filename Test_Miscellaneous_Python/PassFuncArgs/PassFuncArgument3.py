import functools


def add(a, b):
    return a + b


# 第一引数を凍結する関数
def add_pertial(ta):
    return functools.partial(add, a=ta)


def test2(func):
    print(func)
    return func(b=2)


print(test2(add_pertial(1)))

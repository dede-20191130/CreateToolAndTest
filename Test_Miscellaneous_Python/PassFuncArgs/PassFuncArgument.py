def add(a, b):
    return a + b


def test1(func):
    print(type(func))  # <class 'function'>
    return func(1, 2)


test1(add)

class A(object):
    def me(self):
        return 'A'


class B(object):
    def me(self):
        return 'B'


class C(object):
    def me(self):
        return 'C'


class G(A, B, C):
    pass


g = G()
print(super(A, g).me())
print(
    super(B, g).me())
print(super(G, g).me())

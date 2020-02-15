import datetime


class Parent:
    def __init__(self):
        self.name = 'lemon'
        self.weight = 120

    def intro(self):
        return f'私は{self.name}。{self.weight}の重量を誇る。'


class Child(Parent):
    # def __init__(self):
    #     super.__init__()

    def intro_append(self):
        return f'ちょっと話がある。\n{self.intro()}\nそして今の時刻は{datetime.datetime.now()}である。'


obj = Child()
print(obj.intro())
print('')
print(obj.intro_append())

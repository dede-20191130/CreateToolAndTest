import datetime
import locale


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
        locale.setlocale(locale.LC_CTYPE, "Japanese_Japan.932")
        return f'ちょっと話がある。\n{self.intro()}\nそして今の時刻は{datetime.datetime.now().strftime("%Y年%m月%d日 %H:%M")}である。'


obj = Child()
print(obj.intro())
print('')
print(obj.intro_append())

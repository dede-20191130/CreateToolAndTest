import datetime

if __name__ == '__main__':
    myDate = datetime.date.today()
    myDate = datetime.date(2020, 1, 10)
    if myDate.day < 16:
        myDate -= datetime.timedelta(days=15)
    print(myDate)
    print(myDate.strftime('%Y%m'))

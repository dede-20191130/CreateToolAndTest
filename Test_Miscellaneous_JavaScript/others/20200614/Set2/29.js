/**
 * apply, callの使い方
 * 継承
 * コンストラクタ、プロトタイプを継承する
 */

function Phone(number) {
    this.phoneNumber = number;
    this.alertPhoneNumTop4 = function () {

        return typeof this.phoneNumber.slice === "function" ? this.phoneNumber.slice(0, 4) : null;
    }
}

function SmartPhone(number, wifiSpots) {
    this.wifiSpots = wifiSpots;
    // コンストラクタ継承
    Phone.call(this, number);
}

// プロトタイプ継承
SmartPhone.prototype = new Phone();

// インスタンス作成
var number = '08012345678',
    wifiSpots = ['Home', 'FreeWifi'];
var myPhone = new SmartPhone(number, wifiSpots);

console.log(myPhone.phoneNumber, myPhone.wifiSpots);
// -> "08012345678" ["Home", "FreeWifi"]
console.log(myPhone.alertPhoneNumTop4());
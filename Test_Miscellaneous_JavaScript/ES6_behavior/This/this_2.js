// グローバルオブジェクト
window.count = 10;

let Counter = function () {
    this.count = 0;
    this.getCount = function () {
        return "Current count Value is " + this.count;
    }
};

Counter.prototype.increment = function () {
    var self = this;
    setTimeout(function () {
        // thisはグローバルオブジェクトを参照しているため、window.countに加算される。
        self.count++;
        console.log(self.count); // => 11
    }, 1000);
};

let myCnt = new Counter();
let counter = myCnt.increment();
setTimeout(function () {
    console.log(myCnt.getCount());
}, 2000);
setTimeout(function () {
    myCnt.increment();
}, 2000);
setTimeout(function () {
    console.log(myCnt.getCount());
}, 4000);
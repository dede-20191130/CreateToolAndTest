// グローバルオブジェクト
window.count = 10;

let Counter = function () {
    this.count = 0;
    this.getCount = function () {
        return "Current count Value is " + this.count;
    }
};

Counter.prototype.increment = function () {
    setTimeout(function () {
        // thisはグローバルオブジェクトを参照しているため、window.countに加算される。
        this.count++;
        console.log(this.count); // => 11
    }, 1000);
};

myCnt = new Counter();
let counter = myCnt.increment();
setTimeout(function () {
    console.log(myCnt.getCount());
}, 2000);

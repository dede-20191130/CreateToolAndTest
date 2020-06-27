Function.prototype.myDefer = function (time) {
    setTimeout(this, time);
}

function f() {
    console.log("Hello!");
}

const f2 = (num) => {
    return Math.cos(Math.PI * num);
}

f.myDefer(1000); // 1秒後に "Hello!" が表示される
// console.log(f2.myDefer(2000)(1));
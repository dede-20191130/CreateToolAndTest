Function.prototype.myDefer = function (ms) {
    let self = this;
    return function () {
        let args = arguments;
        setTimeout(() => {
            self.apply(null, args);
        }, ms)
    }
}

function f(a, b) {
    console.log(a + b);
}

const f2 = (num) => {
    return Math.cos(Math.PI * num);
}

function f3(num) {
    console.log(Math.cos(Math.PI * num));
}

f.myDefer(1000)(1, 2); // 1秒後に 3 が表示される
console.log(f2.myDefer(1000)(1)); // 1秒後に 3 が表示される
// console.log(f3.myDefer(1000)(1)); // 1秒後に 3 が表示される
f3.myDefer(1000)(1); // 1秒後に 3 が表示される
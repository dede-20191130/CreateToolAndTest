function f(x) {
    console.log(x);
}

let delay = function (f, ms) {
    return function () {
        let newThis = this;
        let args = arguments;
        setTimeout(function () {
            f.apply(newThis,args);
        }, ms);
    }
}

// ラッパーを作成
let f1000 = delay(f, 1000);
let f1500 = delay(f, 1500);

f1000("test_1_foo"); // "test" は 1000ms 後に表示
f1500("test_2_bar"); // "test" は 1500ms 後に表示
let debounce = (f, ms) => {
    let rtnFunc = function () {
        let nowT = new Date().getTime()
        let deltaT = nowT - rtnFunc.lastRunT;
        if (deltaT >= 1000) {
            rtnFunc.lastRunT = nowT;
            return f.apply(this, arguments);
        }
    }
    rtnFunc.lastRunT = 0;

    return rtnFunc;
}

let f = debounce(console.log, 1000);

f(1); // すぐに実行される
f(2); // 無視される

setTimeout(() => f(3), 100); // 無視される (100 ms だけ経過した)
setTimeout(() => f(4), 1100); // 実行される
setTimeout(() => f(5), 1500); // 無視される (最後の実行から 1000ms 経過していない)
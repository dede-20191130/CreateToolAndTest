let debounce = (f, ms) => {

    let isCooldown = false;

    return function () {
        if (isCooldown) return;

        f.apply(this, arguments);

        isCooldown = true;

        setTimeout(() => isCooldown = false, ms);
    };

}

let f = debounce(console.log, 1000);

f(1); // すぐに実行される
f(2); // 無視される

setTimeout(() => f(3), 100); // 無視される (100 ms だけ経過した)
setTimeout(() => f(4), 1100); // 実行される
setTimeout(() => f(5), 1500); // 無視される (最後の実行から 1000ms 経過していない)
function f(a) {
    console.log(a)
};

function throttle(f, ms) {

    let isCooldown = false;
    let lastStoredArgs = null;
    let lastStoredThis = null;

    return function () {
        if (isCooldown) {
            lastStoredThis = this;
            lastStoredArgs = arguments;
            return;
        }

        f.apply(this, arguments);

        isCooldown = true;

        setTimeout(() => {
            if (lastStoredArgs !== null) f.apply(this, lastStoredArgs);
            lastStoredThis = lastStoredArgs = null;
            isCooldown = false;
        }, ms);
    };

}

// f1000 は、1000ms 毎に最大1回 f へ呼び出しを渡します
let f1000 = throttle(f, 1000);

f1000(1); // shows 1
f1000(2); // (throttling, 1000ms not out yet)
f1000(3); // (throttling, 1000ms not out yet)
setTimeout(() => f1000(4), 1000);
setTimeout(() => f1000(5), 1100);
setTimeout(() => f1000(6), 1200);
setTimeout(() => f1000(7), 3000);
setTimeout(() => f1000(8), 3010);
setTimeout(() => f1000(9), 3020);
setTimeout(() => f1000(10), 3030);
setTimeout(() => f1000(11), 3040);
setTimeout(() => f1000(12), 4500);
setTimeout(() => f1000(13), 4510);

// when 1000 ms time out...
// ...outputs 3, intermediate value 2 was ignored
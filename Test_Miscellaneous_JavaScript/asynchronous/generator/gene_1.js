// co をインストールしておく
// $ npm install co
console.log('start');

function puts(str) {
    return new Promise(function (resolve) {
        setTimeout(function () {
            resolve(str);
        }, 1000);
    });
}

const co = require('co');
co(function* () {
    const res1 = yield puts('1');
    console.log(res1);

    const res2 = yield puts('2');
    console.log(res2);

    const res3 = yield puts('3');
    console.log(res3);
});

console.log('end');
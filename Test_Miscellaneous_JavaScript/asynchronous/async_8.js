console.log('start');

function puts(str) {
    return new Promise(function (resolve) {
        setTimeout(function () {
            resolve("this is " + str);
        }, 1000);
    });
}


const promises = [
    puts(1),
    puts(2),
    puts(3)
];

// const toString = Object.prototype.toString;
// console.log(toString.call(promises));
// console.log(toString.call(promises[1]));

// 並列処理に対してPromise.allを使う
Promise.all(promises).then(function (results) {
    console.log(results);
});

console.log('end');
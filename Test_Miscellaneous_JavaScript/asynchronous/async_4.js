//コールバック関数を別に定義
const logResult = function () {
    console.log(2);
};

console.log(1);
setTimeout(logResult, 1000);
console.log(3);
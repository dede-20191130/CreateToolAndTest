const syncBuyApple = function (payment) {
    if (payment >= 150) {
        return {change: payment - 150, error: null};
    } else {
        return {change: null, error: 150 - payment + '円足りません。'};
    }
};

const rtn = syncBuyApple(200);
console.log(rtn);
console.log(rtn["change"]);
console.log(rtn.change);

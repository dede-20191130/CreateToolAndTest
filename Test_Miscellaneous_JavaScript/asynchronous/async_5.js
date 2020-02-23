//150円のりんごを１つ買う関数
//第一引数に支払い金額
//第二引数にコールバック関数
//おつりを計算してコールバック関数に渡す
const asyncBuyApple = function (payment, callback) {
    setTimeout(function () {
        if (payment >= 150) {
            callback(payment - 150, null);
        } else {
            callback(null, '金額が足りません。');
        }
    }, 1000);
};


//りんごをたくさん買う場合（コールバック地獄）
asyncBuyApple(500, function (change, error) {
    if (change !== null) {
        console.log('１回目のおつりは' + change + '円です。');
        asyncBuyApple(change, function (change, error) {
            if (change !== null) {
                console.log('２回目のおつりは' + change + '円です。');

                asyncBuyApple(change, function (change, error) {
                    if (change !== null) {
                        console.log('３回目のおつりは' + change + '円です。');
                    }
                    if (error !== null) {
                        console.log('３回目でエラーが発生しました：' + error);
                    }
                });
            }
            if (error !== null) {
                console.log('２回目でエラーが発生しました：' + error);
            }
        });
    }
    if (error !== null) {
        console.log('１回目でエラーが発生しました：' + error);
    }
});
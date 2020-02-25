const promiseBuyApple = function (payment) {
    return new Promise(function (resolve, reject) {
        if (payment >= 150) {
            resolve(payment - 150);
        } else {
            reject('金額が足りません。');
        }
    });
};

const branch = false;

if (branch) {
    //りんごをひとつ買う
    promiseBuyApple(400).then(function (change) {
        console.log('おつりは' + change + '円です');
    }).catch(function (error) {
        console.log('エラーが発生しました：' + error);
    });
} else {
//りんごをたくさん買う
    promiseBuyApple(400).then(function (change) {
        console.log('おつりは' + change + '円です');
        return promiseBuyApple(change);
    }).then(function (change) {
        console.log('おつりは' + change + '円です');
        return promiseBuyApple(change);
    }).then(function (change) {
        console.log('おつりは' + change + '円です');
    }).catch(function (error) {
        console.log('エラーが発生しました：' + error);
    });
}

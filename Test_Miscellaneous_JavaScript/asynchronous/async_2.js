function sleep(callbackXXX) {
    setTimeout(function () {
        callbackXXX(null, '現在時刻:' + new Date());
    }, 1000);
}

sleep(function (err, res) {
    console.log(res);
    sleep(function (err, res) {
        console.log(res);
        sleep(function (err, res) {
            console.log(res);
        });
    });
});
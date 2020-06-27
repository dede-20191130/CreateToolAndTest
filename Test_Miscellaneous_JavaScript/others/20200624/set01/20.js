let promise = new Promise(function (resolve, reject) {
    setTimeout(() => resolve((d) => {
        return d.getTime();
    }), 1000);
});

// resolve は .then の最初の関数を実行する
promise.then(
    // result => {
    //     if (1 + 1 === 3) return;
    //     console.log(result(new Date(2020, 1, 1)));
    // }, // 1秒後に "done!" を表示
    result => console.log(result.__proto__.__proto__.__proto__),
    error => console.log(error) // 実行されない
);
// 実行: catch -> catch -> then
new Promise(function (resolve, reject) {

    throw new Error("Whoops!");

}).catch(function (error) { // (*)

    if (error instanceof URIError) {
        // エラー処理
        console.log("111");
        return 111;
    } else {
        console.log("Can't handle such error");

        throw error; // ここで投げられたエラーは次の catch へジャンプします
    }

}).then(function () {
    console.log("111");
    return 111;
    /* 実行されません */
}).catch(error => { // (**)

    console.log(`The unknown error has occurred: ${error}`);
    // 何も返しません => 実行は通常通りに進みます

});
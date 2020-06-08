function makeWorker() {
    let name = "Pete";

    return function () {
        console.log(name);
    };
}

let name = "John";

// 関数を作成
let work = makeWorker();

// 呼び出し
work(); // 何が表示されるでしょう?
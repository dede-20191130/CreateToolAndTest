let i = 0;

let start = Date.now();

function count() {

    // 開始時にスケジューリングを移動する
    if (i < 1e9 - 1e6) {
        setTimeout(count, 0); // 新しい呼び出しをスケジュール
    }

    do {
        i++;
    } while (i % 1e6 !== 0);

    if (i === 1e9) {
        console.log("Done in " + (Date.now() - start) + 'ms');
    }

}

count();
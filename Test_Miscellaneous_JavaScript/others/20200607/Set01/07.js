let i = 0;

let start = Date.now();

function count() {

    // 重い処理の一部を実行 (*)
    do {
        i++;
    } while (i % 1e6 !== 0);

    if (i === 1e9) {
        console.log("Done in " + (Date.now() - start) + 'ms');
    } else {
        setTimeout(count, 0); // 新しい呼び出しをスケジュール (**)
    }

}

count();
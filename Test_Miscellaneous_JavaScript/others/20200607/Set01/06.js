let i = 0;

let start = Date.now();

function count() {

    // 重い処理を実行
    for (let j = 0; j < 1e9; j++) {
        i++;
    }

    console.log("Done in " + (Date.now() - start) + 'ms');
}

count();
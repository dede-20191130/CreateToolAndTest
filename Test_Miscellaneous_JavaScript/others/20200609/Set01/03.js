function hoge(a, b, c) {
    for (let i of arguments) {
        console.log(i);
    }
}

hoge(1, 2, 3);
// 1
// 2
// 3
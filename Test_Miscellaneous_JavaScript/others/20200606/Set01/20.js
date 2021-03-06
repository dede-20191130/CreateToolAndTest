function makeArmy() {
    let shooters = [];

    // let i = 0;
    // while (i < 10) {
    //     let shooter = function () { // 射手(shooter) 関数
    //         console.log(i); // その番号を表示するべき
    //     };
    //     shooters.push(shooter);
    //     i++;
    // }
    for (let i = 0; i < 10; i++) {
        let shooter = function () { // 射手(shooter) 関数
            console.log(i); // その番号を表示するべき
        };
        shooters.push(shooter);
    }

    return shooters;
}

let army = makeArmy();

army[0](); // 射手 番号 0 表示 10
army[5](); // また 番号 5 ですが表示は 10...
army[9](); // また 番号 5 ですが表示は 10...
// ... すべての射手は 0, 1, 2, 3... の代わりに 10 が表示されます
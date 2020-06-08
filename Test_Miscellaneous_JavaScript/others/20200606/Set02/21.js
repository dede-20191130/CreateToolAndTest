function makeArmy() {
    let shooters = [];

    let i = 0;
    while (i < 10) {
        let altI = i
        let shooter = function () { // 射手(shooter) 関数
            console.log(altI); // その番号を表示するべき
        };
        shooters.push(shooter);
        i++;
    }

    return shooters;
}

let army = makeArmy();

army[0](); // 射手 番号 0 表示 10
army[5](); // また 番号 5 ですが表示は 10...
// ... すべての射手は 0, 1, 2, 3... の代わりに 10 が表示されます
function makeCounter() {
    let count = 0;
    return function () {
        return count++;
    };
}

let counterBase = makeCounter();
let counter1 = counterBase;
let counter2 = counterBase;

console.log(counter1()); // 0
console.log(counter1()); // 1

console.log(counter2()); // not →　0 (独立))
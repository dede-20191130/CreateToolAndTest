let count = 0;

function makeCounter() {

    return function () {
        return count++; // 外の counter へアクセスできます
    };
}

let counter = makeCounter();

console.log(counter()); // 0
console.log(counter()); // 1
console.log(counter()); // 2
console.log(count);
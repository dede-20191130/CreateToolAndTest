function sayHi() {
    console.log("Hi");

    // 何度実行したかカウントしましょう
    if (sayHi.counter === undefined) sayHi.counter = 10;
    sayHi.counter++;
}

console.log(typeof sayHi.counter);
console.log(sayHi.counter);
sayHi();
console.log(typeof sayHi.counter);
console.log(sayHi.counter);
sayHi();
console.log(typeof sayHi.counter);
console.log(sayHi.counter);
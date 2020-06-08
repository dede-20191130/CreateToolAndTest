function sayHi(name1 = "UUUUU") {
    console.log('Hello   ' + name1);
}

console.log(setTimeout(sayHi, 1000));
console.log(setTimeout(sayHi, 1500, "Mike"));
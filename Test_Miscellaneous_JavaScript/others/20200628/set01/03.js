function* pseudoRandom(initial) {
    let next, previous;
    next = initial;
    while (true) {
        previous = next;
        next = previous * 16807 % 2147483647;
        yield next;
    }
}

let generator = pseudoRandom(10000);

console.log(generator.next().value); // 16807
console.log(generator.next().value); // 282475249
console.log(generator.next().value);
console.log(generator.next().value);
console.log(generator.next().value);
console.log(generator.next().value);
console.log();

let cnt = 0;
for (let i of pseudoRandom(1)) {
    if (cnt++ > 9) break;
    console.log(i);
    console.log(cnt);
}
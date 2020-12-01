function* generateSequence() {
    yield 1;
    yield 2;
    return 3;
}

let generator = generateSequence();

let one = generator.next();

console.log(typeof one);
console.log(one);
console.log(JSON.stringify(one)); // {value: 1, done: false}

one = generator.next();

console.log(one);
console.log(JSON.stringify(one)); // {value: 1, done: false}

one = generator.next();

console.log(one);
console.log(JSON.stringify(one)); // {value: 1, done: false}

console.log(Array.from(generator));
console.log(Array.from(generateSequence()));
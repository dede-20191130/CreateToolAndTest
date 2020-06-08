function f1(a) {
    return "this is " + a;
}

function f2(a, b) {
    return f1(a);
}

function many(a, b, ...more) {
    return f2(a, b);
}

console.log(f1.length); // 1
console.log(f2.length); // 2
console.log(many.length); // 2
console.log(many(123, "B"));
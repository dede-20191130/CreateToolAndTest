let preSum = (a, b) => {
    return (a + b);
}

let sum = (a) => {
    return (b) => (a + b);
}

console.log(preSum(1, 2));
console.log(sum(1)(2));
console.log(sum(5)(-1));
console.log(sum(100)(101));
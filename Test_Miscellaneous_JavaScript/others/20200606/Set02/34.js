function pow(x, n) {
    return n === 1 ? x : x * pow(x, n - 1);

}

let myPow = function newPow(x, n) {
    return n === 1 ? x : x * newPow(x, n - 1);
}

console.log(pow(2, 3)); // 8
console.log(pow(5, 4));
console.log(myPow(2, 3));
console.log(myPow(5, 4));
const sum = (x) => {
    const nextSum = function nS(y) {
        nextSum.total += y;
        return nS;
    }
    nextSum.total = x;
    nextSum.valueOf = () => {
        return nextSum.total;
    }
    nextSum.toString = () => ("" + nextSum.total);
    return nextSum;
}

console.log("" + sum(1)(2));
console.log(+sum(6)(-1)(-2)(-3))
console.log("" + sum(0)(1)(2)(3)(4)(5));
console.log(sum(1)(2) == 3);
console.log(sum(1)(2)(3) == 6);
console.log(sum(0)(1)(2)(3)(4)(5) == 15);
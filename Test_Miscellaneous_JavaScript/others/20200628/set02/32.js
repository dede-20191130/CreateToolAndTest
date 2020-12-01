function func1(func, num) {
    return function (...args) {
        return func.call(this, num, ...args);
    }
}

let obj = {
    meth1: func1((a, b, c) => (a + b - c), 10)
}

console.log(obj.meth1(7, 24));
console.log(obj.meth1(142, 1));
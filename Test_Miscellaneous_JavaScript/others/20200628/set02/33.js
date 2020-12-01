function curry(func) {

    return function curried(...args) {
        if (args.length >= func.length) {
            return func.apply(this, args);
        } else {
            return function (...args2) {
                return curried.apply(this, args.concat(args2));
            }
        }
    };

}

function sum(a, b, c) {
    return a + b + c;
}

let curriedSum = curry(sum);

// 通常通り呼ぶことも出来ます
console.log(curriedSum(1, 2, 3)); // 6

// curried(1)で部分を取得し、他の2つの引数で呼び出す
console.log(curriedSum(1)(2, 3)); // 6

// 完全にカリー化された呼び出し
console.log(curriedSum(1)(2)(3)); // 6


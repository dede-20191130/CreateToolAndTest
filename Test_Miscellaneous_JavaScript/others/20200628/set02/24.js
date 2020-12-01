let array = [1, 2, 3];

array = new Proxy(array, {
    /* your code */
    get(target, p, receiver) {
        if ((target.length + +p) in target) p = target.length + +p;
        return Reflect.get(target, p, receiver);
    }
});
console.log(array[1]);
console.log(array[2]);
console.log(array[-1]); // 3
console.log(array[-2]); // 2
console.log(array[-3]); // 2
console.log(array.sort((a, b) => (-a + b))); // 2

// 他の配列の機能は "そのまま" 動作すべきです
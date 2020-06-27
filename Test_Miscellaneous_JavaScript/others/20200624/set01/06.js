// 1つメソッドを追加しています(その他のことももちろん可能です)
class PowerArray extends Array {
    isEmpty() {
        return this.length === 0;
    }

    static get [Symbol.species]() {
        return Array;
    }

}

let arr = new PowerArray(1, 2, 5, 10, 50);
console.log(arr.isEmpty()); // false
console.log(arr.constructor === PowerArray);


let filteredArr = arr.filter(item => item >= 10);
console.log(filteredArr.constructor === PowerArray);
console.log(filteredArr.constructor === Array);
console.log(filteredArr); // 10, 50
// console.log(filteredArr.isEmpty()); // false

console.log(arr.__proto__ === PowerArray.prototype);
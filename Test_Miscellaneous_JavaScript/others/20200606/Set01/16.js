let inBetween = (a, b) => {
    return (item) => (item >= a && item <= b);
}
let inArray = (arrForIn = []) => {
    return (item) => (arrForIn.includes(item));
}

let arr = [1, 2, 3, 4, 5, 6, 7];

console.log(arr.filter(inBetween(3, 6))); // 3,4,5,6
console.log(arr.filter(inBetween(2, 9))); // 3,4,5,6

console.log(arr.filter(inArray([1, 2, 10]))); // 1,2
console.log(arr.filter(inArray([3, 6, 9, 12, 15]))); // 1,2
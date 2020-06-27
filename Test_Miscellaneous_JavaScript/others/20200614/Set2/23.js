let arr = [1, 2, 3];

// Array.prototype から継承している?
console.log(arr.__proto__ === Array.prototype); // true

// 次に Object.prototype からは継承している?
console.log(arr.__proto__.__proto__ === Object.prototype); // true

// そしてトップの null
console.log(arr.__proto__.__proto__.__proto__); // null
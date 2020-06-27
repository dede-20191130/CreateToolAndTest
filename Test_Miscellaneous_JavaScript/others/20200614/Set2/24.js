// let obj = () => {
// };
function obj() {

}

// Array.prototype から継承している?
console.log(obj.__proto__ === Array.prototype); // true
console.log(obj.__proto__ === Function.prototype); // true

// 次に Object.prototype からは継承している?
console.log(obj.__proto__.__proto__ === Object.prototype); // true

// そしてトップの null
console.log(obj.__proto__.__proto__.__proto__); // null
console.dir(obj,{depth:2});
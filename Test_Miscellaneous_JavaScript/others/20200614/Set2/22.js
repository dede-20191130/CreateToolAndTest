function A() {
    this.prop1 = "AAA";

}

function B() {
    this.prop1 = "BXXXX";

}
// Object.defineProperty(A, "prototype", {
//     writable: false,
//     configurable: false
// })

// A.prototype = {
//     constructor.prop1: "BBBC",
// };

// A.prototype = Date;
// A.prototype.constructor = Date;
// A.prototype.constructor = B;
// A.prototype = {
//     constructor:A,
// }
A.prototype = {
    constructor:B,
}

let obj = new A();


let obj2 = new obj.constructor();
console.log(obj2.constructor);
console.log(obj2.prop1);
function Parent() {
    this.toString = function () {
        return "dog";
    }

}
// Parent.prototype.__proto__ = String.prototype;

Parent.prototype.func1 = function (num) {
    return num * 2;
}

let obj = {};
Object.setPrototypeOf(obj, new Parent());

console.log(obj.toString()); // "[object Object]" ?
console.dir(obj); // "[object Object]" ?
console.dir(obj + ""); // "[object Object]" ?
console.log(new Parent().toString()); // "[object Object]" ?
console.log(obj.func1(12)); // "[object Object]" ?
console.log(new Parent().func1(23)); // "[object Object]" ?
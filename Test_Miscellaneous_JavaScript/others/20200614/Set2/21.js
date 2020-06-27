function A() {
    this.prop1 = "AAA";
    Object.defineProperty(this, "constructor", {
        value: this.constructor,
        writable: false,
        configurable: false
    })
}

let obj = new A();


let obj2 = new obj.constructor();
console.log(obj2.prop1);
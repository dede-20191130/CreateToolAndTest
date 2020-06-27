function f1(num, num2) {
    let self;
    if (!this.hasOwnProperty("counter")) {
        self = {
            counter: 1,
        }
    } else {
        self = this;
    }
    return self.counter * num - num2;
}

let obj = {
    counter: 120,
}

console.log(f1());
console.log(f1.bind(obj)());
console.log(f1.bind(obj, 10, 100)());
console.log(f1.bind(obj, 30, 500)());
console.log(f1.bind(null, 10, 100)());
console.log(f1.bind(null, 30, 500)());




function Rabbit() {
    this.p1 = "aaa";
    this.f1 = () => {
        return 1234;
    };
}

// デフォルトでは:
// Rabbit.prototype = { constructor: Rabbit }

let rabbit = new Rabbit(); // {constructor: Rabbit} の継承

console.log(rabbit.constructor === Rabbit); // true (prototype から)
let newRabbit = new rabbit.constructor();
console.log(newRabbit.p1);
console.log(newRabbit.f1());
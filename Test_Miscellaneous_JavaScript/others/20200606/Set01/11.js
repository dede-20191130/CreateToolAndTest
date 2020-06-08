function Counter() {
    this.count = 0;

    this.up = function () {
        return ++this.count;
    };
    this.down = function () {
        return --this.count;
    };
}

let counter = new Counter();

console.log("count is " + counter.count);
console.log(counter.up()); // ?
console.log(counter.up()); // ?
console.log(counter.up()); // ?
console.log(counter.up()); // ?
console.log(counter.up()); // ?
console.log(counter.up()); // ?
console.log(counter.down()); // ?
console.log("count is " + counter.count);
console.log(counter.down()); // ?
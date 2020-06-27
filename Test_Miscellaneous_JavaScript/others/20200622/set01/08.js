let animal = {
    eats: true
};

let rabbit = Object.create(animal, {
    jumps: {
        value: true,
        writable:false
    },
    func1: {
        value: () => (1234),
        enumerable: false,
        writable: false
    }
});

console.log(rabbit.jumps); // true
console.log(rabbit.func1()); // true
rabbit.jumps = "OK";
console.log(rabbit.jumps); // true
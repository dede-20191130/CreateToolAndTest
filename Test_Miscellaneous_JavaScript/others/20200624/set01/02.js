class Rabbit extends Object{
    constructor(name) {
        super();
        this.name = name;
    }
}

let rabbit = new Rabbit("Rab");

// hasOwnProperty メソッドは Object.prototype からです
// rabbit.__proto__ === Object.prototype
console.log(rabbit.hasOwnProperty('name')); // true
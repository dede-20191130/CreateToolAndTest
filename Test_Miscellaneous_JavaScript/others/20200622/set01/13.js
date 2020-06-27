// 以前と同じ Animal
function Animal(name) {
    this.name = name;
}

// すべての animals 食べることができますよね?
Animal.prototype.eat = function () {
    console.log(this.name + ' eats.');
};

// 以前と同じ Rabbit
function Rabbit(name) {
    this.name = name;
}


// 継承チェーンを設定します
// Rabbit.prototype.__proto__ = Animal.prototype; // (*)
// Object.setPrototypeOf(Rabbit.prototype, Animal.prototype);
Rabbit.prototype = Object.create(Animal.prototype);


Rabbit.prototype.jump = function () {
    console.log(this.name + ' jumps!');
};

let rabbit = new Rabbit("White Rabbit Mike");
rabbit.eat(); // rabbits も食べることができる
rabbit.jump();


let animal = {
    name: "Animal",
    eat() {
        console.log(this.name + " eats.");
    }
};

let rabbit = {
    __proto__: animal,
    name: "Rabbit",
    eat() {
        // ...bounce around rabbit-style
        // 親 (animal) メソッドを呼び出す
        // this.__proto__.eat.call(this); // (*)
        super.eat();
    }
};

let longEar = {
    __proto__: rabbit,
    name: "Long Ear",
    eat() {
        // ...do something with long ears
        // 親 (rabbit) メソッドを呼び出す
        // this.__proto__.eat.call(this); // (**)
        super.eat();
    }
};

longEar.eat(); // Error: 最大呼び出しスタックサイズを超えました
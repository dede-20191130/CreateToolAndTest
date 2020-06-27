// animal がメソッドを持っています
let animal = {
    walk() {
        if (!this.isSleeping) {
            console.log(`I walk`);
        }
    },
    sleep() {
        this.isSleeping = true;
    }
};

let rabbit = {
    name: "White Rabbit",
    __proto__: animal
};

// rabbit.isSleeping を変更する
rabbit.sleep();

console.log(rabbit.isSleeping); // true
console.log(animal.isSleeping); // undefined (prototype にそのようなプロパティはありません)

let obj = {
    isSleeping: false,
}

animal.walk.bind(obj)();
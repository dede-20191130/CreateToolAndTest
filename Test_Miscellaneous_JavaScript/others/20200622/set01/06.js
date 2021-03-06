let animal = {
    eats: true,
    walk() {
        console.log("Animal walk");
    }
};

let rabbit = {
    jumps: true,
};
Object.setPrototypeOf(rabbit, animal);

let longEar = {
    earLength: 10,
}

Object.setPrototypeOf(longEar, rabbit);

// walk は prototype チェーンから取られました
longEar.walk(); // Animal walk
console.log(longEar.jumps); // true (rabbit から)

animal.func1 = () => {
    return "asd"
};

console.log(longEar.func1());
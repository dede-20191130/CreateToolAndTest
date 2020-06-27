function Animal() {
    this.ears = true;
    this.walk = () => {
        console.log("FFFF");
    }
}

function Rabbit() {
    this.jumps = true;
    this.__proto__ = new Animal();
}

let rabbit = new Rabbit();
if (rabbit.jumps) rabbit.walk();
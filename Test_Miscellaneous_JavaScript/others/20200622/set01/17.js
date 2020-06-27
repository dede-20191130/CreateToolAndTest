class Animal {

    constructor(name) {
        this.speed = 0;
        this.name = name;
    }

    run(speed) {
        this.speed += speed;
        console.log(`${this.name} runs with speed ${this.speed}.`);
    }

    stop() {
        this.speed = 0;
        console.log(`${this.name} stopped.`);
    }

}

class Rabbit extends Animal {
    constructor(name) {
        super(name);
    }
    hide() {
        console.log(`${this.name} hides!`);
    }

    stop() {
        super.stop(); // 親の stop 呼び出し
        this.hide(); // その後隠す
    }

    slowStop() {
        // setTimeout(() => super.stop(), 1000); // 1秒後親の stop 実行

        // let mySuper = super;
        // setTimeout(function () {
        //     mySuper.stop();
        // },1000)

        // setTimeout(function () {
        //     super.stop();
        // }.bind(super), 1000);

        // let superM = super.stop;
        // setTimeout(function () {
        //     superM.bind(this)();
        // }, 1000);

        let superM = super.stop;
        setTimeout(superM.bind(this), 1000);
    }
}

let rabbit = new Rabbit("White_Rabbit");

rabbit.run(5); // White Rabbit runs with speed 5.
rabbit.slowStop();
rabbit.stop(); // White Rabbit stopped. White rabbit hides!
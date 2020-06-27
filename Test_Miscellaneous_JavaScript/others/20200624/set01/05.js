class CoffeeMachine {
    #waterLimit = 200;

    #checkWater(water) {
        if (value < 0) throw new Error("Negative water");
        if (value > this.#waterLimit) throw new Error("Too much water");
    }

    _waterAmount = 0;

    set waterAmount(value) {
        this.#checkWater(value);
        this._waterAmount = value;
    }

    get waterAmount() {
        return this.waterAmount;
    }

}

let coffeeMachine = new CoffeeMachine();

coffeeMachine.#checkWater(); // Error
coffeeMachine.#waterLimit = 1000; // Error

coffeeMachine.waterAmount = 100; // Works
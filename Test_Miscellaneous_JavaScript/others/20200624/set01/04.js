class CoffeeMachine {
    _waterAmount = 0;

    setWaterAmount(value) {
        if (value < 0) throw new Error("Negative water");
        this._waterAmount = value;
    }

    getWaterAmount() {
        return this._waterAmount;
    }
}

let obj = new CoffeeMachine();
obj.setWaterAmount(100);
obj._waterAmount += 20;
console.log(obj.getWaterAmount());

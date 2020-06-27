function Obj() {
    this.getTime = function () {
        return new Date().getTime();
    }
    this.prop1 = this.getTime();
    console.log("created");
}

console.log(new Obj().prop1)
let Obj = {
    prop1: "adf",
    func1: function () {
        return this.prop1;
    },
}

console.log(Obj.func1())
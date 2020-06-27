function Obj1() {
    this.prop1 = 12;
    this.prop2 = 23;
    this.prop3 = "AA";
    this.func1 = function () {
        return 34;
    };
    this.func2 = function () {
        return 45;
    };
    this.innerObj1 = new Date();
}

// Object.keys(new Obj1()).forEach((item) => console.log(item));
// console.log()
// Object.values(new Obj1()).forEach((item) => console.log(item));
// console.log()
// Object.entries(new Obj1()).forEach((item) => console.log(item));
//

for(let key in new Obj1()){
    console.log(key);
}
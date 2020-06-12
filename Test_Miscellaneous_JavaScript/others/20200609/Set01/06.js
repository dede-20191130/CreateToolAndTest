// let func = () => (this.myName);
let func2 = function () {
    return (this.myName)
};
let wrapper = function (myFunc) {
    myFunc.myName = myFunc.name.repeat(2);
    return function () {
        return myFunc.call(this, arguments);
    }
}

// func.myName = "JPP";
func2.myName = "FFRRR22";
// func = wrapper(func);
func2 = wrapper(func2);
let man = {myName: "TUUUURR"};

// console.log(func());
// console.log(func.myName);
// console.log(func.call(man));
console.log(func2());
console.log(func2.myName);
console.log(func2.call(man));
console.log(func2.call(func2));
let func = () => (this.myName);
let func2 = function () {
    return (this.myName)
};
let wrapper = (func) =>{

}

func.myName = "JPP";
func2.myName = "FFRRR22";
let man = {myName: "TUUUURR"};

console.log(func());
console.log(func.myName);
console.log(func.call(man));
console.log(func2());
console.log(func2.myName);
console.log(func2.call(man));
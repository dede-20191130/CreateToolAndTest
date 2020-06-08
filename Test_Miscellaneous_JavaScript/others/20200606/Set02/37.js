// const sum = function funcSum(x) {
//     return (typeof x) == "function" ? funcSum() : 2;
// }

const rtnObj = (x) => {
    function Obj() {
        this.cost = x;
        this.announce = () => "OK See you";
    }

    return new Obj();
}

rtnObj.valueOf = () => (99999);
console.log(rtnObj(1030).cost);
console.log(rtnObj(1030).announce());
console.log(rtnObj -100);
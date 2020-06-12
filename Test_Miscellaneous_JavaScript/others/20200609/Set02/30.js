function AAA(x) {
    this.bFunc = function bbb() {
        return "B"
    }

    this.cFunc = function ccc() {
        return "C"
    }

}

console.log(AAA(1));
console.log(AAA(2));
// aaa.bbb();

let a = new AAA("foo");
// a.bbb();
console.log(a.bFunc);
console.log(a.bFunc());
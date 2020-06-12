function aaa(x) {
    function bbb() {
        return "B"
    }

    function ccc() {
        return "C"
    }

    if (x == 1) return "A"
    else if (x == 2) return bbb
    else return ccc;
}

console.log(aaa(1));
console.log(aaa(2)());
// aaa.bbb();

let a = new aaa("foo");
// a.bbb();
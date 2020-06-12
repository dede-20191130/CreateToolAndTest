function aaa() {
    function bbb() {
        return "B"
    }

    function ccc() {
        return "C"
    }

    return "A";
}

console.log(aaa());
console.log(aaa.bbb);
// aaa.bbb();

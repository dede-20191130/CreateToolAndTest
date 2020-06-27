function outer() {
    function inner() {
        return 123;
    }
    console.log(inner());
    return inner() * inner();
}

console.log(outer())
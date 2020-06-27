function f1(func) {
    func()
}

function f2() {
    let var1 = 10;
    let var2 = -5;

    function fInner() {
        var2 += var1;
    }

    f1(fInner);

    return var2;
}

console.log(f2())
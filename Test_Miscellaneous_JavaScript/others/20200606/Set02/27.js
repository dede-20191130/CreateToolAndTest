// not in strict mode (!)
function f() {
    console.log(this); // [object Window]
}

f(); // オブジェクトなしでの呼び出し
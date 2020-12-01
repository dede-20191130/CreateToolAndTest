let a = 1;

function f() {
    let a = 2222;

    eval('console.log(a)'); // 2
}

f();
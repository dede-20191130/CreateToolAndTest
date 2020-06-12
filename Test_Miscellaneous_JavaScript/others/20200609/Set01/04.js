var foo = (a, b, c) => {
    for (let i of arguments) {
        console.log(i);
    }
}

foo(1, 2, 3);
// Uncaught ReferenceError: arguments is not defined
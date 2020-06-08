var x = 1;

function func() {
    console.log(x); // ReferenceError: Cannot access 'x' before initialization
    var x = 2;
}

func();
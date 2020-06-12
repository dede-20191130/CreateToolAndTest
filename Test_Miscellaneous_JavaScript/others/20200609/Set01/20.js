function f() {
    console.log(this); // null
}

let user = {
    g: f.bind(null),
    h: f,
};

user.g();
// user.h();
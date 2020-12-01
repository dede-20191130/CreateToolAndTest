function makeObservable(target) {
    /* your code */
    target.observe = (func) => (target.observeFunc = func);
    target = new Proxy(target, {
        set(target, p, value, receiver) {
            if (target.observeFunc) target.observeFunc.call(receiver, p, value);
            Reflect.set(target, p, value, receiver);
        }
    })
    return target;
}

let user = {};
user = makeObservable(user);

user.name = "QWERTY"

user.observe((key, value) => {
    console.log(`SET ${key}=${value}`);
});

user.name = "John"; // console.logs: SET name=John
user.name = "ASD"
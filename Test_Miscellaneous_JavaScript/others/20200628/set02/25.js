function makeObservable(target) {
    /* your code */
    target.observe = function (func) {
        // target = new Proxy(target, {
        //     set(target, p, value, receiver) {
        //         // func.call(receiver, p, value);
        //         console.log("asd");
        //         Reflect.set(target, p, value, receiver);
        //     }
        // })
        target = {name: "ASD"};
    };
    return target;
}

let user = {};
user = makeObservable(user);

user.observe((key, value) => {
    console.log(`SET ${key}=${value}`);
});

console.log(user.name);
user.name = "John"; // console.logs: SET name=John
console.log(user.name);
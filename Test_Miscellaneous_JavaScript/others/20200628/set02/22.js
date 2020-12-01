let user = {
    name: "John"
};

function wrap(myTarget) {
    return new Proxy(myTarget, {
        /* your code */
        get(target, p, receiver) {
            // if (target[p] === undefined) throw new Error("Property doesn't exist");
            if (!(p in target)) throw new Error("Property doesn't exist");
            return target[p];
        }
    });
}

user = wrap(user);

console.log(user.name); // John

try {
    console.log(user.age);
} catch (e) {
    console.log(e + "");
} // Error: Property doesn't exist
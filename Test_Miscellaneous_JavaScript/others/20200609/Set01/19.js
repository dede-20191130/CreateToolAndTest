let user = {
    firstName: "John",
    sayHi() {
        console.log(`Hello, ${this.firstName}!`);
    }
};
let say = user.sayHi.bind(user)
setTimeout(say, 1000); // Hello, undefined!
user = null;
setTimeout(say, 1000); // Hello, undefined!
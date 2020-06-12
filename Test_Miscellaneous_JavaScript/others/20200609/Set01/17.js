let user = {
    firstName: "John",
    sayHi() {
        console.log(`Hello, ${this.firstName}!`);
    }
};

const newUser = Object.assign({},user);
newUser.firstName = "Poly";
// setTimeout(user.sayHi, 1000); // Hello, undefined!
setTimeout(() => user.sayHi.call(user), 1000);
setTimeout(() => user.sayHi(), 1000);
setTimeout(() => newUser.sayHi(), 1000);
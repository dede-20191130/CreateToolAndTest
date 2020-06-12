let user = {
    firstName: "John",
    sayHi() {
        console.log(`Hello, ${this.firstName}!`);
    }
};

// setTimeout(user.sayHi, 1000); // Hello, undefined!
setTimeout(() => user.sayHi.call(user), 1000);
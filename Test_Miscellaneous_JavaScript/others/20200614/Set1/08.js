let user = {
    firstName: "John",
    sayHi() {
        console.log(`Hello, ${this.firstName}!`);
    }
};

setTimeout(() => user.sayHi(), 1000);

// ...1秒以内に次が行われると
user = {
    sayHi() {
        console.log("Another user in setTimeout!");
    }
};

// Another user in setTimeout?!?
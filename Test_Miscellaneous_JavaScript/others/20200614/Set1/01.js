let user = {
    name: "John",
    surname: "Smith"
};

Object.defineProperty(user, 'fullName', {
    get() {
        return `${this.name} ${this.surname}`;
    },

    set(value) {
        [this.name, this.surname] = value.split(" ");
    },
    enumerable: true,
});

console.log(user.fullName); // John Smith
console.log()
for (let key in user) console.log(key);
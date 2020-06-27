let user = {
    name: "John",
    surname: "Smith",

    get fullName() {
        return `${this.name} ${this.surname}`;
    },

    set fullName(value) {
        [this.name, this.surname] = value.split(" ");
    }
};

// set fullName は指定された値で実行されます
user.fullName = "Alice Cooper";

console.log(user.name); // Alice
console.log(user.surname); // Cooper
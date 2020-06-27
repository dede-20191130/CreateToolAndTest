let user = {
    name: "John",
    surname: "Smith",

    get fullName() {
        return `${this.name} ${this.surname}`;
    },
    fullNameVer2() {
        return `${this.name} ${this.surname}`;
    },
};

console.log(user.fullName); // John Smith
console.log(user.fullNameVer2); // John Smith
console.log(user.fullNameVer2()); // John Smith
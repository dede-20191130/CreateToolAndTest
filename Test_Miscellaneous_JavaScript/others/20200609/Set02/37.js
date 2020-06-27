let user = {
    id: 15,
    name: "John",
    toString() {
        return this.name;
    }
};

Object.defineProperty(user, "toString", {
    enumerable: false,
})

// デフォルトでは、両方のプロパティは列挙されます:
for (let key in user) console.log(key); // name, toString

Object.defineProperty(user, "name", {
    enumerable: false,
})
console.log();

for (let key in user) console.log(key); // name, toString
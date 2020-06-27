let user = {
    get name() {

        return this._name !== undefined ? this._name : "NoName";
    },

    set name(value) {
        if (value.length < 4) {
            console.log("Name is too short, need at least 4 characters");
            return;
        }
        this._name = value;
    }
};

console.log(user.name); // Pete
user.name = "Pete";
console.log(user.name); // Pete

user.name = ""; // Name is too short...
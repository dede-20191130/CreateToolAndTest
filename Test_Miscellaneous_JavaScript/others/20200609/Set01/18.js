let user = {
    firstName: "John"
};

function func() {
    console.log(this.firstName);
}

let funcUser = func.bind(user);
user.firstName = "CHOOSSS"
funcUser(); // John
user = {
    firstName: "AAQQQQ"
}
funcUser(); // John


user = {
    firstName: "John",
    say(phrase) {
        console.log(`${phrase}, ${this.firstName}!`);
    }
};

let say = user.say.bind(user);

say("Hello"); // Hello, John ("Hello" 引数は say に渡されます)
say("Bye"); // Bye, John ("Bye" は say に渡されます)
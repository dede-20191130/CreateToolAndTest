let sayMixin = {
    say(phrase) {
        console.log("first");
        console.log(phrase);
    }
};

let sayHiMixin = Object.create(sayMixin, {
    sayHi: {
        value: function () {
            console.log("second");
            // 親のメソッド呼び出し
            Object.getPrototypeOf(sayHiMixin).say("Hello " + this.name);
        },
        enumerable: true
    },
    sayBye: {
        value: function () {
            Object.getPrototypeOf(sayHiMixin).say("Bye " + this.name);
        },
        enumerable: true
    }
});

// sayHiMixin.sayHi = function () {
//     console.log("second");
//     // 親のメソッド呼び出し
//     super.say("Hello " + this.name);
// };
//
// sayHiMixin.sayBye = function () {
//     super.say("Bye " + this.name);
// };


class User {
    constructor(name) {
        this.name = name;
    }
}

// メソッドをコピー
Object.assign(User.prototype, sayHiMixin);

// これで User は sayHi できます
new User("Dude_Optional").sayHi(); // Hello Dude!

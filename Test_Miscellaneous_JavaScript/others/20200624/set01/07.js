// mixin
let sayHiMixin = {
    sayHi() {
        console.log("Hello " + this.name);
    },
    sayBye() {
        console.log("Bye " + this.name);
    }
};

// 使い方:
class User {
    constructor(name) {
        this.name = name;
    }

    func1() {
        return 123;
    }
}

// メソッドをコピー
Object.assign(User.prototype, sayHiMixin);

// これで User は sayHi できます
let user = new User("Dude_Structure");
user.sayHi();
user.sayBye();
user.sayBye();
console.log(user.func1());
console.log(user.func1 === User.prototype.func1);
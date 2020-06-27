let sayMixin = {
    say(phrase) {
        console.log("first");
        console.log(phrase);
    }
};

let sayHiMixin = {
    // __proto__: sayMixin, // (またはここで prototype を設定するのに Object.create が使えます)

    sayHi() {
        console.log("second");
        // 親のメソッド呼び出し
        super.say("Hello " + this.name);
    },
    sayBye() {
        super.say("Bye " + this.name);
    }
};
Object.setPrototypeOf(sayHiMixin, sayMixin);

class User {
    constructor(name) {
        this.name = name;
    }
}

// メソッドをコピー
Object.assign(User.prototype, sayHiMixin);

// これで User は sayHi できます
new User("Dude").sayHi(); // Hello Dude!
try {
    new User("AAAKKK").say("yyyy");

} catch (e) {
    console.log(e.name + " : " + e.message + "\n");
}


Object.assign(User.prototype, sayMixin);

try {
    new User("AAAKKK").say("yyyy");

} catch (e) {
    console.log(e.name + " : " + e.message + "\n");
}
function partial(func, ...argsBound) {
    return function (...args) { // (*)
        return func.call(this, ...argsBound, ...args);
    }
}

// 使い方:
let user = {
    firstName: "John",
    say(time, phrase) {
        console.log(`[${time}] ${this.firstName}: ${phrase}!`);
    },
    sayNow: partial(this.say, new Date().getHours() + ':' + new Date().getMinutes())
};

// 最初の引数を固定して何かを表示する部分的なメソッドを追加する
// user.sayNow = partial(user.say, new Date().getHours() + ':' + new Date().getMinutes());

user.sayNow("Hello");
// このようになります:
// [10:00] Hello, John!
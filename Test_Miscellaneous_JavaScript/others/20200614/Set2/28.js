/**
 * bindの使い方
 * なりすまし
 */

function Human(name) {
    this.name = name;
}

Human.prototype.greet = function () {
    console.log('Hello!, my name is ' + this.name);
};

function Cat(name) {
    this.name = name;
}

var steve = new Human('Steve');
steve.greet(); // -> "Hello!, my name is Steve"

var tama = new Cat('Tama');
// Humanのprototypeメソッドを借用
var tamaGreet1 = Human.prototype.greet.bind(tama);
// Humanインスタンスsteveのメソッドを借用
var tamaGreet2 = steve.greet.bind(tama);
tamaGreet1(); // -> "Hello!, my name is Tama"
tamaGreet2(); // -> "Hello!, my name is Tama"
var tamaGreet3 = steve.greet.call(tama);

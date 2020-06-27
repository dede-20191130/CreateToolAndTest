/**
 * apply, callの使い方
 * argumentsオブジェクトをthisに束縛
 * argumentsは配列ではなくオブジェクトであるため、Array.prototypeにアクセス出来ない
 * そのため、Array.prototype.x.call(arguments)のようにargumentsオブジェクトからxを利用する
 */

var hoge = function () {
    console.log(typeof arguments); // -> "object"
    console.log(arguments);
};
hoge('foo', 'bar', 'baz'); // -> { 0: "foo", 1: "bar", 2: "baz" }

var fuga = function () {
    var arg = Array.prototype.slice.call(arguments, 0, 1);
    console.log(arg);
};
fuga('foo', 'bar', 'baz'); // -> ["foo"]
fuga('foobaz'); // -> ["foo"]

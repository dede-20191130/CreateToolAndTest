
/**
 * apply, callの使い方
 * なりすまし
 * 参照するオブジェクトを変更する
 */

var Girl = function () {
    this.name = '女子';
    this.enterToiletAA = function () {
        console.log(this.name + "が女子トイレに入る");
    };
};

var Boy = function () {
    this.name = '男子';
    this.enterToiletBB = function () {
        console.log(this.name + "が男子トイレに入る");
    };
};

var girl = new Girl();
var boy = new Boy();

boy.enterToiletBB(); // -> "男子が男子トイレに入る"
girl.enterToiletAA.call(boy); // -> "男子が女子トイレに入る"



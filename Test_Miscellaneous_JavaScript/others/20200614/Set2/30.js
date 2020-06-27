/**
 * apply, callの使い方
 * 処理の汎化
 * ロジックを切り分けて粗結合にする方法
 */

// 空のゴミ箱
var frammableTrashBox = [], // 燃えるゴミ
    nonFrammableTrashBox = [], // 燃えないゴミ
    fj = 'frammableJunk',
    nfj = 'nonFrammableJunk';

// ゴミクラス
var Junk = function (name, type) {
    this.name = name;
    this.type = type;
};

// 汎化関数
var iterate = function (arr, fn) {
    arr.forEach(function (obj) {
        // 関数内において引数のcallbackを実行
        // callbackにobjのthisを束縛出来る
        fn.call(obj);
    });
};

// ゴミの分別関数
var separatedJunk = function () {
    var o = this;
    if (o.type === fj) {
        frammableTrashBox.push(o);
    } else {
        nonFrammableTrashBox.push(o);
    }
};

// メイン処理
iterate([
    new Junk('生もの', fj),
    new Junk('空き缶', nfj),
    new Junk('紙くず', fj)
], separatedJunk);

// 分別されている
console.log(nonFrammableTrashBox);
// -> [{ name: "空き缶", type: "nonFrammableJunk" }]

/* 汎化前のコード
var separatedJunk = function(junks) {
  junks.forEach(function(o) {
    if (o.type === fj) {
      frammableTrashBox.push(o);
    } else {
      nonFrammableTrashBox.push(o);
    }
  });
};

separatedJunk([
  new Junk('生もの', fj),
  new Junk('空き缶', nfj),
  new Junk('紙くず', fj)
]);
*/

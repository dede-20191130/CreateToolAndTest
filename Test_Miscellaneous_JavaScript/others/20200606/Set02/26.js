//'use strict';
// NaN は書き込み不可のグローバル変数だが、非 Strict Mode では何も起こらない。
try {
    NaN = null;
} catch (e) {
    console.log("1 : " + e.name);  // 'TypeError' と表示される。
}

// getter だけしか定義されていないプロパティへの代入。
try {
    var obj2 = {
        get x() {
            return 17;
        }
    };
    obj2.x = 5; // プロパティ x は getter だけなので、代入は不正な操作。
} catch (e) {
    console.log("2 : " + e.name);  // 'TypeError' と表示される。
}

// オブジェクトリテラル内の同名のプロパティはエラーとなる。非 Strict Mode では最後に定義されたものが有効になる。
try {
    var o = {p: 1, p: 2};
} catch (e) {
    console.log("3 : " + e.name);  // 'TypeError' と表示される。
}
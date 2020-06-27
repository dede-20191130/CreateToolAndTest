if (!String.prototype.abc) { // もしこのようなメソッドがない場合
                                // prototype に追加します

    String.prototype.abc = function (n) {
        // 文字列を n 回繰り返す

        // 実際、このコードはこれより複雑になります
        // "n" の負の値に対するエラーのスロー
        // 完全なアルゴリズムは仕様にあります
        return new Array(n + 1).join(this);
    };
}

console.log("La".abc(3)); // LaLaLa
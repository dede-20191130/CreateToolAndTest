'use strict';
// Strict Mode では偶発的にグローバル変数を作成できない。(var が必要)
// この例では、RefernceError が発生する。
try {
    mistypedVaraible = 17;
} catch (e) {
    console.log(e.name);  // 'RefernceError' と表示される。
}
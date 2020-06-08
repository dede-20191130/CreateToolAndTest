function makeWorker() {
  let name = "Pete";

  return function() {
    console.log(name);
  };
}

let name = "John";

// 関数を作成する
let work = makeWorker();

// それを呼ぶ
work(); // 何が表示されますか? "Pete" (作成された場所の name ) or "John" (呼び出された場所の name )?
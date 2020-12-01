let target = {};
let proxy = new Proxy(target, {}); // 空のハンドラ

proxy.test = 5; // プロキシへの書き込み (1)
console.log(target.test); // 5, プロパティが target で現れました!

console.log(proxy.test); // 5, proxy からの読み取ることができます (2)

for (let key in proxy) console.log(key); // test, イテレーションも機能します (3)
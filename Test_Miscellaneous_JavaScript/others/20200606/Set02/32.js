let sayHi = function func(who) {
  if (who) {
    console.log(`Hello, ${who}`);
  } else {
    func("Guest"); // 自身を再度呼ぶために func を使用
  }
};

sayHi(); // Hello, Guest
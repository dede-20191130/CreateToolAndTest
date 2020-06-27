let hamster = {
  stomach: [],

  eat(food) {
    this.stomach.push(food);
  }
};

let speedy = {
  __proto__: hamster
};

let lazy = {
  __proto__: hamster
};

// 一方が食べ物を見つけました
speedy.eat("apple");
console.log( speedy.stomach ); // apple

// もう一方も持っています。なぜでしょう？直してください。
console.log( lazy.stomach ); // apple
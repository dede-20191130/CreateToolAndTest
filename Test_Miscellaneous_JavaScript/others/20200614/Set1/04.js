let animal = {
    eats: true,
    f1(){
      return 123;
    },
};
let rabbit = {
    jumps: true
};

rabbit.__proto__ = animal; // (*)

// 今、rabbit で両方のプロパティを見つけることができます:
console.log(rabbit.eats); // true (**)
console.log(rabbit.jumps); // true
console.log(rabbit.f1()); // true
console.log(animal.__proto__);
console.log(rabbit.__proto__);
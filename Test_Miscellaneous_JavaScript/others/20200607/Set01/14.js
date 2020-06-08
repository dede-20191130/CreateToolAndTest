function sayHi(num1) {
    // console.log(this.name);
    this.name === undefined ? console.log("AAA".repeat(num1)) : console.log(this.name.repeat(num1));
}

let user = {name: "John"};
let admin = {name: "Admin"};

// 別のオブジェクトを "this" として渡すために call を使用する
sayHi(3);
sayHi.call(user,7); // this = John
sayHi.call(admin,10); // this = Admin
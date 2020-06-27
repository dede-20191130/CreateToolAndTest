function User(name, birthday) {
    this.name = name;
    this.birthday = birthday;

    // age は現在の日付と誕生日から計算されます
    Object.defineProperty(this, "age", {
        get() {
            let todayYear = new Date().getFullYear();
            return todayYear - this.birthday.getFullYear();
        }
    });
}

let john = new User("John", new Date(1992, 6, 1));

console.log(john.birthday); // birthday は利用可能です
console.log(john.age);      // ...age も同様です
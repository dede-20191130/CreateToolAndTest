function Dog(cry) {
    this.cry = cry;
}

Dog.prototype.bark = function () {
    console.log(this.cry);
};

const chiwawa = new Dog('きゃんきゃん');
chiwawa.bark(); //'きゃんきゃん';

const shiba = new Dog('わんわん');
shiba.bark(); //'わんわん';
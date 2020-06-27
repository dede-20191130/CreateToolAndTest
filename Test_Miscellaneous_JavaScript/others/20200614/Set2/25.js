var Person = function (_name) {
    this.name = _name;
    this.friends = [];
};

var obj = new Person("ore");
obj.friends.push(new Person("satou"));


obj.friends[0].friends.push(new Person("yamada"));
obj.friends[0].friends.push(new Person("ueda"));

console.log(obj);
console.dir(obj);
/*
  { name: 'ore',
    friends: [ { name: 'satou', friends: [Object] } ] }
 */
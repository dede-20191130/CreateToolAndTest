class Obj1{
    constructor(name) {
        this.name=name;
        this.height = 120;
        this.weight = 20;
    }
    func1(){
        return this.height * this.weight;
    }
}

class Obj2 extends Obj1{
    constructor(name) {
        super(name);
        this.weight = 50;
    }

}

let obj2 = new Obj2("SUU_OOOP");
console.log(obj2.func1());
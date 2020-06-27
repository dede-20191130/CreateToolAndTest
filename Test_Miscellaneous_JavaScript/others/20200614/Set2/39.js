let Obj1 = {
    func1: function (arr, func) {
        for (let i = 0; i < arr.length; i++) {
            func(arr[i]);
        }
    }
};

// Obj1.func1([1,2,3,4], (item)=>(console.log(item * 2)));

let Obj2 = {
    prop1: [],
    func1: function (item, num) {
        this.prop1.push(item * num);
    }
};

Obj1.func1([1, 2, 3, 4], Obj2.func1.bind(Obj2, 7));
console.log(Obj2.prop1);
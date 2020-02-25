const Class = function () {
};
Class.prototype.prop = 'prototypeのプロパティです';
Class.prototype.obj = {
    prop: 'prototypeのプロパティ（obj）のプロパティです'
};

const a = new Class();
const b = new Class();

a.prop = '代入しますた';
console.log(a.prop);    //代入しますた
console.log(b.prop);    //prototypeのプロパティです

a.obj.prop = '代入しますた';
console.log(a.obj.prop);    //代入しますた
console.log(b.obj.prop);    //代入しますた ←!!

console.log("a.obj == b.obj :" + (a.obj == b.obj));    //true
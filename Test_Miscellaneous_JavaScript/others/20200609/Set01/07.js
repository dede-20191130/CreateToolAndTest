function work(a, b) {
    console.log(a + b); // work は任意の関数またはメソッド
}

let spy = (func) => {
    let rtnFunc = function () {
        // func.calls = [];
        rtnFunc.calls.push(Array.from(arguments));
        return func.apply(this, arguments);
    }
    rtnFunc.calls = [];
    return rtnFunc;

}

work = spy(work);

work(1, 2); // 3
work(4, 5); // 9

for (let args of work.calls) {
    console.log('call:' + args.join()); // "call:1,2", "call:4,5"
}
// const arrContainer = [];

const obj = {
    arrContainer: [],
    maxVal: 5000,
    sumVal: 0,
    func1() {
        // let mySumVal = this.sumVal;
        // let myMaxVal = this.maxVal;
        let timerId = setTimeout(function subFunc() {
            console.log("Done");
            this.sumVal += 1000;
            if (this.maxVal >= this.sumVal) timerId = setTimeout(subFunc, 1000);
        }, 1000);
    },
}

obj.func1();
// let newObj = {};
// newObj.newFunc = obj.func1;
// newObj.maxVal = 9000;
// newObj.sumVal = 6000;
// newObj.newFunc();
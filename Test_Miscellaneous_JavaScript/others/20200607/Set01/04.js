const obj = {
    arrContainer: [],
    maxVal: 5000,
    sumVal: 0,
    func1() {
        let self = this;
        let mySumVal = this.sumVal;
        let myMaxVal = this.maxVal;
        let tmpArr = this.arrContainer;
        let timerId = setTimeout(function subFunc() {
            console.log("Done");
            tmpArr.push((new Date()).getTime());
            mySumVal += 1000;
            if (myMaxVal >= mySumVal) timerId = setTimeout(subFunc, 1000);
        }, 1000);
    },
}

obj.func1();

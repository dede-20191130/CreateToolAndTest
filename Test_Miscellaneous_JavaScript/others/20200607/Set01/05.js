const obj = {
    arrContainer: [],
    maxVal: 5000,
    sumVal: 0,
    func1() {
        let self = this;
        // let mySumVal = this.sumVal;
        // let myMaxVal = this.maxVal;
        // let tmpArr = this.arrContainer;
        let timerId = setTimeout(function subFunc() {
            console.log("Done");
            self.arrContainer.push((new Date()).getTime());
            self.sumVal += 1000;
            // if (self.maxVal >= self.sumVal) timerId = setTimeout(subFunc, 1000);
            self.maxVal >= self.sumVal ? timerId = setTimeout(subFunc, 1000) : console.log(self.arrContainer);
        }, 1000);
    },
}

obj.func1();

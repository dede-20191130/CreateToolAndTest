function makeCounterVer1() {
    // 次の代わり:
    // let count = 0

    function counter() {
        return counter.count++;
    }

    counter.count = 0;
    counter.set = (value) => {
        counter.count = value;
    }
    counter.decrease = () => {
        return counter.count--;
    }

    return counter;
}

let myCounter = makeCounterVer1();
console.log(myCounter());
myCounter.set(20);
console.log(myCounter());
console.log(myCounter.decrease());
console.log(myCounter());
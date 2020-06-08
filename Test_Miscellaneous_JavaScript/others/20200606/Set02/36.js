// let count2 = 0;

function makeCounterVer2() {
    // 次の代わり:
    let count2 = 0;

    function counter() {
        return count2++;
    }

    counter.set = (value) => {
        count2 = value;
    }
    counter.decrease = () => {
        return count2--;
    }

    return counter;
}


let myCounter = makeCounterVer2();
console.log(myCounter());
myCounter.set(20);
console.log(myCounter());
console.log(myCounter.decrease());
console.log(myCounter());
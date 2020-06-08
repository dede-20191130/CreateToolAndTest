function makeCounter() {

    function counter() {
        return counter.count++;
    }

    counter.count = 0;

    return counter;
}

let myCount = makeCounter();
myCount.count = 41;
console.log(myCount());
console.log(myCount());
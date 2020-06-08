const printNumbers1 = (from, to) => {
    let myNum = from;
    let timerId = setInterval(() => {
        console.log(myNum++);
        if (myNum > to) clearInterval(timerId);
    }, 1000);
}


module.exports = (from, to) => {
    let myNum = from;
    let timerId = setInterval(() => {
        console.log(myNum++);
        if (myNum > to) clearInterval(timerId);
    }, 1000);
}


// printNumbers1(1,5);
printNumbers1(11, 14);
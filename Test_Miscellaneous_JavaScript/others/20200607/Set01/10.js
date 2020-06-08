const printNumbers2 = (from, to) => {
    let myNum = from;
    let timerId = setTimeout(function func() {
        console.log(myNum++);
        // if (myNum > to) clearInterval(timerId);
        if (myNum <= to) setTimeout(func, 1000);
    }, 1000);
}

printNumbers2(1,7);
printNumbers2(13,15);

const module09 = require("./09.js");

// module09(55,59);
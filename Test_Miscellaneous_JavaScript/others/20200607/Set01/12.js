let i = 0;

let start = Date.now();

function count() {

    // if (i === 10000000) {
    //     console.log("Done in " + (Date.now() - start) + 'ms');
    // } else {
    //     setTimeout(count, 0);
    // }
    //
    // // a piece of heavy job
    // for (let j = 0; j < 100000; j++) {
    //     i++;
    // }
    let timerId = setInterval(function func() {
        if (i === 10000000) {
            clearInterval(timerId);
            console.log("Done in " + (Date.now() - start) + 'ms');
        }

        // a piece of heavy job
        for (let j = 0; j < 100000; j++) {
            i++;
        }
    }, 0)

}

count();
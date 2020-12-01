async function* generateSequence(start, end) {

    for (let i = start; i <= end; i++) {

        // await が使えます!
        await new Promise(resolve => setTimeout(resolve, 1000));

        yield i;
    }

}

(async () => {

    for await (let value of generateSequence(1, 5)) {
        console.log(value); // 1, then 2, then 3, then 4, then 5
    }

})();
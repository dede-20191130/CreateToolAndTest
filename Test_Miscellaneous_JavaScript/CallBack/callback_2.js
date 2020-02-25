function getSomething(callback) {
    callback('Hello!! ' + Date.now());
}

getSomething(function (value) {
    console.log(value);
});
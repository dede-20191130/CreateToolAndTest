let arr = ['A', 'B', 'C', 'D', 'E', 'F'];
arr.forEach(function (x) {
    if (x === 'D') {
        return;
    }
    console.log(x);
});
Function.prototype.defer = function (ms) {
    let f = this;
    return function (...args) {
        setTimeout(() => f.apply(null, args), ms);
    }
};

// check it
function f(a, b) {
    console.log(a + b);
}

f.defer(1000)(1, 2); // shows 3 after 1 sec
let wrapper = function () {
    return anotherFunction.apply(this, arguments);
};

let anotherFunction = (x, y, z) => (2 * x + 3 * y + 5 * z);

console.log(wrapper(7, 11, 13));
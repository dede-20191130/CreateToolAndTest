let wrapper = function () {
    return anotherFunction.apply(this, arguments);
};

let anotherFunction = () => (new Date().getTime());

console.log(wrapper());
let kudamono = {
    title: "Fruits",
    fruits: ["Banana", "Apple", "Orange"],

    show() {
        let newThis = this;
        this.fruits.forEach(function (fruit) {
            console.log(newThis.title + ': ' + fruit)
        });
    }
};

kudamono.show();
// Uncaught TypeError: Cannot read property 'title' of undefined
const obj = {
    name: "AAPPP",
    arrName: ["a", "ab", "abc", "abchhhhh"],
    f_1: function (x) {
        console.log(x);
    },
    f_2: function () {
        const self = this;
        this.arrName.forEach(function (item) {
            // this.f_1(item);
            // console.log(item);
            self.f_1(item.repeat(3));

        })
    }
}

obj.f_2();